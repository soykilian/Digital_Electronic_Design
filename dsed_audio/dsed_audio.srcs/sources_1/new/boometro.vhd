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
        leds_out : out std_logic_vector(3 downto 0)
    );
end boometro;

architecture Behavioral of boometro is

signal level_reg, level_next : std_logic_vector(3 downto 0);
begin

clk_process: process(clk)
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
        if(audio_in ="00000000" ) then
            level_reg <= "0000";
        elsif(audio_in <="00000010" ) then
            level_reg <= "0001";
        elsif(audio_in <="00001000" ) then
             level_reg <= "0011";
        elsif(audio_in <="00100000" ) then
             level_reg <= "0111";
        else
            level_reg <= "1111";
        end if;
    end process;
    
end Behavioral;
