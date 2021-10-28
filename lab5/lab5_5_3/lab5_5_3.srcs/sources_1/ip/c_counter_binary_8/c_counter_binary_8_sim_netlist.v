// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Oct 27 18:33:17 2021
// Host        : DESKTOP-Q4GMU0O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mv/Documents/dsde/lab5/lab5_5_3/lab5_5_3.srcs/sources_1/ip/c_counter_binary_8/c_counter_binary_8_sim_netlist.v
// Design      : c_counter_binary_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_8,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_8
   (CLK,
    CE,
    SINIT,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sinit_intf DATA" *) input SINIT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SINIT;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "11111111" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_8_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "1" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "11111111" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_8_c_counter_binary_v12_0_10
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
  wire SINIT;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "11111111" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_8_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
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
XG/M/+JWiz3+sjLbxNpC/N7/87xn5Mw0RlKM1hJAjTXnlD/fEFYvOBTbotydEkdJGgNVWZbKnrkr
YmoFH2TeMJILZ9UkZ1lDdbAuWdpQMLPJVGS875ElxkGGZmMgCO+NL4H9i3tAh+Ia+PeWNkLWWiT8
FvinHIvat2pUE84WEM9Jp4HDWcQlMokHnrrgRaI4h9xLk83MfNrngKubeoOKyKZkERGPK0wvHCYF
E0toh3xQ5PvvMkyAtG0JydC0rzMcF1Q1vAiYjeB8Me/sJJ+eFVjWmULRcvEEHLv5x0vo5ot8O2YE
O+eBGJy8MKQxy22gDV4YcI9JC0e+/H6H7v/TQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
XsSGnbYmYjIYZDB0fC9NrcUh8Gza+amEV9LUjWciSVUP4hxf9u64NTR/xF8tTQbDTvy11+81DNrZ
T0jK3kESdD4/+MQ/o94O0yHNAtnzOVncMCFMxjmlg4TpccPYuBayMSICAPqHcdvl0ta/R/guuutX
6fy8fYFofBAZY5cX3SPxytzrLZAF1R87wVP9AFgoSbI6hrjrQKpzUm95qpRT2P/zVzzzba0GZ6fx
6q8Z00xC0fp2QxjQ/KTcBDPAjtefOoZAZbeaGUCuVwMf2H6itXyLVIRKVU4QXa4W9brUEZ2IreHA
wSe6b2uxLv5UDAasXdPOVlvF5soeKZwFiGQqQA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7104)
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
