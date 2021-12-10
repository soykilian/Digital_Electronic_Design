----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2021 11:12:43
-- Design Name: 
-- Module Name: ctrl_fsm - Behavioral
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

entity ctrl_fsm is
Port (
clk : in std_logic;
reset: in std_logic;
sample_in_enable : in std_logic;
ctrl3 : out std_logic_vector(2 downto 0);
sample_out_ready : out std_logic 
);
end ctrl_fsm;

architecture Behavioral of ctrl_fsm is
    type state is (idle, s_0, s_1, s_2, s_3, s_4, s_5, s_6);
    signal state_reg, state_next : state;
    
begin
process (clk)
begin
    if (rising_edge(clk)) then
        if (reset = '1') then
            state_reg <= idle;
        else 
            state_reg <= state_next;
        end if;
    end if;
end process;

--next state & output logic --
PROC : process (state_reg, sample_in_enable)
begin
state_next <= idle;
sample_out_ready <= '0';
ctrl3 <= (others => '0');
case state_reg is 
    when idle =>
        if (sample_in_enable = '1') then
            state_next <= s_0;
        end if;
    when s_0 =>
        ctrl3 <= "000";
        state_next <= s_1;
    when s_1 =>
        ctrl3 <= "001";
        state_next <= s_2;
    when s_2 =>
        ctrl3 <= "010";
        state_next <= s_3;
    when s_3 =>
        ctrl3 <= "011";
        state_next <= s_4;
    when s_4 => 
        ctrl3 <= "100";
        state_next <= s_5;
    when s_5 =>
        ctrl3 <= "101";
        state_next <= s_6;
    when s_6 =>
        state_next <= s_0;
        ctrl3 <= "110";
        sample_out_ready <= '1';
    end case;    
end process;
end Behavioral;
