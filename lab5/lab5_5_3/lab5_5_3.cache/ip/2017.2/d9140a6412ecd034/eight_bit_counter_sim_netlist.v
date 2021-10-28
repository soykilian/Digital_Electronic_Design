// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct 28 12:17:10 2021
// Host        : DESKTOP-Q4GMU0O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ eight_bit_counter_sim_netlist.v
// Design      : eight_bit_counter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "eight_bit_counter,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10
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
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
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
NwitTPkVU5QsRjyaVk76ihIrBLg0z15ponTZGLVHuBhuLqI44ymdBc0uL0cDggooXBC0caTpiL8d
8W8ER22MNX4qffjay6n01g0m3QfOY4FHIyieAkhRJyj75lxEqZgZF4mtabFV752TVws3s7KVvpJm
5nf7LsCNFshi9qw20nFIcIZSSf9w/xIQ4lBOpAQPaFoVP6gLytYn47UgjlbF+mVKrLyo/NLdFRoF
vHaW76pVDIgfZfQT/4Q/U23db9nKZgG1VtEr/z3R2paeN3j16SYJTzWBA/F02WVOEwmUsdzZ0Y+y
Bon9cBVpXDc+uVBaVqzCqo9xedBdhRGihhcZkA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
U0OMVT2S2lsuUbtcLIt6P11MR0iStdnvy6rHEz6hbL8slARH9SJLgc3OzRkxgsk+38LH7xZ+UC8P
TmRpyS4d5ACPd+7Jt1Own1GuLhIJf8+BHHFPJO8XPflkmFGFhq71X2En2iVuETsNxVx2qF0dn6IO
OWE6W2SwCqfSerO/xvjUNurTyipokO8OWHLdIVfFvh3rK07YqwKh0MFG02qHvbzXjJBhJ+L3C88n
kp/U/GoA/k0XOkEPRz9TP7T0W2Efc/xNLTDXQs6M4X33xy9KsZF4+83FX7Pe4eNGngxfnKOmjufR
HmP3NlPeGfig51OczFd9f6NCmPQX6ll7vJBSDA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10224)
`pragma protect data_block
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
QTG0jrmgunUb8U1hNM9iz1iZC0rz
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
