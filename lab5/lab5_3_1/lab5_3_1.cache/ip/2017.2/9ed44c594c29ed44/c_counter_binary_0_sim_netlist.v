// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Oct 22 19:52:50 2021
// Host        : DESKTOP-Q4GMU0O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
KI4rIEq8mLvs6wWl9c5U3ugV/pBr1OXwg+1PSotLTGG2JpIwgiekKhLRBfx+UjEWzeCxDHAc5Onh
fxjEddpSqd55+CVPAqmFllPYYRBhV+piAzOK/E9dgvbSFndkvvtGwUEEUaT1pqrkzFntmypTyplm
EgwLsVxxa6fvLqn7z+Nvrnqn+udcuGfIGv2Q6/t8XF0RIH3bJGX/gxLwdgypEP93QLlBIwYwaPjx
/nFdsS3L+lyTHwbMljtlzv9+tPivFWqux9K2sZXbKlF1Pa9TLiugO1g0r7wP8tB6N5RDXGI+sQ2e
1ichGMpjpTcQT55eBQ7PFwpwBTWPrnumjezFLg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
nfatD2GucgkqfctIZkl1T/DsVV5Px4ASXiwPCGS3dSLjAEz0kMcnirFALBIC9F8/uoVTMCcTstPw
wDteMk9fT0mwwOioIqEvEVKEgl7dky5+nMA8fE0b003YiPpo7+/0Wma0/hmiKKsFrpere/1QZ5kj
D40Nu32G69+hxljFNb7za2MBunLmF8nNstxVzQNDW3icPet1JYOA4nRO3RK6CgiHHUJgrYFH0TmP
9GI/nuw5pIE+qOkHjDqXzlXRttMDGWAewmQwVRIOP5VWfo5QjdLTlDIY3l5SVXsjoOzDnZM8q5ga
KsSE4aPoC+ZM/1NdVeSSwPPggIqeT9kTh3L39Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4544)
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
