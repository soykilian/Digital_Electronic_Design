----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2021 13:39:33
-- Design Name: 
-- Module Name: audio_interface - Behavioral
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

entity audio_interface is
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


end audio_interface;

architecture Behavioral of audio_interface is
component en_4_cycles is
Port ( clk_12megas : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_3megas: out STD_LOGIC;
    en_2_cycles: out STD_LOGIC;
    en_4_cycles : out STD_LOGIC);
end component;

component fsmd_microphone is
Port ( clk_12megas : in STD_LOGIC;
        reset : in STD_LOGIC;
        enable_4_cycles : in STD_LOGIC;
        micro_data : in STD_LOGIC;
        sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
        sample_out_ready : out STD_LOGIC);
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
--component clk_wiz_12 is
--Port ( clk_in1 : in std_logic;
  --      clk_out1 :out std_logic
--);
--end component;
--Intermediate signals--
signal en4_cycles, en2_cycles, clk_3mhz : std_logic;
signal enable_microphone, enable_pwm : std_logic;

begin
U1 : en_4_cycles port map(
           clk_12megas => clk_12megas,
           reset => reset,
           clk_3megas => clk_3mhz,
           en_2_cycles => en2_cycles,
           en_4_cycles => en4_cycles);
U2: fsmd_microphone port map (
            clk_12megas => clk_12megas,
            reset => reset,
            enable_4_cycles => enable_microphone,
            micro_data => micro_data,
            sample_out => sample_out,
            sample_out_ready => sample_out_ready
);
U3: pwm port map(
            clk_12megas => clk_12megas,
            reset => reset,
            en_2_cycles => enable_pwm,
            sample_in => sample_in,
            sample_request => sample_request,
            pwm_pulse => jack_pwm
);           
jack_sd <= '1';
micro_LR <= '1';
micro_clk <= clk_3mhz;
enable_microphone <= en4_cycles and record_enable;
enable_pwm <= en2_cycles and play_enable;
  
            
--);

end Behavioral;
