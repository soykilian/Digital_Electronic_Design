----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2021 11:18:17
-- Design Name: 
-- Module Name: mux2 - Behavioral
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

entity mux2 is
Port (
    in_0 : in signed(sample_size - 1 downto 0);
    in_1 : in signed(sample_size - 1 downto 0);
    ctrl : in std_logic;
    output : out signed(sample_size -1 downto 0)
);
end mux2;

architecture Behavioral of mux2 is

begin
with ctrl select output <= 
    in_0 when '0',
    in_1 when  '1';
 

end Behavioral;
