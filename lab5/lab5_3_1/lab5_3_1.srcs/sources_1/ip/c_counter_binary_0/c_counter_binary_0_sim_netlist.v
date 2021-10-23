// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Oct 22 19:52:51 2021
// Host        : DESKTOP-Q4GMU0O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mv/Downloads/lab4-20211014T204009Z-001/lab4/lab5_3_1/lab5_3_1.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_10
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
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
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
c2VSQCsxe4oKmn7jkjpOnwQ6CxZvdcUAxki8lvxh7iWxOt7QOqjBUalPvCM3lVMWVvv0/GFBYp4e
EmPNRKg6Orty7qP+yUom4UJJ/gTROz6WK09PeGoOjBrgvW/r8QR4Vagr3lG/6Jw6C79Q4YvPoD3/
JNmKqPLIPuNz0SvLCwltsAH+/PdLdIwANeEBCkW0vo/dVySXIGYQWVc5d/jQ8id7PgFmfGfo1b9m
o4UPWIdVl6HGX5tPlFmovUdmzLCNrbWag6dbnQcWzM4qOHICrzKVDrJef+wfj6RjcYXijUB4pJH8
LDP68DrKpYnWsD/DrvW+AJ2G6MZ0RpCdSPDA0w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
XQ7UV5Ro+Fqw/JUlZFSrgf/cI2bDWXzXDe8YypRxQqVfHUNF1qN81p8TfbfC58u8/EVljASQY9JD
WKmSlMMPLDOnnPCFYBxw/pT4rjArTbl1QMkIVNDtOi8x49OKwRtuTslgs0oItub/RO6zFAvJdgP5
iE7Asqyo+WMip3j5lbckNTfbWs4GtyA7TFRmBoMy9ADmfs8l0RfFNZom/SJT4pv3KzsCkVlzX+3k
iy+nivyaHJRyc6n0RoatEELoxSrv30IdUKaCIwCkbS9o2oN92snWqbMCL59ygN4kc4TToldBZStS
w5FUzl6+0tZssxQW7AE1/QnSYYwv78+lCUaHYA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4608)
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
