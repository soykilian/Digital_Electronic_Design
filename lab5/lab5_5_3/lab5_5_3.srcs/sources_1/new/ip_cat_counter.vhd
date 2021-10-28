----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.10.2021 10:27:50
-- Design Name: 
-- Module Name: ip_cat_counter - Behavioral
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

entity ip_cat_counter is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end ip_cat_counter;

architecture Behavioral of ip_cat_counter is
component clk_wiz_0 
Port (
       clk_in1 : in std_logic;
       reset : in std_logic;
       clk_out1 : out std_logic
);
end component;
--Binary counter --
component eight_bit_counter 
Port (
    CLK : in std_logic;
    CE : in std_logic;
    UP : in std_logic;
    Q : out std_logic_vector(6 downto 0)
);
    end component;    
--5 Mhz clock --
begin


end Behavioral;
