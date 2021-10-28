----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.10.2021 12:52:19
-- Design Name: 
-- Module Name: multiple3 - Behavioral
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

entity multiple3 is
    Port ( a : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           out_mealy : out STD_LOGIC;
           out_moore : out STD_LOGIC);
end multiple3;

architecture Behavioral of multiple3 is
type state_type is (idle, n1, n2, n3);
signal state, next_state : state_type; 
begin
SYNC_PROC : process(clk)
begin 
    if rising_edge(clk) then
        if (rst = '1') then
            state <= idle;
        else
            state <= next_state;
        end if;
     end if;
end process;

NEXT_ST_PROCESS : process(state, clk)
begin
    case (state) is
        when idle =>
            if ( a = '1') then
                next_state <= n1;
             end if;
        when n1 =>
             if ( a = '1') then
                 next_state <= n2;
             end if;
         when n2 =>
            if (a = '1') then
                next_state <= n3;
            end if;
          when n3 => 
              next_state <= idle;
          end case;
end process;

--Mealy Output Logic--
process (state, a)
begin
out_mealy <= '0';
    case (state) is
        when idle =>
        when n1 =>
        when n2 =>
            if (a = '1') then
                out_mealy <= '1';
             end if;
        when n3 =>
     end case;
end process;

--Moore output logic--
MOORE_OUTPUT : process (state)
begin
out_moore<= '0';
    case (state) is
        when idle =>
        when n1 => 
        when n2 =>
        when n3 => 
            out_moore <= '1';
     end case;
end process;

end Behavioral;
