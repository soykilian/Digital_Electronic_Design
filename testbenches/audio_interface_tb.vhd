----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2021 11:08:43 AM
-- Design Name: 
-- Module Name: audio_interface_tb - Behavioral
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

entity audio_interface_tb is
--  Port ( );
end audio_interface_tb;

architecture Behavioral of audio_interface_tb is
constant clk_period: time := 83.33 ns;
component audio_interface 
Port ( clk_12megas : in STD_LOGIC;
        reset : in STD_LOGIC;
--Recording ports
--To/From the controller
        record_enable: in STD_LOGIC;
        sample_out: out STD_LOGIC_VECTOR (sample_size-1 downto 0);
        sample_out_ready: out STD_LOGIC;
--To/From the microphone
        micro_clk : out STD_LOGIC;
        micro_data : in STD_LOGIC;
        micro_LR : out STD_LOGIC;
--Playing ports
--To/From the controller
        play_enable: in STD_LOGIC;
        sample_in: in std_logic_vector(sample_size-1 downto 0);
        sample_request: out std_logic;
--To/From the mini-jack
        jack_sd : out STD_LOGIC;
        jack_pwm : out STD_LOGIC);
        end component;
signal reset, clk, record_enable, micro_data, play_enable: std_logic;
signal sample_in : std_logic_vector(sample_size -1 downto 0);
--output signals--

begin
DUT : audio_interface port map (
                        record_enable => record_enable,
                        reset => reset,
                        clk_12megas => clk,
                        micro_data => micro_data,
                        play_enable => play_enable,
                        sample_in => sample_in,
                        micro_clk => open,
                        jack_sd => open,
                        jack_pwm => open,
                        sample_request => open,
                        micro_LR => open,
                        sample_out => open,
                        sample_out_ready => open
                        
                        );
clk_process : process 
begin
        clk <= '1';
        wait for clk_period/2;
        clk <= '0';
        wait for clk_period/2;
end process;

--input logics--

        
process
begin
        reset <= '1';
        play_enable <='1';
        record_enable <='1';
        micro_data <= '0';
        sample_in <= (others => '1');
        wait for 90 ns;
        reset <= '0';
        micro_data <= '1';
        sample_in <= (others => '0');
        wait for 10 us;
        sample_in <= (others => '1');
        micro_data <= '0';
        wait for 5 us;
        micro_data <= '1';
        sample_in <= (others => '0');
        wait for 2 us;
        micro_data<= '0';
        sample_in <= (others => '1');
        wait for 500 ns;
        sample_in <= "11010011";
        micro_data<= '1';
        wait for 50 ms;
        reset <= '1';
        wait for clk_period;
        reset <='0';
end process;



end Behavioral;