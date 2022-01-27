----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2021 10:38:35
-- Design Name: 
-- Module Name: global_controller - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.package_dsed.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity global_controller is
Port (
    clk_sys : in STD_LOGIC;
    reset : in STD_LOGIC;  -- BTNU
    clear : in STD_LOGIC; -- BTNC
    rec_enable : in STD_LOGIC; -- BNTL
    play_enable : in STD_LOGIC;  -- BNTR
    fil_on : in STD_LOGIC; -- SW1
    s_type : in STD_LOGIC; --SW0
    micro_clk : out STD_LOGIC;
    micro_data : in STD_LOGIC;
    micro_LR : out STD_LOGIC;
    --To/From the mini-jack
    jack_sd : out STD_LOGIC;
    jack_pwm : out STD_LOGIC;
    an : out std_logic_vector(7 downto 0);
    display : out std_logic_vector(6 downto 0);
    boom : out std_logic_vector(14 downto 0);
    ready : out STD_LOGIC  --led for waiting NOP
);
end global_controller;

architecture Behavioral of global_controller is
component clk_wiz_12 is
Port ( clk_in1 : in std_logic;
      clk_out1 :out std_logic
);
end component;

component audio_interface 
Port ( clk_12megas : in STD_LOGIC;
        reset : in STD_LOGIC;
            record_enable: in STD_LOGIC;
        sample_out: out STD_LOGIC_VECTOR (sample_size-1 downto 0);
        sample_out_ready: out STD_LOGIC;
        micro_clk : out STD_LOGIC;
            micro_data : in STD_LOGIC;
        micro_LR : out STD_LOGIC;
            play_enable: in STD_LOGIC;
            sample_in: in std_logic_vector(sample_size-1 downto 0);
        sample_request: out std_logic;
        jack_sd : out STD_LOGIC;
        jack_pwm : out STD_LOGIC);
end component;

