----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2021 14:06:20
-- Design Name: 
-- Module Name: rom_mult - Behavioral
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

entity rom_mult is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
end rom_mult;

architecture Behavioral of rom_mult is
type rom is array(0 to 2**4 - 1) of std_logic_vector(3 downto 0);
constant MY_ROM : rom :=(
    0 => "0000",
    1 => "0001",
    2 => "0010",
    3 => "0011",
    4 => "0100",
    5 => "0101",
    6 => "0110",
    7 => "0111",
    8 => "1000",
    9 => "1001",
    10=> "1010",
    11 => "1011",
    12 => "1100",
    13 => "1101",
    14 => "1110",
    15 => "1111");
begin
process (a, b)
begin
if ( a = "00" or b = "00") then
y <= MY_ROM(0);
elsif((a ="01" and b = "10" ) or (a = "10" and b = "01")) then
y <= MY_ROM(2);
elsif ((a = "01" and b = "11") or (a = "11" and b = "01")) then
y <= MY_ROM(3);
elsif (a ="01" or b = "01") then
y <= MY_ROM(1);
elsif (a ="10" and b = "10") then 
y <= MY_ROM(4);
elsif ((a = "11" and b = "10") or (a = "10" and b = "11")) then
y <= MY_ROM(6);
elsif (a = "11" and b = "11") then
y <= MY_ROM(9);
end if;
end process;   
end Behavioral;
