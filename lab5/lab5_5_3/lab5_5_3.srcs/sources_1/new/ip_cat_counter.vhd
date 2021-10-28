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
           up_down : in std_logic;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end ip_cat_counter;

architecture Behavioral of ip_cat_counter is

--Binary counter --
component one_sec_pulse is
    Port ( clk : in STD_LOGIC;
   pulse : out STD_LOGIC);
   end component;
component eight_bit_counter 
Port (
    CLK : in std_logic;
    CE : in std_logic;
    SCLR : IN STD_LOGIC;
    UP : in std_logic;
    Q : out std_logic_vector(7 downto 0)
);
    end component;    

signal pulse : std_logic;
begin
U1: one_sec_pulse port map 
(   clk => clk,
    pulse => pulse);
U2 : eight_bit_counter port map
(   clk  => pulse,
    ce => en,
    sclr => rst,
    up => up_down,
    q => q
);


end Behavioral;
