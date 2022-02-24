----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2021 14:23:49
-- Design Name: 
-- Module Name: boometro_tb - Behavioral
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

entity boometro_tb is
--  Port ( );
end boometro_tb;

architecture Behavioral of boometro_tb is
component boometro is Port ( 
        clk : in std_logic;
        audio_in : in std_logic_vector(sample_size-1 downto 0);
        reset : in std_logic;
        enable : in std_logic;
        leds_out : out std_logic_vector(3 downto 0)
    );
end component;

constant clk_period : time := 8.333 ns;

signal clock, rst, en : std_logic;
signal s_audio_in : std_logic_vector(sample_size-1 downto 0);
signal s_leds : std_logic_vector(3 downto 0);

begin

clk_process :process
        begin
            clock <= '0';
            wait for clk_period/2;
            clock <= '1';
            wait for clk_period/2;
end process;

stimuli : process
    begin
        rst <= '1';
     wait for 10 ns;
        rst <= '0';
        en <= '1';
        s_audio_in <= "00000000";
     wait for 10 ns;
        s_audio_in <= "00000001";
     wait for 10 ns;
        s_audio_in <= "00000010";
     wait for 10 ns;
        s_audio_in <= "00000100";
     wait for 10 ns;
        s_audio_in <= "00001000";
    wait for 10 ns;
        s_audio_in <= "00010000";
    wait for 10 ns;
        s_audio_in <= "00100000";
    wait for 10 ns;
        s_audio_in <= "01000000";
    wait for 10 ns;
        s_audio_in <= "10000000";
        rst <= '0';

             
end process;
                
            
U1 : boometro port map(
        clk => clock,
        audio_in => s_audio_in,
        reset => rst,
        enable => en,
        leds_out => s_leds
        );
        
        
end Behavioral;


entity boometro_tb is
--  Port ( );
end boometro_tb;

architecture Behavioral of boometro_tb is

begin


end Behavioral;
