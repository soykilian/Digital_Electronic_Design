----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2021 13:17:10
-- Design Name: 
-- Module Name: fsmd_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsmd_tb is
--  Port ( );
end fsmd_tb;

architecture Behavioral of fsmd_tb is
constant clk_period : time := 83.33 ns;
component fsmd_microphone is
Port ( clk_12megas : in STD_LOGIC;
        reset : in STD_LOGIC;
        enable_4_cycles : in STD_LOGIC;
        micro_data : in STD_LOGIC;
        sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
        sample_out_ready : out STD_LOGIC);
end component;
signal micro_data, clk, enable_4_cycles, reset: std_logic;
--output signals--
signal sample_data : std_logic_vector(sample_size - 1 downto 0);
signal sample_out_ready : std_logic;
begin
     
 clk_process :process
            begin
                clk <= '0';
                wait for clk_period/2;
                clk <= '1';
                wait for clk_period/2;
            end process;
            process
            begin
            reset <= '1';
            wait for 90 ns;
            micro_data <= '1';
            reset <= '0';
            enable_4_cycles <= '0';
            wait for 900 ns;
            enable_4_cycles <= '1';
            wait for 50 ms;
            reset <= '1';
            wait for clk_period;
            reset <='0';
            end process;
            
U1 : fsmd_microphone port map (
                clk_12megas => clk,
                micro_data => micro_data,
                reset => reset,
                enable_4_cycles => enable_4_cycles,
                sample_out => sample_data,
                sample_out_ready => sample_out_ready
);
end Behavioral;
