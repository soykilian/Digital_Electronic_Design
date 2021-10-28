-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Oct 28 10:26:45 2021
-- Host        : DESKTOP-Q4GMU0O running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mv/Documents/dsde/lab5/lab5_5_3/lab5_5_3.srcs/sources_1/ip/eight_bit_counter/eight_bit_counter_stub.vhdl
-- Design      : eight_bit_counter
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_bit_counter is
  Port ( 
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    UP : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end eight_bit_counter;

architecture stub of eight_bit_counter is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,CE,UP,Q[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_10,Vivado 2017.2";
begin
end;
