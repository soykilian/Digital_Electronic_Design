----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2021 01:38:00 PM
-- Design Name: 
-- Module Name: controller_tb - Behavioral
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

entity controller_tb is
--  Port ( );
end controller_tb;

architecture Behavioral of controller_tb is
constant clk_period: time := 10 ns;
component controller 
Port (
clk_100Mhz : in std_logic;
reset: in std_logic;
--To/From the microphone
micro_clk : out STD_LOGIC;
micro_data : in STD_LOGIC;
micro_LR : out STD_LOGIC;
--To/From the mini-jack
jack_sd : out STD_LOGIC;
jack_pwm : out STD_LOGIC
);
end component;
signal clk, rst, micro_data : std_logic;
signal micro_clk, micro_LR, jack_sd , jack_pwm: std_logic;
begin
process 
begin
        clk <= '1';
        wait for clk_period/2;
        clk <= '0';
        wait for clk_period/2;
end process;


process
begin
rst <= '1';
wait for 90 ns;
rst <= '0';
micro_data <= '1';
wait for 10 us;
micro_data <= '0';
wait for 5 us;
micro_data <= '1';
wait for 2 us;
micro_data<= '0';
wait for 500 ns;
micro_data<= '1';  
wait for 50 ms;
rst <= '1';
wait for clk_period;
rst <='0';
end process;
U2 : controller port map (
                    reset => rst,
                    clk_100Mhz => clk,
                    micro_data => micro_data,
                    micro_LR => micro_LR,
                    micro_clk => micro_clk,
                    jack_sd => jack_sd,
                    jack_pwm => jack_pwm);
         

end Behavioral;
