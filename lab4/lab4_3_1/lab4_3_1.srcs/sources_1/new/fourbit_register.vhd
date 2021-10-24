----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2021 23:03:01
-- Design Name: 
-- Module Name: fourbit_register - Behavioral
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

entity fourbit_register is
    Port ( clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           load : in STD_LOGIC;
           set : in STD_LOGIC;
           reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end fourbit_register;

architecture Behavioral of fourbit_register is

begin


process (clk)
begin
if rising_edge(clk) then
    if ( reset = '1') then
        Q <= "0000";
    elsif ( set = '1') then
        Q <= "1111";
    elsif (load = '1') then
        Q <= D;
     end if;
end if;
end process;


end Behavioral;
