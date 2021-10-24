----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.09.2021 13:18:39
-- Design Name: 
-- Module Name: lab2_2_1 - Behavioral
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

entity lab2_2_1 is
    Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : in STD_LOGIC_VECTOR (1 downto 0);
           s : in STD_LOGIC;
           m : out STD_LOGIC_VECTOR (1 downto 0));
end lab2_2_1;

architecture Behavioral of lab2_2_1 is
signal aux1, aux2, aux3, aux4 : STD_LOGIC;

begin
aux1 <= x(0) and (not s);
aux2 <= y(0) and s;
m(0) <= aux1 or aux2;

aux3 <= x(1) and (not s);
aux4 <= y(1) and s;
m(1) <= aux3 or aux4;


end Behavioral;
