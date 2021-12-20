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
control : in std_logic_vector(2 downto 0);
on_display : in std_logic;
an : out std_logic_vector(4 downto 0);
display : out std_logic_vector(6 downto 0)

);
end display_controller;

architecture Behavioral of display_controller is
--signal led_reg, led_next : std_logic_vector(7 downto 0);
signal counter_reg, counter_next: unsigned(17 downto 0);
signal s_display : std_logic_vector(6 downto 0);
signal s_an : std_logic_vector(4 downto 0);
type  state is (idle, letter_0, letter_1, letter_2, letter_3, letter_4);
signal dig_0, dig_1, dig_2, dig_3, dig_4, dig_5 : std_logic_vector(6 downto 0);
signal state_reg, state_next : state;
begin
process (clk, rst)
begin
    if (rst = '1') then
   -- s_display <= (others => '1');
   -- s_an <= (others => '1');
    counter_reg <= (others => '0');
    end if;
    if (rising_edge(clk)) then
        counter_reg <= counter_next;
    end if;
end process;
counter_next <= counter_reg + 1 when (counter_reg < 192001) else (others=>'0');

process (counter_reg)
begin
    if (counter_reg = 192000) then
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
        state_next <= idle;
     end case;         
end process;

process(control)
begin
case control is 
    when "001" =>
        dig_0 <= "1001100";
        dig_1 <= "0000001";
        dig_2 <= "0001000";
        dig_3 <= "0110000";
        dig_4 <= "0000101";
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
s_display <= "1111111";
s_an <= "11111";
    case STATE_REG is
        when idle =>
        when letter_0 =>
            s_display <= dig_0;
            s_an <= "11110";
        when letter_1 =>
            s_display <= dig_1;
            s_an <= "11101";
        when letter_2 =>
            s_display <= dig_2;
           s_an <= "11011";
        when letter_3 =>
            s_display <= dig_3;
            s_an <= "10111";
        when letter_4 =>
            s_display <= dig_4;
            s_an <= "01111";
        end case;
end process;
display <= s_display;
an <= s_an;
end Behavioral;
