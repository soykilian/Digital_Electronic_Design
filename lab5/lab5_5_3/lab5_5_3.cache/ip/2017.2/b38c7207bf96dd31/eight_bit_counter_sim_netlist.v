// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct 28 10:26:45 2021
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
TiFM8sWTdpoQaa9yT4JD2nSuUEont2N/6JM7/CBw28wngLzwq6ElD7+QwA6OglpX2rLPN+0/x17M
FrnA/TZz1WzgUpmSwH3Gbfe3dGRLvMIBkjonjXWs+3Klt+XbrDlemx4VQ83RLfL4Yh1jRPlDJ5gX
z0UoJZuOglDynmISyyZiOk5YwH9s8miQ1ZfNwVKKDqeAsafrP3pBQIA8myYbt1fn8C93jqkXxuWl
MshZ5FrokXsqg33sUShP3op50P+bcYGrAoDObsfMLGCpxXTOB9/ypOSEPU8pu/jCKlhMPc3+CxzT
CdUwWx8JcRliHRuFxSeFOl6pd018tm2nrJ4GbA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
xldu76yx30mVWDFUlvkbLCLCn0DKIis+moxBpmbZylmrGvmZN7AQVemrF+Cv/in0uYR5rSZV6JDX
/wyYh+nFPouVckrb8iXav6nH0aV9XwKPgxTWUgKO4YwXAnQcaHhPPtz+F+fqqX4sKq3wkvmvxsw3
c1+OlNDwaeEARAVZxX0+0b4UQvtJKxleZV9CLCU0xarAzX8SoprMFsyvcLhMiolbmwekh0MZVg3O
jM+KuS4mpiScLKVtNdJAakuRMfmaVjzhwtuXpflzY3VfA3Wa5PaTaE9ZWv/0pp4mmd7IBsxImIdI
ldI5NKVmDWVloejDCD8UQimC2E0UlTOrskQn3Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9744)
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
