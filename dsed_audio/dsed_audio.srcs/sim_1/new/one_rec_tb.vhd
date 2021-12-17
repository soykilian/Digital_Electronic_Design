----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2021 12:12:45
-- Design Name: 
-- Module Name: one_rec_tb - Behavioral
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

entity one_rec_tb is
--  Port ( );
end one_rec_tb;


architecture Behavioral of one_rec_tb is
component global_controller 
Port (
    clk_sys : in STD_LOGIC;
    reset : in STD_LOGIC;  -- BTNU
    clear : in STD_LOGIC; -- BTNC
    rec_enable : in STD_LOGIC; -- BNTL
    play_enable : in STD_LOGIC;  -- BNTR
    fil_on : in STD_LOGIC; -- SW1
    s_type : in STD_LOGIC; --SW0
    micro_clk : out STD_LOGIC;
    micro_data : in STD_LOGIC;
    micro_LR : out STD_LOGIC;
    --To/From the mini-jack
    jack_sd : out STD_LOGIC;
    jack_pwm : out STD_LOGIC;
    ready : out STD_LOGIC  --led for waiting NOP
);
end component;


signal clk,rst, micro_data,rec_en, play_en, clear: std_logic := '0';

constant clk_period : time := 10 ns;
signal micro_clk, micro_LR, jack_sd, jack_pwm, ready : std_logic := '0';
signal fil_on, s_type : std_logic := '0';
begin
clk <= not clk after clk_period/2;
stimuli : process
begin
rst <= '1';
wait for 90 ns;
rst <= '0';
micro_data <= '0';
rec_en <= '1';
wait for 500 us;
micro_data <= '1';
wait for 500 us;
rec_en <= '0';
wait for 20 us;
rec_en <= '1';
micro_data <= '0';
wait for 50 us;
micro_data <= '1';
wait for 10 us;
micro_data <= '0';
wait for 80 us;
micro_data <= '1';
wait for 45 us;
rec_en <= '0';
wait for 50 us;
play_en <= '1';
wait for 300 us;
play_en <= '0';
wait for 2 us;
play_en <= '1';
s_type <= '1';
wait for  250 us;
s_type <= '0';
wait for 200 us;
play_en <= '0';
wait;
end process;

U1 : global_controller port map (
    clk_sys => clk, 
    reset => rst,
    clear => clear,
    fil_on => fil_on,
    s_type => s_type,
    rec_enable => rec_en,
    play_enable => play_en,
    micro_data => micro_data,
    micro_LR => micro_LR,
    micro_clk => micro_clk,
    jack_sd => jack_sd,
    jack_pwm => jack_pwm,
    ready => ready);
    
    
end Behavioral;
