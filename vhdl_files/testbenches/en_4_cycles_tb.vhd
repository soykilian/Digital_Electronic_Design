----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2021 15:14:27
-- Design Name: 
-- Module Name: en_4_cycles_tb - Behavioral
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

entity en_4_cycles_tb is
--  Port ( );
end en_4_cycles_tb;

architecture Behavioral of en_4_cycles_tb is
constant clk_period : time := 8.33 ns;
signal clk,reset: std_logic;
--output signasl..
signal en_2_cycles, en_four_cycles, clk_3megas : std_logic;
component en_4_cycles 
Port ( clk_12megas : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_3megas: out STD_LOGIC;
    en_2_cycles: out STD_LOGIC;
    en_4_cycles : out STD_LOGIC);
end component;


begin
resett_process : process 
begin
reset <= '1';
wait for 10 ns;
reset <= '0';
wait for 100 ns;
end process;
clk_process :process
        begin
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
end process;
U1 : en_4_cycles port map(
        clk_12megas => clk,
        reset => reset,
        en_2_cycles => en_2_cycles,
        en_4_cycles => en_four_cycles,
        clk_3megas => clk_3megas);
        

end Behavioral;
