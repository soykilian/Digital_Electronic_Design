// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct 28 12:31:06 2021
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
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
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
  (* C_HAS_SCLR = "0" *) 
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
YTqSLc4K6k8ysrX7YgUjYXcSHqtFCFd4fgkMBGlau6Z3UugROzi0jbrI/7+VPfQKVPBI1HFCT8j0
BQjvkBrpKXXarbIKZwUyplHgY2bwBWTTJ776CdHb6yqf2e+EBI2vo8Qw/XzbLItDHGnDU9oNBLFu
N81vLKQJjMkiur6y8QyNNSN+ShvTYbvz8ymY5oEZeeVbk11inQGFjBMEhEy/t0Ujhua9ANWtZVG8
T5WpZCwbWu9cFO8ZBsvRd23gDVpSKla5zEAMyeYvKzI160/gfzpC80xhLq0wWLMWDoJnTXWyFCkd
IKmVNPYszFGgvcdQycq6/tdES/fUY6ajJZIbIQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
uNTSlPagcJjSjQzv3Wh7ohGXKdamv0CSF6O9j0JaDed65BB8ETnYd3AuqSkYW74Pw+7BlNJq2ewe
LEiabZCKCQt16cgmBYICpqiYB2ZNwcovoJfUNWY5lNprCU1+fICjUT/s7/Jb/5Ttw88I8TyXsZX5
qp1VBjOethZoljoa4iNpVpCkMCzGiZux13p6SWO8f+48ERCjWyKCGoVgGD5aGxLklIgts6gMMDqN
blMsY3f5XXvCW/EO6UQ7tPAxHWSIRGEjuZMKuy3ppzKu9e5XO9zwaGH35ldoMz5hjJhZs57XImsV
54PIRQsojZ+1IWCwJbjcd8CuYQLqfwloTDe3tg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12000)
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
