----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2021 13:50:44
-- Design Name: 
-- Module Name: package_dsed - Behavioral
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

package package_dsed is
constant sample_size: integer := 8;
constant c0lp : signed := "00000101";
constant c1lp : signed := "00011111";
constant c2lp : signed := "00111001";
constant c3lp : signed := "00011111";
constant c4lp : signed := "00000101";
constant c0hp : signed := "11111111";
constant c1hp : signed := "11100110";
constant c2hp : signed := "01001101";
constant c3hp : signed := "11100110";
constant c4hp : signed := "11111111";
--constant max_memory 

--  Port ( );
end package_dsed;


