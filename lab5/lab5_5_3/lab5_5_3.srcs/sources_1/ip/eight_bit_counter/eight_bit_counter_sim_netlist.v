// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct 28 12:45:05 2021
// Host        : DESKTOP-Q4GMU0O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/mv/Documents/DSED/Digital_Electronic_Design/lab5/lab5_5_3/lab5_5_3.srcs/sources_1/ip/eight_bit_counter/eight_bit_counter_sim_netlist.v
// Design      : eight_bit_counter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "eight_bit_counter,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module eight_bit_counter
   (CLK,
    CE,
    SCLR,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  eight_bit_counter_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module eight_bit_counter_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  eight_bit_counter_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
l1NG3g81+vM8a/OECNXckQ6Ih+534PcHu9If3GBzfNiHrQt4ZqWyOCmUfR9HBrKJ6dazleZpBLLQ
VkjiEZOvOw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z0LH98ijrG2zSKQ428sLNLNN8LOYW53zGTr9NWQ16ZrFJS/8H+Sypz2sLY7sCYpj+gN48UB+J20x
PvOEIxFZVPZNmhrcvIxztIiTduaVtyypOS3Jx8r3YE6fOwVJrfZ9eXRQUIdKvbN0bVZFUcjZ2HOu
2IHyG/UIDoelWrgO0GY=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QNC1y7mnDIW3BeoEUG5xtIOyuA9VVC6sNeWDOT6S5qoB4e5s9LHwLIGpByH8Fz0PGaafc2Pp1LqC
lzXnevLntdeO+Pz1NMCI4Ojicg8oWhR3msMyGBNzheYZMtUoYnT2zC0eafrxC+G2D8yNbUPHtf++
Y0MP0FYlKg8jJhDSX3w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bRemsiwW6AApgQWC90BqiBlMFD2jEWM37Ph/oR3/T151pMQpEWD3gu3SGbUebLL6tc97cE/PgSCy
KS0n/kkTjP8yz3D6tbz01kj9QAWvzzWfukcjy4U1p/TuuIIUFcvoH/P+MznfeFrHL11ZwDgOg40p
h2VhrJPIbdfbr6mfhPFTBuWKYDGmQfgZeWyn7BSTLS+wvNUS+AvTJnaPj6O9Szcq/v+sphPqX1F0
wfrQOmRJVSa2EfFZxZ1m3+2NmDfYPFsxF203jiTh4pJ8JuezHfzsaK6jbmB9h7QKD6yMUsYRx/O3
idyz3Inko4ZzfMIyZuEPWm6TSA5xk5DeltwcSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSXl52RB2cLbPW8z4SvG8lZpaZT78HIOf6Q3fEiSBBQziVQn5oJPSJW8PdmH2pB/aVZpPeDnm2a
hpp7ddkUsyA+NHykeuxUJfwhWYhyemZLGnSdZXVpbaOhu0TLJiOtAVsDmRdPFs7q6CpwvvPImbuY
YK29r9Mw8w6ATmDgWgWs+wefEAeKjvUWKQmUr9SKi88H0j+hCCdtMoYZnO8+mjtjWlqm6U7NqCPr
K58IyvSojGlh7czWW8xHzOdgUBj872QexFBFCXAZ3caYI+I5tgzbPak7R4g1nHKG2e2HAjefrx2S
bXb3PhWqaTkKbnVCol5mWJuxPclCBxrEtqSjug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cz5g65hbB8shmQPsohjzVr+SPRr5lrGQqqziYjnrsCWqDM27xVRVWn5/2voSXHOso9pm8+P7GN+L
Mz6Nn/qXS+pi/muryE2WEZ1r1ya1OKX8h7vIWuyvbtfcgSkvPQb+oNRpZXNONTBmmBFus8k0rin2
VJPxBV5qCpoPGWDVS1QCTJ852TyqzdEMM2h/x7mD8lHifZIkjoWi+O8HkWSf1j2JrYg2fikk0O71
heaF0CkbjGmy7ezg8wpLUywMgWUhCjFFanO1rqzaTEvWYxCjx+FFJRXRyfP3qUeBqMaTvZsGSDDl
/9EG0TehdoOmg4VPXawJiGfiqr2sBbg7f0zlow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
mEaLshTycoTzblBGpLMmU7ZApo/BGbvYjac4P0wph6RFGWbeCXIuaHsHYIuECbf0xMEWHLBMDmk1
SvCEL4xaQexmkLchqkYZaMoPFbOpqYUAd1WH1HRHz3T9ijZUMwymJPf72RxwaKBJC1R3vosOKeTJ
WuaFwCqjBCfVc4NgokZTga31c03n08U80BwiVjE5rS9Mln1GdkQW2yXm2RZSXzJhpZjorqLQ9M3b
dhUrJnJXGLzL0RjPj6C2rCk85rTUS4hLnacB+aYohCkey2wpy403oJzjZPzMpU3mg9GsNQkxt7wM
HZl6UeTBG6NEsiMqmIjlXyGgrN6HGP1co6uE9g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
hwQ1tEFdI+5j6rJKal7QMdFlVZKd9QLLoGFtrczU1bLQWZFDngn8+9ghIgEmc1ioHFIVCRljfQhg
RG44l2aEDJdg23aiNYcjh/0wX0DY3+AnUNgtnravrl46/dshYSxrJEGYNHLXVYfRjUYpJg44V4jg
Fs6eu84hChZlnONmsQFxNfsKue4iBPQBMizUWZH4hrLHPRwp8Y9XqW2mgt87T0He/KN8eZAL2I0f
UowrIvqElP8Mge5zZCHvSNOqqhv8SHXtkJeNowJ78RSzbdXuVa+BlLhuIs2n6gG1Z5IqzC167bxH
t3Tk9VfyK1gvwb5MCS7jvOACRlycvltsNrfb0g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10592)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
