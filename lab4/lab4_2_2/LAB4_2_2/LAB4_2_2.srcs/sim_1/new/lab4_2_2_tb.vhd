----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2021 13:37:41
-- Design Name: 
-- Module Name: lab4_2_2_tb - Behavioral
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

entity lab4_2_2_tb is
--  Port ( );
end lab4_2_2_tb;

architecture Behavioral of lab4_2_2_tb is

component lab4_2_2 
   Port ( clk : in STD_LOGIC;
        en : in STD_LOGIC;
        rst : in STD_LOGIC;
        d : in STD_LOGIC;
        q : out STD_LOGIC);
        end component;
signal clk, d, rst, en : std_logic;
signal q : std_logic;
constant clk_period : time := 1 ns;

begin
DUT : lab4_2_2 port map(
        clk => clk,
        en => en,
        rst => rst,
        d => d,
        q => q); 
 clk_process :process
                begin
                    clk <= '0';
                    wait for clk_period/2;
                    clk <= '1';
                    wait for clk_period/2;
                end process;
                
 d_process :process
                begin
                    d <= '0';
                    wait for 250 ps;
                    d <= '1';
                    wait for 500 ps;
                    d<= '0';
                    wait for 300 ps;
                    d<= '1';
                    wait for 200 ps;
                 end process;
rst_process : process
            begin 
            rst <= '0';
            wait for 2300 ps;
            rst <= '1';
            wait for 500 ps;
            end process;
en_process : process
            begin
            en<= '1';
            wait for 3000 ps;
            en <= '0';
            wait for 1000 ps;
            end process;
            

end Behavioral;
