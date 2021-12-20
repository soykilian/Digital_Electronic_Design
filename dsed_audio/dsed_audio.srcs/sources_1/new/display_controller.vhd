----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2021 13:46:14
-- Design Name: 
-- Module Name: display_controller - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display_controller is
Port ( 
clk : in std_logic;
rst : in std_logic;
--sw : in std_logic;
control : in std_logic_vector(2 downto 0);
on_display : in std_logic;
--an1 : out std_logic;
an : out std_logic_vector(7 downto 0);
display : out std_logic_vector(6 downto 0)

);
end display_controller;

architecture Behavioral of display_controller is
component clk_wiz_12 is
Port ( clk_in1 : in std_logic;
      clk_out1 :out std_logic
);
end component;
--signal led_reg, led_next : std_logic_vector(7 downto 0);
signal counter_reg, counter_next: unsigned(17 downto 0);
signal s_display : std_logic_vector(6 downto 0);
signal s_an : std_logic_vector(7 downto 0);
signal clk_12mhz : std_logic;
type  state is (idle, letter_0, letter_1, letter_2, letter_3, letter_4);
signal dig_0, dig_1, dig_2, dig_3, dig_4, dig_5 : std_logic_vector(6 downto 0);
signal state_reg, state_next : state;
begin
u1 : clk_wiz_12 port map(
clk_in1 => clk,
clk_out1 => clk_12mhz);
process (clk_12mhz, rst)
begin
    if (rst = '1') then
   -- s_display <= (others => '1');
   -- s_an <= (others => '1');
    counter_reg <= (others => '0');
    end if;
    if (rising_edge(clk_12mhz)) then
        counter_reg <= counter_next;
    end if;
end process;
counter_next <= counter_reg + 1 when (counter_reg <= 64000) else (others=>'0');

process (clk_12mhz)
begin
    if (counter_reg = 64000) then
        state_reg <= state_next;
    end if;
end process;

process (state_reg)
begin
case state_reg is
    when idle =>
    if (on_display = '1') then
        state_next <= letter_0;
     end if;
    when letter_0 =>
        state_next <= letter_1;
    when letter_1 =>
        state_next <= letter_2;
    when letter_2 =>
        state_next <= letter_3;
     when letter_3 =>
        state_next <= letter_4;
     when letter_4 =>
        state_next <= letter_0;
     end case;         
end process;

process(control)
begin
case control is 
    when "001" =>
        dig_4 <= "0011001";
        dig_3 <= "0110000";
        dig_2 <= "0001000";
        dig_1 <= "0000001";
        dig_0 <= "1000100";
      when others =>
        dig_0 <= "1111111";
        dig_1 <= "1111111";
        dig_2 <= "1111111";
        dig_3 <= "1111111";
        dig_4 <= "1111111";
        end case; 
end process;

process(state_reg, dig_0, dig_1, dig_2, dig_3, dig_4)
begin
--s_display <= "1111111";
an <= "11111111";
    case STATE_REG is
        when idle =>
        display <= "1111111";
        when letter_0 =>
            display <= dig_0;
            an <= "11111110";
        when letter_1 =>
            display <= dig_1;
            an <= "11111101";
        when letter_2 =>
            display <= dig_2;
           an <= "11111011";
        when letter_3 =>
            display <= dig_3;
            an <= "11110111";
        when letter_4 =>
            display <= dig_4;
            an <= "11101111";
        end case;
end process;
--display <= s_display;
--an1<= '0';
--an <= s_an;
end Behavioral;