component blk_mem_gen_0 is 
Port (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
end component;
component display_controller is
    Port (
        clk : in std_logic;
        rst : in std_logic;
        control : in std_logic_vector(2 downto 0);
        on_display : in std_logic;
        an : out std_logic_vector(7 downto 0);
        display : out std_logic_vector(6 downto 0)
    );
 end component;

component fir_filter port (
   clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    sample_in : in signed (sample_size-1 downto 0);
    sample_in_enable : in STD_LOGIC;
    filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
    sample_out : out signed (sample_size-1 downto 0);
    sample_out_ready : out STD_LOGIC);
end component;

component boometro is Port ( 
        clk : in std_logic;
        audio_in : in std_logic_vector(sample_size-1 downto 0);
        reset : in std_logic;
        enable : in std_logic;
        leds_out : out std_logic_vector(14 downto 0)
    );
end component;
---Intermediate signals---
--signal clk_12mhz : std_logic;
signal reset_sys : std_logic;
signal  rec_audio, play_audio, mem_en : std_logic;
signal fil_enable, fil_lp : std_logic;
signal data_micro, s_sample_out : std_logic_vector(sample_size - 1 downto 0);
signal data_ram, reg_sample_in, next_sample_in : std_logic_vector(sample_size - 1 downto 0);
--clock signal--
signal clk_12mhz : std_logic;
signal s_sample_ready ,s_sample_request, s_ena: std_logic;
signal s_wea : std_logic_vector(0 downto 0);
type state is (idle, play,rep,rev_rep, rec, clr,fil, wait_state);
signal state_reg, state_next : state;
signal addra_reg , addra_next, stack_reg, stack_next: std_logic_vector (18 downto 0);
--gnal  addrec_reg,addrec_next  :std_logic_vector(18 downto 0);
signal s_control_reg, s_control_next : std_logic_vector(2 downto 0); --next state logic to keep the previous value while in wait state
signal clear_cnt_reg, clear_cnt_next : unsigned(23 downto 0); --wait state between clear and idle
signal en_500ms, boom_en: std_logic;
signal en_counter_reg, en_counter_next : unsigned(21 downto 0);
signal filter_out, filter_in : signed(sample_size - 1 downto 0);
begin
process (clk_12mhz)
begin
if (rising_edge(clk_12mhz)) then
    if (reset = '1') then
        state_reg <= idle;
            addra_reg <= (others=>'0');
        stack_reg <= (others=>'0');
        en_counter_reg <= (others =>'0');
        clear_cnt_reg <= (others=>'0');
        s_control_reg <= "000";
    else
    state_reg <= state_next;
    addra_reg <= addra_next;
    stack_reg <= stack_next;
    en_counter_reg <= en_counter_next;
    reg_sample_in<= next_sample_in;
    clear_cnt_reg <= clear_cnt_next;
    s_control_reg <= s_control_next;
    if (en_counter_reg = 3000000) then
        en_500ms <='1';
    else
        en_500ms<= '0';
        end if;
    end if;
end if;     
end process;
en_counter_next <= en_counter_reg + 1 when (en_counter_reg < 3000000) else (others => '0'); 

process( state_reg, play_enable, rec_enable, addra_reg, s_sample_ready, s_sample_out, data_ram,s_sample_request, reg_sample_in, s_control_reg, clear_cnt_reg)
begin
state_next <= state_reg;
addra_next <= addra_reg;
ready <= '0';
s_ena <= '0';
s_wea <= "0";
rec_audio <= '0';
play_audio <= '0';
data_micro<= (others => '0');
next_sample_in <= (others => '0');
clear_cnt_next <= (others=> '0');
case state_reg is
    when idle =>
    s_control_next <= "001";
    ready <= '1';
        if (play_enable = '1') then
            state_next <= play;
        elsif (rec_enable = '1') then
            state_next <= rec;
            addra_next  <= stack_reg;
            if (unsigned(stack_reg) >= 524287) then
                state_next<= wait_state;
                s_control_next <= "111"; --Not allowed recording until clearing
            end if;
        elsif (clear = '1') then
            state_next <= clr;
        end if;
      when rec =>
        s_control_next <= "011";
        if (rec_enable = '1') then
            rec_audio <= '1';
            data_micro <= s_sample_out;
            if (s_sample_ready = '1') then
                s_ena <= '1';
                s_wea <= "1";
                addra_next <= std_logic_vector(unsigned(addra_reg)+ 1);
                --save the last writen address to avoid overwrite--
                stack_next <= addra_reg;
            end if;
         elsif(rec_enable = '0') then
            state_next <= idle;
         end if;
         if(unsigned(addra_next) >= 524287 or unsigned(stack_reg) >= 524287)then 
            s_control_next <= "111";
            state_next <= wait_state;
            end if;
        when play =>
             
            if (fil_on = '0') then
                if (s_type = '0') then
                    addra_next <= (others=> '0');
                    state_next <= rep;
                else
                    if (unsigned(stack_reg) > 0) then
                    addra_next <= stack_reg;
                    state_next<= rev_rep;
                    else
                        state_next <= idle;
                    end if;
                 end if;
             else
              addra_next <= (others=>'0');
                state_next <= fil;
            end if;
        when rep =>
            s_control_next <= "010";
              play_audio <= '1';
                s_ena <= '1';
                next_sample_in <= data_ram;
                if (s_sample_request = '1') then     
                     addra_next<= std_logic_vector(unsigned(addra_reg) + 1);
                end if;
              if (play_enable = '1') then
                state_next <= play;
             elsif (unsigned(addra_reg) >= 524287 or addra_reg >= stack_reg) then
                    addra_next <= (others=> '0');
                  state_next <= idle;
            end if;
          when rev_rep =>
             s_control_next <= "010";
                    play_audio <= '1';
                    s_ena <= '1';
                    next_sample_in <= data_ram;
                if (s_sample_request = '1') then     
                     addra_next<= std_logic_vector(unsigned(addra_reg) - 1);
                elsif(play_enable = '1') then
                    state_next<= play;
                end if;
             if (unsigned(addra_reg) <= 0) then
             addra_next <= (others=>'0');
                  state_next <= idle;
            end if;
          when fil => --the way it is designed it can be alterned between lowpass and high pass in the same reproduction                                                                                                                                                                                
            if (s_type = '1')then
                s_control_next <= "110";
            else
                s_control_next <= "101";
            end if;
                play_audio <= '1';
                s_ena <= '1';
                filter_in <= signed(NOT(data_ram(sample_size-1)) & data_ram(6 downto 0));
                next_sample_in <= std_logic_vector(NOT(filter_out(sample_size - 1)) & filter_out(6 downto 0));
                if (s_sample_request = '1') then     
                    addra_next<= std_logic_vector(unsigned(addra_reg) + 1);
                end if;
           if (unsigned(addra_reg) >= 524287 or addra_reg >= stack_reg) then
                addra_next <= (others=> '0');
                 state_next <= idle;
           elsif(play_enable = '1') then
                state_next <= play;
           end if;
        when clr =>
            s_control_next <= "100";
            stack_next <= (others => '0');
            addra_next <= (others => '0');
            state_next <= wait_state;
        when wait_state => --estado wait de un segundo para representar FULL&CLEAR en el display
            clear_cnt_next <= clear_cnt_reg + 1;
            s_control_next <= s_control_reg;
            if (clear_cnt_reg = 12000000) then --after a second of clearing
                state_next <= idle;
                clear_cnt_next <= (others=>'0');
            else
                state_next<= wait_state;
            end if;
    end case;
end process;
U1: clk_wiz_12 port map(
        clk_in1 => clk_sys,
       clk_out1 => clk_12mhz
);
U2 : audio_interface port map(
        clk_12megas => clk_12mhz,
        reset => reset,
        record_enable => rec_audio,
        play_enable => play_audio,
        micro_data => micro_data,
        micro_clk => micro_clk,
        micro_LR => micro_LR,
        jack_sd => jack_sd,
        sample_out => s_sample_out,
        sample_in => reg_sample_in,
        jack_pwm => jack_pwm,
        sample_request => s_sample_request,
        sample_out_ready => s_sample_ready
);
U3 : blk_mem_gen_0 port map(
            clka => clk_12mhz,
            ena => s_ena,
            wea => s_wea,
            addra => addra_reg,
            dina => data_micro,
            douta => data_ram
            );
U4 :   fir_filter port map(
                    clk                 => clk_12mhz,
                    reset               => reset,
                    sample_in           => filter_in,
                    sample_in_enable    => s_sample_request,
                    filter_select       => s_type,
                    sample_out          => filter_out,
                    sample_out_ready    => open
                );
U5 : display_controller port map(
                        clk => clk_12mhz,
                        rst => reset,
                        control => s_control_reg,
                        on_display => '1',
                        an => an,
                        display => display);
                     
U6 : boometro port map( --The boometer is more sensitive to normal, reverse and lowpass filtered reproduction.
    clk => clk_12mhz,
    audio_in => reg_sample_in,
    reset => reset,
    enable => boom_en, -- se puede crear una signal que sea un boton o swtich para activar el boom
    leds_out => boom
    );
  boom_en <= play_audio and  en_500ms;                                                     
end Behavioral;
