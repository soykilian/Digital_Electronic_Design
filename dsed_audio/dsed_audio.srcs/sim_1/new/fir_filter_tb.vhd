----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2021 11:53:23
-- Design Name: 
-- Module Name: fir_filter_tb - Behavioral
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

entity fir_filter_tb is
--  Port ( );
end fir_filter_tb;

architecture Behavioral of fir_filter_tb is

    component fir_filter port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        sample_in : in signed (sample_size-1 downto 0);
        sample_in_enable : in STD_LOGIC;
        filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
        sample_out : out signed (sample_size-1 downto 0);
        sample_out_ready : out STD_LOGIC);
    end component;
    
    signal clk              : std_logic := '0';
    signal reset            : std_logic;
    signal sample_in        : signed (sample_size-1 downto 0);
    signal sample_in_enable : std_logic;
    signal filter_select    : std_logic;
    signal sample_out       : signed (sample_size-1 downto 0);
    signal sample_out_ready : std_logic;
    
    constant clk_period : time := 83 ns;
    
begin

    -- Clock generation
    clk <= not clk after clk_period/2;
  
    stimuli : process
    begin
        reset <= '1';
        wait for 113 ns;
        reset <= '0';
        filter_select <= '0';
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "01111111";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        -----------------------------
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "11111111";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        -----------------------------
                sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "10000001";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        ---------------------------------
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        
        sample_in_enable <= '1';
        sample_in <= "00000000";
        wait for clk_period;
        sample_in_enable <= '0';
        wait for 1500ns;
        wait;
        end process;
    ff :   fir_filter
        port map (
            clk                 => clk,
            reset               => reset,
            sample_in           => sample_in,
            sample_in_enable    => sample_in_enable,
            filter_select       => filter_select,
            sample_out          => sample_out,
            sample_out_ready    => sample_out_ready
        );
        

end Behavioral;
