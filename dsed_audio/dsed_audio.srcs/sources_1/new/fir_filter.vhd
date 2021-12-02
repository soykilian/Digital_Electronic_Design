----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2021 16:08:39
-- Design Name: 
-- Module Name: fir_filter - Behavioral
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

entity fir_filter is
Port ( clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Sample_In : in signed (sample_size - 1 downto 0);
    Sample_In_enable : in STD_LOGIC;
    filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
    Sample_Out : out signed (sample_size-1 downto 0);
    Sample_Out_ready : out STD_LOGIC);
end fir_filter;

architecture Behavioral of fir_filter is
component fir_implementation 
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
    ctrl : in std_logic_vector(2 downto 0);
    y : out signed(sample_size - 1 downto 0)
);
end component;
component  ctrl_fsm
Port (
clk : in std_logic;
reset: in std_logic;
sample_in_enable : in std_logic;
ctrl3 : out std_logic_vector(2 downto 0);
sample_out_ready : out std_logic 
);
end component;

--intermediate signals--
signal ctrl_sig : std_logic_vector(2 downto 0);
--coeficientes para el filtro dependiendo de filter select--
signal c_0, c_1, c_2, c_3, c_4 : signed(sample_size - 1 downto 0);
signal x_0, x_1, x_2, x_3, x_4 : signed(sample_size - 1 downto 0);
 
begin
process(clk, sample_in_enable)
begin
    if (rising_edge(clk)) then
        if (reset = '1') then
            x_0 <= (others => '0');
            x_1 <= (others => '0');
            x_2 <= (others => '0');
            x_3 <= (others => '0');
            x_4 <= (others => '0');
         else
            if (sample_in_enable = '1') then
            x_0 <= Sample_In;
            x_1 <= x_0;
            x_2 <= x_1;
            x_3 <= x_2;
            x_4 <= x_3;
            end if;
         end if;
    end if;
end process;

--select the filter coeficients --
process (filter_select)
begin
    if (filter_select = '1') then
        c_0 <= c0lp;
        c_1 <= c1lp;
        c_2 <= c2lp;
        c_3 <= c3lp;
        c_4 <= c4lp;
    else
        c_0 <= c0hp;     
        c_1 <= c1hp;     
        c_2 <= c2hp;     
        c_3 <= c3hp;     
        c_4 <= c4hp;
    end if;
end process;
UUT_fsm: ctrl_fsm
port map (
        clk => clk,
        reset => reset,
        sample_in_enable => Sample_In_enable,
        ctrl3 => ctrl_sig,
        sample_out_ready =>  Sample_Out_ready
);

UUT_data_route : fir_implementation
port map(
        clk => clk,
        reset => reset,
        c0 => c_0,
        c1 => c_1,
        c2 => c_2,
        c3 => c_3,
        c4 => c_4,
        x0 => x_0,
        x1 => x_1,
        x2 => x_2,
        x3 => x_3,
        x4 => x_4,
        ctrl => ctrl_sig,
        y => Sample_Out);

end Behavioral;
