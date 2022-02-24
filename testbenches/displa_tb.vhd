----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.12.2021 20:41:13
-- Design Name: 
-- Module Name: displa_tb - Behavioral
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

entity displa_tb is
--  Port ( );
end displa_tb;

architecture Behavioral of displa_tb is
constant clk_period : time := 83.33 ns;
component display_controller is
    Port (
        clk_12mhz : in std_logic;
        rst : in std_logic;
        control : in std_logic_vector(2 downto 0);
        on_display : in std_logic;
        an : out std_logic_vector(7 downto 0);
        display : out std_logic_vector(6 downto 0)
    );
 end component;


signal clock, reset, s_on_display : std_logic;
signal s_control : std_logic_vector(2 downto 0);
signal s_an : std_logic_vector(7 downto 0);
signal s_display : std_logic_vector(6 downto 0);


begin

stimuli : process
begin
reset <= '1';
wait for 10 ns;
reset <= '0';
s_control <= "001";
s_on_display <= '1';
wait;
end process;

clk_process :process
        begin
            clock <= '0';
            wait for clk_period/2;
            clock <= '1';
            wait for clk_period/2;
end process;


U1 : display_controller port map(
        clk_12mhz => clock,
        rst => reset,
        control => s_control,
        on_display => s_on_display,
        an => s_an,
        display => s_display);
end Behavioral;


