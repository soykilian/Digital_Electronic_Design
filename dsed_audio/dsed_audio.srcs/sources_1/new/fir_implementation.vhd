----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2021 16:21:00
-- Design Name: 
-- Module Name: fir_implementation - Behavioral
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

entity fir_implementation is
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
end fir_implementation;

architecture Behavioral of fir_implementation is
--registers--
signal r1_state, r1_next, r2_state, r2_next : signed(sample_size - 1 downto 0);
--register for the multiplicator--
signal r3_state, r3_next : signed(2 * sample_size - 1 downto 0);
--opperands obtained form the multiplexor logic--
signal m_res1, m_res2, m_res3 : signed(sample_size - 1 downto 0);
--signal for the adder output--
signal add : signed(sample_size -1 downto 0);
--ctrl signals
signal ctrl3_state, ctrl3_next: std_logic_vector(2 downto 0);
type state is (continue, reg_3, ctrl_res, reg_1);
signal state_reg, state_next : state; 

component mux8 is
Port(
    in_0 : IN signed(sample_size - 1 downto 0);
    in_1 : IN signed(sample_size - 1 downto 0);
    in_2 : IN signed(sample_size - 1 downto 0);
    in_3 : IN signed(sample_size - 1 downto 0);
    in_4 : IN signed(sample_size - 1 downto 0);
    in_5 : IN signed(sample_size - 1 downto 0);
    in_6 : IN signed(sample_size - 1 downto 0);
    ctrl : IN STD_LOGIC_VECTOR(2 downto 0);
    output : OUT signed(sample_size - 1 downto 0) 
);
end component;

begin
process (clk)
begin
    if rising_edge(clk) then
        if (reset = '1') then
            r1_state <= (others => '0');
            r2_state <= (others => '0');
            r3_state <= (others => '0');
            ctrl3_state <= (others => '0');
        else
         r1_state <= r1_next;
         r2_state <= r2_next;
         r3_state <= r3_next;
         ctrl3_state <= ctrl3_next;
         end if;
            end if;
end process;
ctrl3_next <= std_logic_vector(unsigned(ctrl3_state) + 1) when (ctrl3_state < "110") else (others => '0');
UUT_M1 : mux8 port map(
    in_0 => c0,
    in_1 => c1,
    in_2 => c2,
    in_3 => c3,
    in_4 => c4,
    in_5 => (others => '0'),
    in_6 => (others => '0'),
    output => m_res1,
    ctrl => ctrl3_state);
    
UUT_M2 : mux8 port map
        (in_0 => x0,
        in_1 => x1,
        in_2 => x2,
        in_3 => x3,
        in_4 => x4,
        in_5 => (others => '0'),
        in_6 => (others => '0'),
        output => m_res2,
        ctrl => ctrl3_state);
UUT_M3 : mux8 port map(
                in_0 => (others => '0'),
                in_1 => r3_state(2 * sample_size - 2 downto sample_size - 1),
                in_2 => r1_state,
                in_3 => add,
                in_4 => add,
                in_5 => add,
                in_6 => add,
                output => m_res3,
                ctrl => ctrl3_state);        

r3_next <= m_res1 * m_res2;
add <= r1_state + r2_state; --puede que haga falta un if
r1_next <= m_res3;
r2_next <= r3_state(2 * sample_size - 2 downto sample_size - 1);

end Behavioral;

