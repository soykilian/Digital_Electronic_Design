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
signal clk_3 : std_logic;
signal count3, count3_next, count_4_en, count4_next : unsigned(2 downto 0);
signal count_2_en, count2_next : unsigned (1 downto 0);
begin
--Generate a 3 MHz clock with a 50% duty cycle--
CLK_3_PROCESS : process(clk_12megas)
begin
    if (rising_edge(clk_12megas)) then
        if (reset = '1') then
            count3<= (others =>'0');
         else
            count3 <= count3_next;
        end if ;
        end if;
end process ;
count3_next <= count3 + 1 when (count3 < 3) else (others => '0') ;
clk_3megas <= '1' when (count3 > 1) else '0';

--Generate an enable signal every two cyles--

EN_2_CYCLES_PROCESS : process (clk_12megas)
begin 
    if rising_edge(clk_12megas) then
        if (reset ='1') then
        count_2_en <= (others => '0');
        else
        count_2_en <= count2_next;
        end if;
        end if;
end process;
--Next state logic--
count2_next <= count_2_en + 1 when (count_2_en < 2) else (others =>'0');
--Activate enable--
en_2_cycles <= '1' when (count_2_en = 2) else '0';

EN_4_CYCLES_PROCESS : process (clk_12megas)
begin 
    if rising_edge(clk_12megas) then
        if (reset ='1') then
            count_4_en <= (others => '0');
         else
        count_4_en <= count4_next;
        end if;
        end if;
    
end process;

count4_next <= count_4_en + 1 when (count_4_en < 4) else (others =>'0');
--Activate enable--
en_4_cycles <= '1' when (count_4_en = 4) else '0';
--reset the count--
end Behavioral;
