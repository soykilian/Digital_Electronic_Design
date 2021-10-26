----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.10.2021 18:22:57
-- Design Name: 
-- Module Name: param_adder - Behavioral
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

entity param_adder is
    generic (data_width : integer := 4;
               delay : time := 10 ns);
    --generic (out_delay : time := 5 ns);
    Port ( cin : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);
           b : in STD_LOGIC_VECTOR ((data_width - 1) downto 0);
           cout : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((data_width - 1) downto 0));
   
end param_adder;

architecture Behavioral of param_adder is

signal a_ext, b_ext, sum_ext : unsigned((data_width + 1) downto 0);

begin
a_ext <= unsigned('0' & a & '1');
b_ext <= unsigned('0' & b& cin);
sum_ext <= a_ext + b_ext after delay;
cout <= sum_ext(data_width + 1) after delay;
s <= std_logic_vector (sum_ext(data_width downto 1));


end Behavioral;
