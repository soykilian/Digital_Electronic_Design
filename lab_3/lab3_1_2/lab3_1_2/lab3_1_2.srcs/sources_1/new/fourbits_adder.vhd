----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2021 13:46:25
-- Design Name: 
-- Module Name: fourbits_adder - Behavioral
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

entity fourbits_adder is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end fourbits_adder;

architecture Behavioral of fourbits_adder is
signal a_ext, b_ext, sum_ext : unsigned(5 downto 0);

begin
a_ext <= unsigned('0' & a & '1');
b_ext <= unsigned('0' & b& cin);
sum_ext <= a_ext + b_ext;
cout <= sum_ext(5);
s <= std_logic_vector (sum_ext(4 downto 1));

end Behavioral;
