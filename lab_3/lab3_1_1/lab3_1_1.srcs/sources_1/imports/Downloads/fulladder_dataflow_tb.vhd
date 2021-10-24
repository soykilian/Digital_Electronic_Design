--------------------------------------------
-- Module Name: fulladder_dataflow_tb
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity fulladder_dataflow_tb Is
end fulladder_dataflow_tb;

Architecture behavior of fulladder_dataflow_tb Is
	Component fulladder_dataflow
	port (
		a  	 : in STD_LOGIC;
		b  	 : in STD_LOGIC;
		cin  : in STD_LOGIC;
		s 	 : out STD_LOGIC;
		cout : out STD_LOGIC
	);	
	End Component;
	
	Signal a 	: STD_LOGIC := '0';
	Signal b 	: STD_LOGIC := '0';
	Signal cin  : STD_LOGIC := '0';
	
	Signal cout : STD_LOGIC;
	Signal s	: STD_LOGIC;
	
begin
	DUT:  fulladder_dataflow PORT MAP (
		a => a,
		b => b,
		cin => cin,
		s => s,
		cout => cout
		 );
		 
	process
	begin
		wait for 10 ns; a <= '1';
		wait for 10 ns; b <= '1'; a <= '0';
		wait for 10 ns; a <= '1';
		wait for 10 ns; cin <= '1'; a <= '0'; b <= '0';
		wait for 10 ns; a <= '1';
		wait for 10 ns; b <= '1'; a <= '0';
		wait for 10 ns; a <= '1';
		wait for 20 ns;
		
		wait;
	end process;
end behavior;