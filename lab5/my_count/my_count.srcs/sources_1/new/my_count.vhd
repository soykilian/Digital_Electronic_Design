----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.10.2021 22:01:05
-- Design Name: 
-- Module Name: my_count - Behavioral
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

entity my_count is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           en : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (2 downto 0));
end my_count;

architecture Behavioral of my_count is
signal current_state, next_state : STD_LOGIC_VECTOR(2 downto 0);

begin
--next_state_logic
process(current_state)
begin
case current_state is 
    when "000" => next_state <= "001";
    when "001" => next_state <= "011";
    when "011" => next_state <= "101";
    when "101" => next_state <= "111";
    when "111" => next_state <= "010";
    when others => next_state <= "000";
end case;
end process;
--sequential process
process (clk)
begin
if rising_edge(clk) then
    if (rst = '1') then
        current_state <= (others =>'0');
     elsif (en = '1') then
        current_state <= next_state;
      end if;
 end if;
 
end process;
count <= current_state;

end Behavioral;
