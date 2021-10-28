----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.10.2021 13:19:04
-- Design Name: 
-- Module Name: tb_multiple3 - Behavioral
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

entity tb_multiple3 is
--  Port ( );
end tb_multiple3;


architecture Behavioral of tb_multiple3 is
constant clk_period : time := 10 ns;
component multiple3 
    Port ( a : in STD_LOGIC;
       clk : in STD_LOGIC;
       rst : in STD_LOGIC;
       out_mealy : out STD_LOGIC;
       out_moore : out STD_LOGIC);
       end component;
signal clk, a, rst: std_logic;
signal out_me, out_mo : std_logic; 
begin
U1 : multiple3 port map (
clk => clk,
rst => rst,
a => a,
out_moore => out_mo,
out_mealy => out_me);

clk_process :process
        begin
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
end process;
a_process : process
    begin 
        a <= '0';
        wait for 40 ns;
        a <= '1';
        wait for 20 ns;
        a <= '0';
        wait for 60 ns;
        a <= '1';
        wait for 40 ns;
        a <= '1';
        end process;
        
rst_process : process
begin
    rst <= '1';
      wait for 20 ns;
      rst <= '0';
      wait for 10000 ns;
end process;

end Behavioral;
