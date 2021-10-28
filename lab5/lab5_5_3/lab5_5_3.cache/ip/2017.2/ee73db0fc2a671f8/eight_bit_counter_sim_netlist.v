// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct 28 12:36:57 2021
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
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
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
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
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
  wire [7:0]L;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
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
OMuhAFqEIDJP0xdMiWI6RjtlV4+Iejn0Ueify41Co19vXzbUpp/RgrWWmTx/n9IaxVrx2JsjdfwW
VTad5WGg3A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GYQX2mGHh7zxAw4+XH9l7QfbFrflPBxdHW+OnKQiXFp0+28ZkGWHlpF+rFs6t1H14Jbn8YD9XAJ6
kpH0/Er3X/miL4kGOQYQF/ZNuZ+keJDSTsqLqHoc6nGS8vJObzXX7H7RDUBDAb4onG+KpQHI5gYO
8HTx4haBrxIMGXHLTc8=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CVZj2XmJb5KhF7Oi/o3kx2pVB9sNhzj2nZftrtERaP5pQQsaoUJNUwYboJOMfqcAGrBzTHIa6+tH
EtFw65bRtXeQm8YIH1h1JeDvBkyy1uRmVc5JMclUUUL11ZlKKgKAaaejugb6LjRpL5uts3z2DXAt
Th1TBr8ZS+4XvKTT1g8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZIdW+sFnmQLg5LFAczPAXPe07PLb6V8ihc+tUcKPcVKc1BeSLy/IH+Fa/nL4eSdE5TtFt5DcxZF5
6AsKp0qxmQZr2bRyPVNe+tcBsprw2keIOjnbZ0J98nHiOSVvYLIvdok5/0z3eXhxNSafXY4FQfMP
52p/2pTNpsot5sHB2pj5AOagCHPA43vFdUG0kBMymKHvcsa1i0b5hHZ+Y6vIyWm85EDY/g2evmtc
b6mj9bITsP3iur5Xi7QPBHsNUgvW/72OetP0JNDX4KZEM7EYu/hTtbMxTCAbB+flltw82T74wsUx
bRgIDMceqr9n0HvofFqefU9t/LhY5OphGwLBew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sZD8C54fUjXkYBw37pXq4tpZgU2xqw3R8W6ujH/6dmGDDu5tNFdgB9xWa4z7QGBveo+Jr85HsJrP
Uiw3BD24o86KOiWJZgBhUXn4hki7cCd6HcPhleTEoIBISTRgVkHArmio0mtxCKorwFbpBdz/TsFR
7MfWkuvak6bEedhLloGhFhUVVW5xuM5lLr10MpLT00hOXcmXcGngDITtOdQmwOck88t7nE7RMnIV
QfaUd1i56Ff9xkp57BgYwJVQh7gdX+J4yE3Y1DyWxMyo8wE9FaKN5FA/NO+Yq4rG3CSKaSeUi7gp
PnibvUYxxRo7CqnF7sJzpXa55kXNd84F4WZjyQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jLAwV8S8Tbspc1wazwKotE71H2eMwGRdf7q0P1KcQaq6dTBOkhzmWS3pHK6ssM/xMtbx8PzWtfIU
2pBoU2ihe+EPqYbCkhSwd2gamf/zau/IAmCjefZjGXvQfnoZHr7ysnHyrSTkvc77FyKKpDUCT+oX
CEE+xUqJ4G3vPpmF4DK3uLEz6ysVZNEP7dQhc/Xi/98ALAM6PcXboXMitr3XMsr0ZgtTrs8zaiN7
gdzMQnl0xWdJftuxrmXgCO+HBvzTjFQk92QWsebbPUZQUQ6OxzXtnD9OQrowbKD2s/D15Xmv2S5R
KUiAL4DmXvIjrgqodVVx9bQWDc9hlVDsAinCjg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
kuVgGNppo9fiFZtHEkipGHAb1HNziCYHjN9Y1jPIk+VeCDRFwz6kQnUa8Y3tpzLEU82WtCVrVqjw
IUU3o92TNApJCBRaKtowY+YkPv1Ok/h7zzbHvgqKGkDHHrq70df0etiOgmR0PC5BsGqMKiPT6qFB
QG4ieUstd/UtDXk5mdaNypqz09aCiVEBWjCveyiBhw/JZ0Tz1Htcq3Qe5e5wEUhloduoPjUUZEGj
h0TYwRsyv1wZcvB5WBjWOj5mHETykrfqxv7QN0QiALM/9KL43hR0gch/kE+Yx5wT1GgqvlG0rf7W
TwQ3gCxqUtMcZW/XGQTxdw2OA5zkoZZxNjKxRw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
v/xdG4gNgwTWHU+YCqgmm5+4741V0olEfyPDVjXCyZgJhzQ70Js/BdFXNuaoK1iAi0BA2IRuvhMV
2u2JaYue5h1A7mStW1SbcIgd3DedkpxoWbpIa0Vzgu+vThXRtUTldpyFdQKZV6TeX+o9P0ZOJiAJ
zvTPJakEYL7AUBzzeXr+D8hvYs8juDCGEm43/REgEMJXPKLUYvOxequt/4xfSd9dFGTJMoLyNb7e
4HDyNML7qr1gHI30Oy4c07twkfGQSUuZKrUAV+ml5t3PrvmSYC3OWuG3BRNpMbvZ40HZCtt9m8JS
fpRxIy3c7RnQNW+4NUHyXmN6Co5x4MajekYIbw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12192)
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
