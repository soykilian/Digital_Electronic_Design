----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.10.2021 13:15:08
-- Design Name: 
-- Module Name: one_second_pulse - Behavioral
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

entity one_second_pulse is
    Port ( clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            enable:  in STD_LOGIC;
           pulse : out STD_LOGIC;
           locked : out STD_LOGIC);
end one_second_pulse;

architecture Behavioral of one_second_pulse is
component clk_5MHz is
port ( reset: in std_logic;
        clk_in1: in std_logic;
        clk_out1 : out std_logic;
        locked: out std_logic
); end component;

signal count :unsigned(23 downto 0);
signal clk_5: std_logic;
begin
UUT: clk_5MHz port map (
        clk_in1 => clk,
        reset => reset,
        locked => locked,
        clk_out1 => clk_5);
process(clk_5)
begin
    if rising_edge(clk_5) then
        if (enable ='1') then
        count <= count + 1;
    end if;
    end if;
    end process;
    
process (count)
begin
if (count < 5000000) then
    pulse <= '1';
else
    count <=to_unsigned(0, 24);
    pulse <= '0';
end if;
end process;
end Behavioral;    