----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2021 13:56:05
-- Design Name: 
-- Module Name: en_4_cycles - Behavioral
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

entity en_4_cycles is
Port ( clk_12megas : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_3megas: out STD_LOGIC;
    en_2_cycles: out STD_LOGIC;
    en_4_cycles : out STD_LOGIC);
end en_4_cycles;

architecture Behavioral of en_4_cycles is
signal count_reg, count_next: unsigned(1 downto 0);

begin
--Generate a 3 MHz clock with a 50% duty cycle--
CLK_3_PROCESS : process(clk_12megas)
begin
    if (reset = '1') then
        count_reg <= "00";
    elsif (rising_edge(clk_12megas)) then
        count_reg <= count_next;
     end if;
end process ;

count_next <= count_reg + 1;
process(count_reg)
begin
case count_reg is
    when "00" =>
        clk_3megas <= '0';
        en_2_cycles <= '1';
        en_4_cycles <= '0';
     when "01" =>
        clk_3megas <= '1';
        en_2_cycles <= '0';
        en_4_cycles <= '1';
     when "10"=>
         clk_3megas <= '1';
         en_2_cycles <= '1';
         en_4_cycles <= '0';
     when  others =>
         clk_3megas <= '0';
        en_2_cycles <= '0';
        en_4_cycles <= '0';
    end case;
end process;


--Generate an enable signal every two cyles-
end Behavioral;
