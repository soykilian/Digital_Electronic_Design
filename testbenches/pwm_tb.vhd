----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2021 12:12:36 PM
-- Design Name: 
-- Module Name: pwm_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm_tb is
--  Port ( );
end pwm_tb;

architecture Behavioral of pwm_tb is

---------
constant clk_period : time := 83.33 ns;
---------
component en_4_cycles is
Port (
    clk_12megas : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_3megas: out STD_LOGIC;
    en_2_cycles: out STD_LOGIC;
    en_4_cycles : out STD_LOGIC);
end component;
component pwm is 
Port(
    clk_12megas: in std_logic;
    reset: in std_logic;
    en_2_cycles: in std_logic;
    sample_in: in std_logic_vector(sample_size-1 downto 0);
    sample_request: out std_logic;
    pwm_pulse: out std_logic
);
end component;
-------------------
signal clk,reset, clk_3mhz: std_logic;
signal en2_cycles, en4_cycles, clk_3megas : std_logic;
signal pwm_pulse, sample_request :std_logic;
signal sample_in: std_logic_vector (sample_size - 1 downto 0);
---------
signal play_enable : std_logic;
begin
clk_process :process
        begin
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
            end process;

process 
begin
reset <= '1';
wait for 100 ns;
reset <='0';
play_enable<= '1';
wait for 1 ms;
play_enable <= '0';
wait for 250 us;
end process;
sample_in <= "11111111";
U1 : en_4_cycles port map(
                       clk_12megas => clk,
                       reset => reset,
                       clk_3megas => clk_3mhz,
                       en_2_cycles => en2_cycles,
                       en_4_cycles => en4_cycles);
U2: pwm port map(
                        clk_12megas => clk,
                        reset => reset,
                        en_2_cycles => en2_cycles and play_enable,
                        sample_in => sample_in,
                        sample_request => sample_request,
                        pwm_pulse => pwm_pulse
                       );
end Behavioral;
