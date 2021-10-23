----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.10.2021 13:25:16
-- Design Name: 
-- Module Name: fourbits_adder - Behavioral
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

entity fourbits_adder is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC);
end fourbits_adder;

architecture Behavioral of fourbits_adder is

component fulladder_dataflow port (
          a : in STD_LOGIC;
          b : in STD_LOGIC;
          cin : in STD_LOGIC;
           p : out STD_LOGIC;
           g : out STD_LOGIC;
           s : out STD_LOGIC);
end component;

signal p0, p1, p2, p3, g0, g1, g2, g3, c1, c2, c3 : std_logic;

begin

U0: fulladder_dataflow port map (
        cin => cin,
        a => a(0),
        b => b(0),
        p => p0,
        g => g0,
        s => s(0));
       
 
 U1: fulladder_dataflow port map (
                cin => c1,
                a => a(1),
                b => b(1),
                p => p1,
                g => g1,
                s => s(1));
                
 U2: fulladder_dataflow port map (
                               cin => c2,
                               a => a(2),
                               b => b(2),
                               p => p2,
                               g => g2,
                               s => s(2));     
        
 U3: fulladder_dataflow port map (
                                  cin => c3,
                                  a => a(3),
                                  b => b(3),
                                  p => p3,
                                  g => g3,
                                  s => s(3));  

c1 <= g0 or (p0 and cin);
c2 <= g1 or (g0 and p1) or (cin and p1 and p0); 
c3 <= g2 or (g1 and p2) or (g0 and p1 and p2) or (cin and p1 and p0 and p2);
cout <= g3 or (g2 and p3) or (g1 and p2 and p3) or (g0 and p1 and p2 and p3) or (cin and p1 and p0 and p2 and p3);

end Behavioral;
