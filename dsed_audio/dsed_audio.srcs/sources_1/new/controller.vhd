----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2021 12:12:10 PM
-- Design Name: 
-- Module Name: controller - Behavioral
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

entity controller is
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
end controller;

architecture Behavioral of controller is
signal clk_12mg, rst : std_logic;
signal data_micro : std_logic_vector(sample_size - 1 downto 0);

component clk_wiz_12 is
Port ( clk_in1 : in std_logic;
       clk_out1 :out std_logic
);
end component;
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
        
--clk & reset signals--




begin
U1 : clk_wiz_12 port map(
            clk_in1 => clk_100Mhz,
            clk_out1 => clk_12mg);
U2 : audio_interface port map (
                    record_enable => '1',
                    reset => reset,
                    clk_12megas => clk_12mg,
                    micro_data => micro_data,
                    play_enable => '1',
                    sample_in => data_micro,
                    micro_clk => micro_clk,
                    jack_sd => jack_sd,
                    jack_pwm => jack_pwm,
                    sample_request => open,
                    micro_LR => micro_LR,
                    sample_out => data_micro,
                    sample_out_ready => open);


end Behavioral;
