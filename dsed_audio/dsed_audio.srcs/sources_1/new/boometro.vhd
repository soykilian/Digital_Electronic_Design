----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2021 13:11:09
-- Design Name: 
-- Module Name: boometro - Behavioral
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

entity boometro is
    Port ( 
        clk : in std_logic;
        audio_in : in std_logic_vector(sample_size-1 downto 0);
        reset : in std_logic;
        enable : in std_logic;
        leds_out : out std_logic_vector(14 downto 0)
    );
end boometro;

architecture Behavioral of boometro is

signal level_reg, level_next : std_logic_vector(14 downto 0);
begin

clk_process: process(clk, audio_in)
    begin
        if (rising_edge(clk)) then        
            if(reset = '1') then
                leds_out <= (others=>'0');
            else
                if (enable='1') then
                    leds_out <= level_reg;
                 
                end if;
                
            end if;
        end if;
    end process;

level_process : process(audio_in)
   begin
    if (audio_in >= "10110100") then
        level_reg <=  "111111111111111";
   elsif (audio_in >= "10101110") then --174
        level_reg <= "011111111111111";
    elsif (audio_in >= "10101000") then --168
        level_reg <= "001111111111111";
    elsif (audio_in >= "10100010") then --162
        level_reg <= "000111111111111";
    elsif (audio_in >= "10011100") then --156
        level_reg <=  "000011111111111";
    elsif (audio_in >= "10010110") then --150
        level_reg <= "000001111111111";
    elsif (audio_in >= "10010000") then --144
        level_reg <= "000000111111111";
    elsif (audio_in >= "10001010") then --138
        level_reg <= "000000011111111";
    elsif (audio_in >= "10000100") then --132
        level_reg <= "000000001111111";
    elsif (audio_in >="01111110") then --126
        level_reg<="000000000111111";
    elsif (audio_in >= "01111000") then --120
        level_reg<="000000000011111";
    elsif (audio_in >= "01110010") then--114
        level_reg <= "000000000001111";
    elsif (audio_in >= "01101100") then --108
    level_reg <="000000000000111";
    elsif (audio_in >= "01100110") then  --102
    level_reg <="000000000000011";
    elsif (audio_in >= "01100000") then --96
    level_reg <="000000000000001";
    else
    level_reg <= "000000000000000";
    end if;

    end process;
    
end Behavioral;
