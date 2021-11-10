----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2021 12:36:08
-- Design Name: 
-- Module Name: FSMD_microphone - Behavioral
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

entity FSMD_microphone is
Port ( clk_12megas : in STD_LOGIC;
        reset : in STD_LOGIC;
        enable_4_cycles : in STD_LOGIC;
        micro_data : in STD_LOGIC;
        sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
        sample_out_ready : out STD_LOGIC);

--  Port ( );
end FSMD_microphone;

architecture Behavioral of FSMD_microphone is
signal dato1_reg, dato1_next, dato2_reg, dato2_next : unsigned(sample_size - 1 downto 0);
signal cuenta_reg, cuenta_next : unsigned(8 downto 0);
signal fst_cycle_reg, fst_cycle_next : std_logic;
begin
clk_process : process(clk_12megas)
begin
    if rising_edge(clk_12megas) then
        if (reset = '1') then
            cuenta_reg <= (others=>'0');
            dato1_reg <= (others=>'0');
            dato2_reg <= (others=>'0');
            fst_cycle_reg <= '0';
        else
            cuenta_reg <= cuenta_next;
            dato1_reg <= dato1_next;
            dato2_reg <= dato2_next;
            fst_cycle_reg <= fst_cycle_next;    
        end if;    
    end if;
end process;

--next state logic and data path --
process(micro_data, cuenta_reg, fst_cycle_reg)
begin 
if ((0 <= cuenta_reg and cuenta_reg <= 105) or (150 <= cuenta_reg and cuenta_reg <= 255)) then 
    cuenta_next <= cuenta_reg + 1;
    if (micro_data = '1') then
        dato1_next <= dato1_reg + 1;
        dato2_next <= dato2_reg + 1;
    end if;
elsif (106 <= cuenta_reg and cuenta_reg <= 149) then
    cuenta_next <= cuenta_reg + 1;
    if (micro_data = '1') then
            dato1_next <= dato1_reg + 1;
    end if;
    if (fst_cycle_reg = '1' and cuenta_reg = 106) then
        sample_out <= std_logic_vector(dato2_reg);
        dato2_next <= (others => '0');
        sample_out_ready <= enable_4_cycles;
    else
        sample_out_ready <= '0';
    end if;
else 
    if (cuenta_reg = 299) then
        cuenta_next <= (others =>'0');
        fst_cycle_next <= '1';
     else
        cuenta_next <= cuenta_reg + 1;
     end if;
     if (micro_data = '1') then
        dato2_next <= dato2_reg + 1;
     end if;
     
     if (cuenta_reg = 256) then 
        sample_out <= std_logic_vector(dato1_reg);     
        dato1_next <= (others => '0');
        sample_out_ready <= enable_4_cycles;    
     else
        sample_out_ready <= '0';
     end if;
end if;
end process;
end Behavioral;
