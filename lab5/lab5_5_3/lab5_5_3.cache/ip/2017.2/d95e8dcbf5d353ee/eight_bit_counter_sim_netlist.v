// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct 28 10:09:00 2021
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
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [6:0]Q;

  wire CLK;
  wire [6:0]Q;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

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
  (* C_WIDTH = "7" *) 
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
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "7" *) 
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
  input [6:0]L;
  output THRESH0;
  output [6:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [6:0]Q;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
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
  (* C_WIDTH = "7" *) 
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
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
KR9MduKSIdlzKRU6oETuEBNthGp+vqoqdDIAcrqhzpORDTOWYajZXRRkRSSXhcUCNJb06oeGohzS
luWmHCTVAyIDrBt4ujBpnVgiUPiDJsxEclXSKzd2MMsaa0fhx1LxETxq903YPaNl2q+a2YAr1G/z
RsbcmMZocUHlTYOTs4b1xQER1w3HygkDOvHUfSKMfV/Q+DstPx9PMzw33Y9tPr68psrkBLAop+zQ
P8jVx8hSVynCbY+1+hD9PSQflSfnONxSqAvjzW19+P96G026yTcCXrx2whc3LD7o3UoYksyDzvkr
7pG8ekN7WT3EhKTXVQzkva0W2hP9LfdjHpmzVA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Hg6GJvp6rGyx/OR43RAQOuMRKN+k8mQnm28ccx/W4OjOj73PHwaEUGB5vUTux6WcvOnjwLeZdohC
k+26yYDyDoVgvjNWHzhlZcFnd3Yi4FPRVJGwFiHDSRhKv+J3AwbFruHtphWpWF/exaDiVjdIDf+O
SuC0H2CQI1mCh8mIj7cx2sa1rGNfZIa4NPX3I59SkpKPC3OS88Lk3P7YIn8LtcV8SOhRHwwjhZKS
WtSrlVSU84YRsAS7gaZFaCMeOcqVnVs4Ri1nSnwybv7dbLoTYgWvGMzOSuP/86U646rLgtGtTR1e
Yr1dazzuiZCRHVoMEvNkkvmSFll33eMSWx4ciw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9520)
`pragma protect data_block
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
UQ==
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
