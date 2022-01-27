----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2021 11:26:09 AM
-- Design Name: 
-- Module Name: pwm - Behavioral
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

entity pwm is
port(
clk_12megas: in std_logic;
reset: in std_logic;
en_2_cycles: in std_logic;
sample_in: in std_logic_vector(sample_size-1 downto 0);
sample_request: out std_logic;
pwm_pulse: out std_logic);
end pwm;

architecture Behavioral of pwm is
signal r_reg, r_next : unsigned(8 downto 0);
signal buf_reg, buf_next : std_logic;
signal sample_req_reg, sample_req_next: std_logic;
begin
    process (clk_12megas, reset)
    begin
        if(reset = '1') then
            r_reg <= (others => '0');
            buf_reg <= '0';
            sample_req_reg <= '0';
        elsif (rising_edge(clk_12megas)) then
            if (sample_req_reg = '1') then
                sample_req_reg <= '0';
             else
                sample_req_reg <= sample_req_next;
             end if;
            if(en_2_cycles = '1') then
                r_reg <= r_next;
                buf_reg <= buf_next;
             end if;
        end if;
        end process;
   process(r_reg, sample_in)
   begin
   sample_req_next <= '0';
   r_next <= r_reg + 1;
   buf_next <= '0';
    if (r_reg = 299)then
        sample_req_next <= '1';
        r_next <= (others => '0');
    end if;
    if (r_reg <  unsigned(sample_in) or unsigned(sample_in) = 0) then
        buf_next <= '1';
    end if;
    end process;
    pwm_pulse <= buf_reg; 
    sample_request <= sample_req_reg;
end Behavioral;
