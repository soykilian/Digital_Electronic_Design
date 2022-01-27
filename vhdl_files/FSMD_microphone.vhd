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
end FSMD_microphone;

architecture Behavioral of FSMD_microphone is
type state is (data1, data2, continue);
signal state_reg, state_next : state;
signal sample_out_reg, sample_out_next : STD_LOGIC_VECTOR (sample_size-1 downto 0);
signal sample_out_ready_reg, sample_out_ready_next: std_logic;
signal dato1_reg, dato1_next, dato2_reg, dato2_next : unsigned(sample_size - 1 downto 0);
signal cuenta_reg, cuenta_next, cuenta_act : unsigned(8 downto 0);
signal fst_cycle_reg, fst_cycle_next : std_logic;
begin
clk_process : process(clk_12megas, enable_4_cycles)
begin
    if rising_edge(clk_12megas) then
        if (reset = '1') then
            cuenta_reg <= (others=>'0');
            dato1_reg <= (others=>'0');
            dato2_reg <= (others=>'0');
            fst_cycle_reg <= '0';
            sample_out_reg <=  (others => '0');
            state_reg <= continue;
        elsif (enable_4_cycles = '1') then
            state_reg <= state_next;
            fst_cycle_reg <= fst_cycle_next;
            dato1_reg <= dato1_next;
            dato2_reg <= dato2_next;
            cuenta_reg <= cuenta_next;
            sample_out_reg <= sample_out_next;
        end if;    
    end if;
end process;
cuenta_act <= cuenta_next;
--next state logic and data path --
process(state_reg, cuenta_reg, fst_cycle_reg )
begin
state_next <= state_reg;
    case state_reg is
    when continue =>
        if (cuenta_reg = 104) then
            state_next <= data2;
        elsif ( cuenta_reg = 255) then
            state_next <= data1;
        end if;
     when  data2 =>
        if (cuenta_reg = 149) then
            state_next <= continue;
        end if;
      when data1 =>
        if (cuenta_reg = 299) then
            state_next <= continue;
        end if;
        
    end case;
    end process;
  

    
Mealyprocess : process(state_reg, cuenta_reg, micro_data, fst_cycle_reg, dato1_reg, dato2_reg, sample_out_reg, enable_4_cycles, cuenta_act)
begin
dato1_next <= dato1_reg;
dato2_next <= dato2_reg;
sample_out_next <= sample_out_reg;
sample_out_ready_reg <= '0';

cuenta_next <= cuenta_reg + 1;
fst_cycle_next <= fst_cycle_reg;
    case state_reg is
        when continue =>
            if (micro_data = '1') then
                dato1_next <= dato1_reg + 1; 
                dato2_next <= dato2_reg + 1; 
            end if;
            if (cuenta_act = 256) then
                sample_out_next <= std_logic_vector(dato1_reg);
                --sample_out <= std_logic_vector(dato1_reg);
                dato1_next <= (others => '0');
                sample_out_ready_reg <= enable_4_cycles;
            else
                sample_out_ready_next <= '0';
            end if;
            when data1 =>
            if (cuenta_reg = 299) then
                fst_cycle_next <= '1';
                cuenta_next <= (others => '0');
            else
            
                cuenta_next <= cuenta_reg + 1;
            end if;
            if (micro_data = '1') then
                dato2_next <= dato2_reg + 1;
            end if;
         when data2 =>
            if (micro_data = '1') then
                dato1_next <= dato1_reg + 1;
            end if;
            if (cuenta_act = 106) then
                dato2_next <= (others => '0');
                if (fst_cycle_reg = '1') then
                    sample_out_next <= std_logic_vector(dato2_reg);
                    sample_out_ready_reg <= enable_4_cycles;
                 end if;
            end if;
    end case;
end process;
sample_out <= sample_out_reg;
sample_out_ready <= sample_out_ready_reg;
end Behavioral;
