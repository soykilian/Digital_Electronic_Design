----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2021 16:12:54
-- Design Name: 
-- Module Name: mux8 - Behavioral
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
use work.package_dsed.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8 is
Port(
    in_1 : IN signed(sample_size - 1 downto 0);
    in_2 : IN signed(sample_size - 1 downto 0);
    in_3 : IN signed(sample_size - 1 downto 0);
    in_4 : IN signed(sample_size - 1 downto 0);
    in_5 : IN signed(sample_size - 1 downto 0);
    in_6 : IN signed(sample_size - 1 downto 0);
    in_7 : IN signed(sample_size - 1 downto 0);
    ctrl : IN STD_LOGIC_VECTOR(2 downto 0);
    output : OUT signed(sample_size - 1 downto 0) 
);
--  Port ( );
end mux8;

architecture Behavioral of mux8 is

begin
    with ctrl select output <=
    in_1 when "000",
    in_2 when "001",
    in_3 when "010",
    in_4 when "011",
    in_5 when "100",
    in_6 when "101",
    in_7 when "110",
    in_1 when OTHERS;
end Behavioral;
