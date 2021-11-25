----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2021 16:21:00
-- Design Name: 
-- Module Name: fir_implementation - Behavioral
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

entity fir_implementation is
Port(
    clk : in std_logic;
    reset : in std_logic;
    c0 : in signed(sample_size -1 downto 0);
    c1 : in signed(sample_size -1 downto 0);
    c2 : in signed(sample_size -1 downto 0);
    c3 : in signed(sample_size -1 downto 0);
    c4 : in signed(sample_size -1 downto 0);
    x0 : in signed(sample_size -1 downto 0);
    x1 : in signed(sample_size -1 downto 0);
    x2 : in signed(sample_size -1 downto 0);
    x3 : in signed(sample_size -1 downto 0);
    x4 : in signed(sample_size -1 downto 0);
    ctrl : in std_logic_vector(2 downto 0);
    y : out signed(sample_size - 1 downto 0)
    
);
end fir_implementation;

architecture Behavioral of fir_implementation is
--registers--
signal r1_state, r1_next, r2_state, r2_next : signed(sample_size - 1 downto 0);
--register for the multiplicator--
signal r3_state, r3_next : signed(sample_size - 1 downto 0);
--opperands obtained form the m,ultiplexor logic--
signal m1, m2, m3 : signed(sample_size - 1 downto 0);
--signal for the adder output--
signal add: signed(sample_size -1 downto 0);
--registers for the multiplication --
signal mul_state, mul_next : signed(sample_size - 1 downto 0);

component mux8 is
Port(
    in_1 : IN signed(sample_size - 1 downto 0);
    in_2 : IN signed(sample_size - 1 downto 0);
    in_3 : IN signed(sample_size - 1 downto 0);
    in_4 : IN signed(sample_size - 1 downto 0);
    in_5 : IN signed(sample_size - 1 downto 0);
    in_6 : IN signed(sample_size - 1 downto 0);
    in_7 : IN signed(sample_size - 1 downto 0);
    ctrl : IN STD_LOGIC_VECTOR(2 downto 0);
    output : OUT signed(sample_size - 1 downto 0) 
);
end component;

begin


end Behavioral;
