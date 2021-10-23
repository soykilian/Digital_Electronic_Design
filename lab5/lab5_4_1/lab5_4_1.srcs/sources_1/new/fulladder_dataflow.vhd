----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.10.2021 19:48:44
-- Design Name: 
-- Module Name: fulladder_dataflow - Behavioral
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

entity fulladder_dataflow is
    generic( out_delay : time := 10 ns);
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           p : out STD_LOGIC;
           g : out STD_LOGIC;
           s : out STD_LOGIC);
end fulladder_dataflow;

architecture Behavioral of fulladder_dataflow is

begin
begin
g <= a and b;
p <= a xor b;
s <= (a xor b) xor cin;


end Behavioral;
