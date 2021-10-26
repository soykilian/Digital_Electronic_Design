----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.10.2021 12:38:47
-- Design Name: 
-- Module Name: counter5_1 - Behavioral
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

entity counter5_1 is
    generic (COUNT_SIZE: integer :=8);
    Port ( clk : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (7 downto 0);
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           up_down : in STD_LOGIC);
end counter5_1;

architecture Behavioral of counter5_1 is
component one_sec_pulse is
    Port ( clk : in STD_LOGIC;
    reset : in STD_LOGIC;
   pulse : out STD_LOGIC);
   end component;
signal count : unsigned((COUNT_SIZE) - 1 downto 0);
signal pulse : std_logic;

begin
U1: one_sec_pulse port map 
( reset => rst,
    clk => clk,
    pulse => pulse);
process (pulse)
begin
    if (pulse'event and pulse = '1') then
        if ( en = '1' and up_down = '1') then
            if (count < 2**(COUNT_SIZE - 1)) then
                count <= count + 1;
            else
                count <= (others => '0');
            end if;
        elsif ( en = '1' and up_down = '0') then
            if(count > 0) then
                count <= count -1;
            else
                count <= (others => '1');
            end if;     
    end if;
    end if;
end process;
 s <= std_logic_vector(count);
end Behavioral;
