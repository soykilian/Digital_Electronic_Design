----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.10.2021 12:55:55
-- Design Name: 
-- Module Name: one_sec_pulse - Behavioral
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

entity one_sec_pulse is
    Port ( clk : in STD_LOGIC;
        reset : in STD_LOGIC;
       pulse : out STD_LOGIC);
end one_sec_pulse;

architecture Behavioral of one_sec_pulse is
component clk_wiz_5_1 is 
Port (clk_in1: in std_logic;
      reset : in std_logic;
      clk_out1: out std_logic); 
      end component;
signal reg_state, next_state: unsigned(24 downto 0);
signal clk_5: std_logic;
signal en: std_logic;
begin
UUT: clk_wiz_5_1 port map (
              clk_in1 => clk,
              reset => reset,
              clk_out1 => clk_5);
process(clk_5)
begin
    if rising_edge(clk_5) then
        reg_state <= next_state;
    end if;
    end process;
en <= '1' when (reg_state < 5000000) else '0';
next_state <= next_state + 1 when (reg_state < 10000000) else (others => '0');

process (clk_5)
begin
if (en = '1') then
    pulse <= '1';
else
    pulse <= '0';
end if;
end process;
end Behavioral; 