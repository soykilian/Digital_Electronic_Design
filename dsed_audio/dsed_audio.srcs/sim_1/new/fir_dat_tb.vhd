----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2021 12:37:22 PM
-- Design Name: 
-- Module Name: fir_dat_tb - Behavioral
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
-- COmo sample in enable lo puse con el reloj entonces nunca pilla clk event junto con sample in enable = '1' por lo que no se carga las entradas en nignun momento
--- arregla la generacion de enable reina

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use work.package_dsed.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fir_dat_tb is
--  Port ( );
end fir_dat_tb;

architecture Behavioral of fir_dat_tb is
-- Clock signal declaration
signal clk : std_logic := '1';
signal reset            : std_logic := '0';
signal sample_in_enable : std_logic := '1';
-- Declaration of the reading signal
signal Sample_In : signed(7 downto 0) := (others => '0');
signal filter_select    : std_logic := '0';
signal sample_out       : signed (7 downto 0);
signal sample_out_ready : std_logic;
signal counter_state, counter_next : unsigned(2 downto 0):= (others => '0');

signal con : std_logic := '1';
FILE out_file : text;
-- Clock period definitions
signal sample_out_ml : integer ;
constant clk_period : time := 167 ns;
    component fir_filter port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    sample_in : in signed (sample_size-1 downto 0);
    sample_in_enable : in STD_LOGIC;
    filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
    sample_out : out signed (sample_size-1 downto 0);
    sample_out_ready : out STD_LOGIC);
end component;
BEGIN
-- Clock statement
clk <= not clk after clk_period/2;
read_process : PROCESS (clk)
FILE in_file : text OPEN read_mode IS "C:/Users/dsed/DSED_6/Digital_Electronic_Design/dsed_audio/sample_in.dat";
VARIABLE in_line : line;
VARIABLE in_int : integer;
VARIABLE in_read_ok : BOOLEAN;
BEGIN
if (clk'event and clk = '1') then
if NOT endfile(in_file) then
if (sample_in_enable = '1')then
ReadLine(in_file,in_line);
Read(in_line, in_int, in_read_ok);
sample_in <= to_signed(in_int, 8);
end if; -- 8 = the bit width
else
assert false report "Simulation Finished" severity failure;
end if;
end if;
end process;
write_process : process(sample_out_ready, filter_select)
variable out_line : line;
begin
if (con = '1')then 
if (filter_select='0') then
    file_open(out_file,"C:/Users/dsed/DSED_6/Digital_Electronic_Design/dsed_audio/sample_out_lp.dat", write_mode);
else
    file_open(out_file,"C:/Users/dsed/DSED_6/Digital_Electronic_Design/dsed_audio/sample_out_hp.dat", write_mode);
end if;
end if;
con <= '0';
if (sample_out_ready'event and sample_out_ready = '1') then
    sample_out_ml <= to_integer(sample_out);
    write(out_line, sample_out_ml);
    writeline(out_file, out_line);
    end if;
end process;
stimuli : process
begin
    reset <= '1';
    wait for 20 ns;
    reset <= '0';
    wait;
    end process;
enable : process (clk)
begin
if (rising_edge(clk)) then
    counter_state <= counter_next;
end if;
end process;
sample_in_enable <= '1' when (counter_state = 7) else '0';
counter_next <= "000" when(counter_state = 7) else counter_state + 1; 
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
