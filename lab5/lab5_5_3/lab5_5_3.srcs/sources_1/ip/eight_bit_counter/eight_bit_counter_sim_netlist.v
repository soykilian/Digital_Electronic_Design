// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct 28 10:26:45 2021
// Host        : DESKTOP-Q4GMU0O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mv/Documents/dsde/lab5/lab5_5_3/lab5_5_3.srcs/sources_1/ip/eight_bit_counter/eight_bit_counter_sim_netlist.v
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
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [6:0]Q;

  wire CE;
  wire CLK;
  wire [6:0]Q;
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
  eight_bit_counter_c_counter_binary_v12_0_10 U0
       (.CE(CE),
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
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "7" *) 
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
  input [6:0]L;
  output THRESH0;
  output [6:0]Q;

  wire \<const1> ;
  wire CE;
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
  (* C_HAS_CE = "1" *) 
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
  eight_bit_counter_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
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
loiWdxhOeQxrYiTsWkY7+2Mzr7K8O7bXUEWMKuWcRlNdhBEWx7BUnq7kaRnWgBBjObbed2Tfc/hh
Nzt6BTxKMYWGiPQ//JltvIw5hykLPVuaPZpDHIcJSUHc83kBjlRA9DzvJLuMMgeygpz7TZWSXJfI
LzZqnxNmu//eexkkDsww/0mswQRMR8g38ZukH4Iy23XVwRouckulURbGLGpdO28XRsisHSSgiFUV
VwlM+YXhnOap+SKxBLmC+dfAMTdr3uFYX80uDwyIV7zp1zBmu5eU/xys6zxvQiiW0OFs3zQPIRXy
AL4giV2/DsZPb9DJYv3RELcXHhPfenwXeZe9IQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
o7SxdMiEZRHwgukQDl0fKkFF/9cHhnVMGK35li0S+y3zUIci8X3AK7fNQqSHd227luy7krzolgQL
0uyufr2YFvZAd68T4taVfCiHY1+OngNVYoUGCtNagcjLN6oICJ9hnPo/Gt9NdjwAsBKkRYXnHL1k
wid566sZTRV6EYVgUZtZM5eDRZm8eNUV8onow4OXGfKjjJv1cWc1m3PkPIAr9hbNdLRBOV9sNcam
g50H3ss1aS8E/wHo7u9Eo4lCZQzolpyuG/x6swHrpTxn2K3DN6gpvkXkruIBNruG26D8nAZdJ0vN
NEhAqlj7sI4bEVVrXY2ek26jy7wHN2tFq6Mlug==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9808)
`pragma protect data_block
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
R/uOoA==
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
