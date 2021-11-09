----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2021 19:26:21
-- Design Name: 
-- Module Name: multipleX - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multipleX is
generic (module : integer:=3);
Port ( clk : in STD_LOGIC;
        start : in STD_LOGIC;
        finish : in STD_LOGIC;
        A : in STD_LOGIC;
        out_mealy : out STD_LOGIC;
        out_moore : out STD_LOGIC);
end multipleX;

architecture Behavioral of multipleX is
type state_type is (idle, operation);
signal state_reg, state_next: state_type;
signal n_state, n_next : integer := module;
begin
process(clk)
begin
if rising_edge(clk) then
    state_reg <= state_next;
    n_state <= n_next;
    end if;
end process; 

--next state logic--
process(start, finish, state_reg, a, n_state)
begin
state_next <= idle;
n_next <= n_state;
case state_reg is
    when idle =>
    if (start = '1') then
        n_next <= module;
        state_next <= operation;
    end if;
    when operation =>
     if (finish = '1') then
        state_next <= idle;
     else
        if (a = '1') then 
            if (n_state = 1) then
                n_next <= module;
            else
                n_next <= n_state - 1;
            end if;
         end if;
     end if;
     state_next <= operation;
     end case;
 end process;    
 
  -- mealy_output logic--
  process(state_reg, n_state, a, start)
 begin
 out_mealy <= '0';
 case state_reg is
 when idle =>
    if (start = '1') then
        out_mealy <= '1';
       end if;
 when  operation =>
    if (a = '0' and n_state = module) then
        out_mealy <= '1';
    elsif (a = '1' and n_state = 1) then
        out_mealy <= '1';
        
     end if;
     end case;
     end process;
     
--moore_output logic--
process(state_reg, n_state)
begin
out_moore <= '0';
case state_reg is
when idle =>
    out_moore <= '0';
when operation =>
    if (n_state = module) then
          out_moore <= '1';
       end if;
      end case;
end process;
end Behavioral;
