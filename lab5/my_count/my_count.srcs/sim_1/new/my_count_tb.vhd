----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.10.2021 22:29:42
-- Design Name: 
-- Module Name: my_count_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_count_tb is
--  Port ( );
end my_count_tb;

architecture Behavioral of my_count_tb is
signal clk, en, rst: std_logic;
signal count : std_logic_vector(2 downto 0);
component my_count is    
Port ( rst : in STD_LOGIC;
       clk : in STD_LOGIC;
       en : in STD_LOGIC;
       count : out STD_LOGIC_VECTOR (2 downto 0));
       end component;
constant clk_period : time := 200 ns; 
begin
DUT : my_count port map(
        rst => rst,
        en => en,
        clk => clk,
        count => count);
        
clk_process : process 
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
end process;

en_process : process 
begin
    en <= '1';
    wait for 1200 ns;
    en <= '0';
    wait for 200 ns;
    end process;
rst_process : process
begin 
    rst <= '0';
    wait for 1500 ns;
    rst <= '1';
    wait for 1000 ns;
    end process;




end Behavioral;
