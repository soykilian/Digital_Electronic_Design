----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2021 12:31:43
-- Design Name: 
-- Module Name: mem_tb - Behavioral
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

entity mem_tb is
--  Port ( );
end mem_tb;

architecture Behavioral of mem_tb is
--component clk_wiz_12 is
--Port(
--clk_in1 : in std_logic;
--clk_out1 : out std_logic;
--);
--end component;
constant clk_period : time := 83.33 ns;
component blk_mem_gen_0 is 
Port (
clka : IN STD_LOGIC;
ena : IN STD_LOGIC;
wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end component;
signal clk: std_logic := '0';
signal data_in : std_logic_vector(sample_size - 1 downto 0) :=  (others=> '0');
signal addres : std_logic_vector(18 downto 0):= (others => '0');
signal en: std_logic := '0';
signal wen : std_logic_vector(0 downto 0) := "0";
signal output : std_logic_vector(sample_size -1 downto 0);
begin
clk <= not clk after clk_period/2;
stimuli : process
begin
    en <= '1';
    wait for 200 ns;
    wen <= "1";
    wait for 200 ns;
    data_in <= "00110011";
    addres <= "1100000010110011010";
    wait for 200 ns;
    data_in <= "01001011";
    addres <= "0000000000000010000";
    wait for 200 ns;
    wen <= "0";
    wait for 200 ns;
    addres <= "1100000010110011010";
    wait for 200 ns;
    addres <= "0000000000000010000";
    wait for 200 ns;
    en <= '0';
    wait;   
end process;

UUT_ram : blk_mem_gen_0 port map(
    clka => clk,
    ena => en,
    wea => WEN,
    addra => addres,
    dina => data_in,
    douta => output);
    

end Behavioral;
