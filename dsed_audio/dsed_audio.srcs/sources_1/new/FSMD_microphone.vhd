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
type state is (idle, data1, data2, ready_dato1, ready_dato2, reg_dato1, reg_dato2, not_ready, cuenta_sum, new_cycle);
signal state_reg, state_next : state;
signal sample_out_reg, sample_out_next : STD_LOGIC_VECTOR (sample_size-1 downto 0);
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
            sample_out_reg <=  (others => '0');
        else
            state_reg <= state_next;
            fst_cycle_reg <= fst_cycle_next;
            dato1_reg <= dato1_next;
            dato2_reg <= dato2_next;
            cuenta_reg <= cuenta_next;
            sample_out_reg <= sample_out_next;
        end if;    
    end if;
end process;

--next state logic and data path --
process(state_reg, cuenta_reg, reset, fst_cycle_reg )
begin
state_next <= state_reg;
    case state_reg is
        when idle =>
            if(reset = '0') then
                if ((0 <= cuenta_next and cuenta_next <= 105) or (150 <= cuenta_next and cuenta_next <= 255)) then
                    state_next <= data1;
                 elsif (106 <= cuenta_next  and cuenta_next <= 149) then
                    state_next <= data2;
                 elsif (cuenta_reg = 299) then
                        state_next <= new_cycle;
                 else 
                        state_next <= cuenta_sum;
                end if;
            end if;
        when data2 =>
            state_next <= idle;
        when new_cycle =>
            state_next <= ready_dato1;
        when  cuenta_sum =>
            state_next <= ready_dato1;
         when ready_dato1 => 
            if (cuenta_reg = 256) then
                state_next <= reg_dato1;
            else
                state_next <= not_ready;
             end if;
        when others =>
            state_next <= idle;
        end case;      
end process;

Mealyprocess : process(state_reg, cuenta_reg, micro_data, fst_cycle_reg, dato1_reg, dato2_reg, sample_out_reg)
begin
dato1_next <= dato1_reg;
dato2_next <= dato2_reg;
sample_out_next <= sample_out_reg;
sample_out_ready <= '0';
    case state_reg is
        when idle =>
        when data1 =>
            if (micro_data = '1') then
                dato1_next <= dato1_reg + 1;
                dato2_next <= dato2_reg + 1;
            end if;
         when data2 =>
            if (micro_data = '1') then
                dato1_next <= dato1_reg + 1;
            end if;
            if (cuenta_reg = 106) then
                dato2_next <= (others => '0');
                if (fst_cycle_reg = '1') then
                    sample_out_ready <= enable_4_cycles;
                    sample_out_next <= std_logic_vector(dato2_reg);
                 end if;
            end if;
        when new_cycle =>
            if (micro_data = '1') then
                dato2_next <= dato2_reg + 1;
            end if;
        when ready_dato1 =>
            if(cuenta_reg = 256) then
                dato1_next <= (others => '0');
            end if;
        when others =>
        end case;
end process;

Moore_outpur : process(state_reg, cuenta_reg, dato1_reg, dato2_reg)
begin
cuenta_next <= cuenta_reg;
sample_out_next <= sample_out_reg;
sample_out_ready <= '0';
fst_cycle_next <= fst_cycle_reg;
    case state_reg is 
        when data1 =>
            cuenta_next <= cuenta_reg + 1;
         when data2 =>
            cuenta_next <= cuenta_reg + 1;
          when reg_dato1=>
              sample_out_next <= std_logic_vector(dato1_reg);
              sample_out_ready <= enable_4_cycles;
            when new_cycle =>
                cuenta_next <= (others => '0');
                fst_cycle_next <= '1';
            when cuenta_sum =>
                cuenta_next <= cuenta_reg + 1;
            when others =>
        end case;                  
end process;
sample_out <= sample_out_reg;
end Behavioral;
