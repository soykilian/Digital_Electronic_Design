----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.10.2021 21:09:31
-- Design Name: 
-- Module Name: fourbit_counter - Behavioral
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

entity fourbit_counter is
    Port ( en : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (6 downto 0));
end fourbit_counter;

architecture Behavioral of fourbit_counter is
component clk_5MHz port (
        clk_in1 : in std_logic;
        reset : in std_logic;
        locked : out std_logic;
        clk_out1 : out std_logic);
        end component;
component c_counter_binary_0 port (
            CLK : IN STD_LOGIC;
            THRESH0 : OUT STD_LOGIC;
            Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
          );
          end component;
signal clk_med, locked, threshold  : std_logic;
signal q_out : std_logic_vector(3 downto 0);
              
begin
UU1: clk_5MHz port map  (
            clk_in1 => clk,
            reset => rst,
            locked => locked,
            clk_out1 => clk_med);
            
UU2 : c_counter_binary_0 port map (
            CLK => clk_med,
            THRESH0 => threshold,
            Q => q_out);
process (q_out)
begin
case q_out is 
    when "0000" => count <= "0000001";
    when "0001" => count <= "1001111";
    when "0010" => count <= "0010010";
    when "0011" => count <= "0000110";
    when "0100" => count <= "1001100";
    when "0101" => count <= "0100100";
    when "0110" => count <= "0100000";
    when "0111" => count <= "0001111";
    when "1000" => count <= "0000100";
    when "1001" => count <= "0000001";
    when others => count <= "1000000";
    end case;
    
end process;
    

end Behavioral;
