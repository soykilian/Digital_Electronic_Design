----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2021 13:15:22
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
--use IEEE.NUMERIC_STD.ALL;

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

component fulladder_dataflow port(
    a,b,cin : in std_logic;
    s,cout: out std_logic);
end component;
signal carry0,carry1, carry2, carry3: std_logic;
begin

U0 : fulladder_dataflow port map(
            a => a(0),
            b => b(0),
            cin => cin,
            s => s(0),
            cout => carry1);
U1 : fulladder_dataflow port map(
            a => a(1),
            b => b(1),
            cin => carry1,
            s => s(1),
            cout => carry2);   
U2 : fulladder_dataflow port map(
            a => a(2),
            b => b(2),
            cin => carry2,
            s => s(2),
            cout => carry3);
U3 : fulladder_dataflow port map(
            a => a(3),
            b => b(3),
            cin => carry3,
            s => s(3),
            cout => cout);
end Behavioral;
