----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2021 13:21:33
-- Design Name: 
-- Module Name: filter_tb - Behavioral
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
use work.package_dsed.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity filter_tb is
--  Port ( );
end filter_tb;

architecture Behavioral of filter_tb is
constant clk_period : time := 83.33 ns;
component fir_implementation is
Port(
    clk : in std_logic;
    reset : in std_logic;
    c0 : in signed(sample_size -1 downto 0);
    c1 : in signed(sample_size -1 downto 0);
    c2 : in signed(sample_size -1 downto 0);
    c3 : in signed(sample_size -1 downto 0);
    c4 : in signed(sample_size -1 downto 0);
    x0 : in signed(sample_size -1 downto 0);
    x1 : in signed(sample_size -1 downto 0);
    x2 : in signed(sample_size -1 downto 0);
    x3 : in signed(sample_size -1 downto 0);
    x4 : in signed(sample_size -1 downto 0);
    y : out signed(sample_size - 1 downto 0)
    
);
end component;
signal clk, reset : std_logic;
signal c0, c1, c2, c3, c4, x0, x1,x2,  x3, x4, y : signed(sample_size - 1 downto 0);
begin

clk_process :process
        begin
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
            end process;
stimuli : process
                begin
                    reset <= '1';
                    wait for 100 ns;
                    reset <= '0';
                    c0 <= "00000000";
                    x0 <= "00000000";
                    c1 <= "00000001";
                    x1 <= "00000001";
                    c2 <= "00100010";
                    x2 <= "00000010";
                    c3 <= "00000011";
                    x3 <= "01000011";
                    c4 <= "00000100";
                    x4 <= "00000100";
                    wait;
                end process;
UUT : fir_implementation port map (
                        clk     => clk,
                        reset   => reset,
                        c0      => c0,
                        c1      => c1,
                        c2      => c2,
                        c3      => c3,
                        c4      => c4,
                        x0      => x0,
                        x1      => x1,
                        x2      => x2,
                        x3      => x3,
                        x4      => x4,
                        y       => y
                    );
end Behavioral;
