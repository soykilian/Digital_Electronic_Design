----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2021 20:22:20
-- Design Name: 
-- Module Name: tb_multiplex - Behavioral
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

entity tb_multiplex is
--  Port ( );
end tb_multiplex;


architecture Behavioral of tb_multiplex is

constant clk_period : time := 10 ns;
component multipleX is
generic (module : integer);
Port ( clk : in STD_LOGIC;
        start : in STD_LOGIC;
        finish : in STD_LOGIC;
        A : in STD_LOGIC;
        out_mealy : out STD_LOGIC;
        out_moore : out STD_LOGIC);
end component;
signal  start, finish, clk, a : std_logic;
--output signals
signal  out_mea, out_moo: std_logic;
begin
DUT : multipleX 
generic map ( module => 3)
port map (
    start => start,
    finish => finish,
    A => a,
    clk => clk,
    out_mealy => out_mea,
    out_moore => out_moo);
     
 clk_process :process
            begin
                clk <= '0';
                wait for clk_period/2;
                clk <= '1';
                wait for clk_period/2;
    end process;
     process
    begin
        wait for 10ns;
        start <= '1';
        wait for 30 ns;
        start <= '0';
        A <= '0';
        wait for 40 ns;
        A <= '1';
        wait for 40 ns;
        A <= '0';
        wait for 120 ns;
        A <= '1';
        wait for 80 ns;
        A <= '0';
        wait for 400 ns;
        finish <= '1';
        wait for 40 ns;
        finish <= '0';        
        wait;
    end process;
end Behavioral;
