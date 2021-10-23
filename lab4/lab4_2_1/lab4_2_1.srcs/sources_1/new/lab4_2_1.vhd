----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2021 02:13:02 PM
-- Design Name: 
-- Module Name: lab4_2_1 - Behavioral
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

entity lab4_2_1 is
    Port ( d : in STD_LOGIC;
            clk : in STD_LOGIC;
           qa : out STD_LOGIC;
           qb : out STD_LOGIC;
           qc : out STD_LOGIC);
end lab4_2_1;

architecture Behavioral of lab4_2_1 is
component d_latch Port ( d : in STD_LOGIC;
                      clk : in STD_LOGIC;
                      qa: out STD_LOGIC);
end component;
component d_ff Port ( d : in STD_LOGIC;
                      clk : in STD_LOGIC;
                      qb: out STD_LOGIC);
end component;                     
component dn_ff Port ( d : in STD_LOGIC;
                         clk : in STD_LOGIC;
                         qc: out STD_LOGIC);
end component;
begin
U0 : d_latch port map( 
        d => d,
        clk => clk,
        qa => qa);

U1 : d_ff port map( 
        d => d,
        clk => clk,
        qb => qb);

U2 : dn_ff port map( 
        d => d,
        clk => clk,
        qc => qc);


end Behavioral;
