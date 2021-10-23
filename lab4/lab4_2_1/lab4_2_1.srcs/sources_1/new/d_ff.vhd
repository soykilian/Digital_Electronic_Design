----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2021 02:22:25 PM
-- Design Name: 
-- Module Name: d_ff - Behavioral
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

entity d_ff is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           qb : out STD_LOGIC);
end d_ff;

architecture Behavioral of d_ff is

begin
process(clk)
begin
    if (rising_edge(clk)) then 
        qb <= d;
     end if;
end process;

end Behavioral;
