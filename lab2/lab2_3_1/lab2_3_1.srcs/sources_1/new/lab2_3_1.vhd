----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.09.2021 13:50:47
-- Design Name: 
-- Module Name: lab2_3_1 - Behavioral
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

entity lab2_3_1 is
    Port ( x : in STD_LOGIC_VECTOR (1 downto 0);
           y : in STD_LOGIC_VECTOR (1 downto 0);
           s : in STD_LOGIC;
           m : out STD_LOGIC_VECTOR (1 downto 0));
end lab2_3_1;

architecture Behavioral of lab2_3_1 is
signal aux1, aux2, aux3, aux4, aux5 : STD_LOGIC;

component not1 port (
i0 : in std_logic;
o : out std_logic );
end component;

component and2 port (
i0, i1 : in std_logic;
o : out std_logic );
end component;

component or2 port (
i0, i1 : in std_logic;
o : out std_logic );
end component;

begin

u0: not1 port map(
    i0 => s,
    o => aux1);
    
 u1: and2 port map (
    i0 => x(0),
    i1 => aux1,
    o => aux2);

 u2: and2 port map (
    i0 => y(0),
    i1 => s,
    o => aux3);
    
 u3: and2 port map (
       i0 => x(1),
       i1 => aux1,
       o => aux4);
 
  u4: and2 port map (
             i0 => y(1),
             i1 => s,
             o => aux5);
 
  u5: or2 port map (
                   i0 => aux2,
                   i1 => aux3,
                   o => m(0));            
  u6: or2 port map (
                                     i0 => aux4,
                                     i1 => aux5,
                                     o => m(1));   
        
end Behavioral;
