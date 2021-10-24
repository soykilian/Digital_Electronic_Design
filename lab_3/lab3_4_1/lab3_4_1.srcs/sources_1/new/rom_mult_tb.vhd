----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2021 17:17:26
-- Design Name: 
-- Module Name: rom_mult_tb - Behavioral
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

entity rom_mult_tb is
--  Port ( );
end rom_mult_tb;

architecture Behavioral of rom_mult_tb is

component rom_mult
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal a, b: std_logic_vector(1 downto 0);
signal y: std_logic_vector(3 downto 0);

constant DELTA : time := 10ns;

begin


DUT: rom_mult port map(
        a => a,
        b => b,
        y => y);

 
process

    procedure send_vectors (constant in1: in natural;
                            constant in2: in natural) is
              variable mult : std_logic_vector(3 downto 0);
    begin
        a<= std_logic_vector(to_unsigned(in1, a'length));                          
        b<= std_logic_vector(to_unsigned(in2, b'length));
        
        wait for DELTA;
        -- Calculate output
        mult := std_logic_vector(unsigned(a) * unsigned(b));
        
        assert (y = mult(3 downto 0))
        report "Wrong result:" &
        "a=" & integer'image(in1) & "; " &
        "b=" & integer'image(in2) & "; " &
        "y=" & integer'image(to_integer(unsigned(y))) & "; " &
        "y_expected=" & integer'image(to_integer(unsigned(mult(3 downto 0)))) & "; "
        severity error;
    
    end procedure send_vectors;
    
 begin
    send_vectors(0,0);
    send_vectors(0,1);
    send_vectors(1,0);
    send_vectors(1,1);
    send_vectors(0,2);
    send_vectors(1,2);
    send_vectors(2,2);
    send_vectors(2,1);
    send_vectors(2,0);
    send_vectors(0,3);
    send_vectors(1,3);
    send_vectors(2,3);
    send_vectors(3,3);
    send_vectors(3,0);
    send_vectors(3,1);
    send_vectors(3,2);
    
    wait;
 
 end process;
 
end Behavioral;
