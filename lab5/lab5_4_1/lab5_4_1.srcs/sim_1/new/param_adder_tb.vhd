----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.10.2021 18:53:23
-- Design Name: 
-- Module Name: param_adder_tb - Behavioral
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

entity param_adder_tb is
--  Port ( );
end param_adder_tb;


architecture Behavioral of param_adder_tb is
component param_adder is
generic (data_width : integer);
port( a : in std_logic_vector((data_width - 1) downto 0);
	b :in std_logic_vector((data_width - 1) downto 0);
	cin : in std_logic;
	cout : out std_logic;
	s : out std_logic_vector((data_width - 1) downto 0));
end component;
signal a ,b : std_logic_vector(3 downto 0);
signal cin: std_logic;
--outputs
signal s : std_logic_vector(3 downto 0);
signal cout : std_logic;
constant DELTA : time := 10 ns;
begin

DUT: param_adder 
	generic map( data_width => 4)
	port map( a => a,
		b => b,
		cin => cin,
		cout => cout,
		s => s
	);
process
procedure send_vectors(constant int1 : in natural;
			constant int2 : in natural;
			constant int3 : in std_logic) is
begin
a <= std_logic_vector(to_unsigned(int1, a'length));
b <= std_logic_vector(to_unsigned(int2, b'length));
cin <= int3;
wait for DELTA;
end procedure send_vectors;
begin 
send_vectors(10,2,'0');
send_vectors(6,5,'1');
send_vectors(10,3,'1');
send_vectors(12,6,'0');
send_vectors(15,15,'0');
send_vectors(3,9,'1');
send_vectors(1,14,'1');
wait;
end process;
end Behavioral;



