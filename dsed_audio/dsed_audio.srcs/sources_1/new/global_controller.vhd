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
    reset : in STD_LOGIC;
    clear : in STD_LOGIC;
    rec_enable : in STD_LOGIC;
    play_enable : in STD_LOGIC; 
    fil : in STD_LOGIC_VECTOR(1 downto 0);
    micro_clk : out STD_LOGIC;
    micro_data : in STD_LOGIC;
    micro_LR : out STD_LOGIC;
    --To/From the mini-jack
    jack_sd : out STD_LOGIC;
    jack_pwm : out STD_LOGIC;
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

--component fir_filter port (
  --  clk : in STD_LOGIC;
    --reset : in STD_LOGIC;
    --sample_in : in signed (sample_size-1 downto 0);
    --sample_in_enable : in STD_LOGIC;
    --filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
    --sample_out : out signed (sample_size-1 downto 0);
    --sample_out_ready : out STD_LOGIC);
--end component;
---Intermediate signals---
--signal clk_12mhz : std_logic;
signal reset_sys : std_logic;
signal  rec_audio, play_audio, mem_en : std_logic;
signal fil_enable, fil_lp : std_logic;
signal data_micro, s_sample_out : std_logic_vector(sample_size - 1 downto 0);
signal data_ram, reg_sample_in, next_sample_in : std_logic_vector(sample_size - 1 downto 0);
--clock signal--
signal clk_12mhz : std_logic;
signal write_en,s_sample_request, s_ena: std_logic;
signal s_wea : std_logic_vector(0 downto 0);
type state is (idle, rep, rec); ---filter y clear
signal state_reg, state_next : state;
signal addra_reg , addra_next, stack_reg, stack_next: std_logic_vector (18 downto 0);
begin
process (clk_12mhz)
begin
if (rising_edge(clk_12mhz)) then
    if (reset = '1') then
        state_reg <= idle;
    else
    state_reg <= state_next;
    addra_reg <= addra_next;
    stack_reg <= stack_next;
    reg_sample_in<= next_sample_in;
    end if;
end if;     
end process;

process( state_reg, play_enable, rec_enable, addra_reg, write_en, s_sample_out, data_ram,s_sample_request, reg_sample_in )
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
case state_reg is
    when idle =>
    ready <= '1';
    ---para solo grabar un unico audio ---
    addra_next <= (others=>'0');
        if (play_enable = '1') then
            state_next <= rep;
        elsif (rec_enable = '1') then
            state_next <= rec;
        end if;
      when rec =>
        if (rec_enable = '1') then
            rec_audio <= '1';
            data_micro <= s_sample_out;
            if (write_en = '1') then
                s_ena <= '1';
                s_wea <= "1";
                addra_next <= std_logic_vector(unsigned(addra_reg) + 1);
            end if;
         else
            state_next <= idle;
            end if;
        when rep =>
         if (play_enable = '1') then 
            play_audio <= '1';
            s_ena <= '1';
            next_sample_in <= data_ram;
            if (s_sample_request = '1') then     
                addra_next<= std_logic_vector(unsigned(addra_reg) + 1);

             end if;
         else
            state_next <= idle;
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
        sample_out_ready => write_en
);
U3 : blk_mem_gen_0 port map(
            clka => clk_12mhz,
            ena => s_ena,
            wea => s_wea,
            addra => addra_reg,
            dina => data_micro,
            douta => data_ram
            );
        

end Behavioral;
