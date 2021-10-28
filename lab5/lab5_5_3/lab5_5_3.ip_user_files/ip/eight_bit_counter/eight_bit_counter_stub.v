// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct 28 12:45:05 2021
// Host        : DESKTOP-Q4GMU0O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/mv/Documents/DSED/Digital_Electronic_Design/lab5/lab5_5_3/lab5_5_3.srcs/sources_1/ip/eight_bit_counter/eight_bit_counter_stub.v
// Design      : eight_bit_counter
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *)
module eight_bit_counter(CLK, CE, SCLR, UP, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,UP,Q[7:0]" */;
  input CLK;
  input CE;
  input SCLR;
  input UP;
  output [7:0]Q;
endmodule
