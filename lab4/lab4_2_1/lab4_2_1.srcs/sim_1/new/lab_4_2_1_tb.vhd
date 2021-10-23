----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2021 02:34:37 PM
-- Design Name: 
-- Module Name: lab_4_2_1_tb - Behavioral
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

entity lab_4_2_1_tb is

end lab_4_2_1_tb;

architecture Behavioral of lab_4_2_1_tb is
constant clk_period : time := 1 ns;

component lab4_2_1 
    Port ( d : in STD_LOGIC;
            clk : in STD_LOGIC;
           qa : out STD_LOGIC;
           qb : out STD_LOGIC;
           qc : out STD_LOGIC);
end component;


signal clk, d : std_logic;
signal qa, qb, qc : std_logic;

begin



DUT: lab4_2_1 port map(
    clk => clk,
    d=> d,
    qa => qa,
    qb => qb,
    qc => qc);
    
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
            wait for clk_period/4;
            d <= '1';
            wait for clk_period/2;
            d<= '0';
            wait for clk_period/5;
            d<= '1';
            wait for clk_period/2;
         end process;

end Behavioral;
