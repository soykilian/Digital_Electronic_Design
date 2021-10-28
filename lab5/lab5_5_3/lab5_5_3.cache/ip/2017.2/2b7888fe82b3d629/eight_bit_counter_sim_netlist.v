// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct 28 12:45:04 2021
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
PPjSGYimOyVnzHG111C/f7hGwHdDQvqsP1U6E2kjvjirELt2kzETavb70+SQxBbxO4Hf2rG/bQ+0
VEBmsBqusZHy+Lu+B+bMg5EfT7p0BirUbum3Nor102E08ukF8q0EBSn37B+nQ+jZPjHuoQyPG2lo
ZgtVleX0FkLNFRmgjv2V992qdTOBbppovADe1w/HpMhKCV5TkBC1xpHVtJIlIJMnQO8dMGG8QBNm
zazyI/H0/XSL9wpCiJQ3W7UxRIPSqMd1DPU9wZF65bL/LFEyG0iUGkc6bJGHyxII3+64Uy2vVqoH
ClPj9h2lyWINB04G2ibVVaMQPLV4kDDVpFOS4Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
tjIu9oiYBXcj7S4Z9dBFd+LWfewJqYVn0qahOw08XaTAVbax9t7k+t3AnAjmvoV5jB6h3krsGEya
Mj1iDilC/ofh0fTA+Lf8qHVVWaBiv6LoJG4D6Zbysnxgn6lUhX20tofevVanACRZg51l+ZYwNtZR
87z6rbZIXQmdrAXJv/wZeASKpPU70GRlx3Vh84sSa3eR4VFRcr9aVoaaWpapPNC6YSfSVpx9BVe7
dR3I2AsN3oih7KtWs27XevRuFjaePxvoeMB6xRrULLYjq1KSQDLD7r/XUluB2ZqDEmQ57d+82ig0
H9dQW5tUHK90DSvjbJO2BeQ6TkcbO6f1UsyJMA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10528)
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
