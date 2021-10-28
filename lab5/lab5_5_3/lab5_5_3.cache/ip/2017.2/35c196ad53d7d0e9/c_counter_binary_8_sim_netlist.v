// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Oct 27 18:33:17 2021
// Host        : DESKTOP-Q4GMU0O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_8_sim_netlist.v
// Design      : c_counter_binary_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_8,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
a2Wleq+SSEynv+Vl9IuCvRUagegFRLzM3MdE3PxU/ENouj32vK2/S5oy8GzSxUQjg2JqE5hXSeK5
dkgaFKyBR++YHJYzajOsThHIii1JBizcz8iFZ3bmpVcKPcMmvJ8zwrBpMcCT/1nHvF5ZPP0GA1/X
+nyTo2N0Kjf+ikLtG8myawzfBIWHGNRclBd6jFoouUf2DXFnO0G1srt4dWs0hIGN5TfHhISQ1w6D
E89CvWsxJQ3S5diGT8EvILaQcrtB+MGbligL3WjwD/WFzMY2mxKb681AZjCmt2twVkWFvje9QPv1
7d6HjieCHD2Bw0WQhpk79zXv/OGIuaZzMimQ1A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
k3ctMuA48eM8OUyShdjMrEGThhZhtFAS7KmXD/5VES6PgTzEin0ztPQc32JXnWKm9Gib6EXfJNmV
s28Osh/BQQQslCnZg6Sm8Lg4VNRC4L4K+03FJU42UV+yeML5eYSJcxlZRm25kLPBKsxE//CSbLLm
ifjvmwHAWbFw5mXRzI2aThobc2ekhbebDIeAyeAs6/asdTJTPjlBvVSZfKWJD4GUkqB79WpMXf/6
vmo4zNZe1jmrKlVtzx1vbUHPzp2sTQhrjZ12IvsWu+0PZ1tj/2V1d0enzlOSAC71cSo/Zph95H2S
JldoyPCc5sv138O9LGAaKgWW+bvw61/3EA7o7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7024)
`pragma protect data_block
RJP6GTkQhlLpOc7E22U6AOC5p09n2GssJC2tW/nJ1J4dujex1XtbGdZsV2aaOcvusmwsJQ6Pf5yj
ZXH6diQoWCwNh51nuJJMOt++kwGNQdyti6P66q3V3SpEf2TNec967/MZ3nyObhIKQU278EGGDhy3
M7P8POT0/pPzLNhANmaBKnQ8EQKpoWPOEDNRtcy/dlA7cWK4luTFuSX8YmN1W+Az/1A0+ya/iZ71
OITLXRK3IIXRjC8yfF9JK76gd68V1Z621wPjgBND5VevTbwH6tj5DnC5VZtX6DaspVOWpvvv5Cg5
ZDHRs3IjrA79yuqERCSY3x8gauhW9gjirTFm1NYxhpMwBgoN7Xf20/XIOE4Vxdj4VuIzUQm5zjaN
wDbprPw+CwvBcv7fsZ6gtcW75tzN0G2dIzNNPiI3ur3JDm/RXAWeIAUAT3vgO2gXpE/qyppe9jDx
vnPhMW8kU5swqlzHdmUJjHPcn1gN3LB6XYK9nWzbf5uKRHc53sZov2NfUbXjQUbkuOUgs3Mv2nYI
nriWoBSDt3NqShZFh0asSvqwfz+aOJxYXbdkkR3Itj2dDVnjXvYAbWlBqWcewQyZhX8SKbn/pwcz
81ynH0JKM6H2yuZKOYE/iXPBiLk0/UTHIwcmt4nvy+WP4RfjdGtG57mAliCSCEaqSbHlOWlhoXD4
XQOvFP8TdKTKDF1enWBfWX/EJeFKg4uBRiVRvXQPH3T8ZCk6sKhf6UiJKPfq8szM61JbleCDSXD1
eUl7UpGWckSeCZAiSnrckOB1+uUhciarN/bru9Sl1BqVwsCrKh5HEEFjfHKuwa0wyF4iNfDDaXMP
u8XC9jbmCykdDTuxFscZEZeXWU6b0xfwUzS/aH5yWpylv44gDz181G1U+1ScOEwpEcBCGEuxBekn
kR6lOk3fB3xYi/Oh7eJAJES49EGAqTgazlRHZ2t2+EMg70vA0TZVcC+7uX34bCdxLltGugKmddGP
vdmBKkg8M8+F+NdvoJiB/Mp0H2XsVzR1t8+BoNYqUCbOp0x1RgptPHwK9s8FrT1WgxwFbo26ZLj8
arN+XNCKOPQIKtcvhP6vernMte6Gk8sTQN69a7ti/BO+ki9ee+QaeSvD6Yqi4vTgUpXZJEzLUoao
ocmeryIMVHRPF0eC2WJAiDDly7eYP3b4ldTiwGV28HZbpucSVyQq0Mn/Kf031J9uKuIYkldRfzCP
GwMoYF7S+yfI907Tx2pjrlOr2EwGG8eFhttWpqSilAvdomHX7rb91nsg7ckhWqLE0HnWwG+yBtmo
8VnxirOLrfenkB5ldx+SRw9kllxld+OLZWOhsiZkZ9jGS5fy7G6Xl85zYY29+CufuzCLMdfvLKmf
gm0bknM5VPINn0wfwnbp1KdRntlZ4E3IAezq/fq+llNheaPT5gto9CtZCwyy+qbPnwpk9kqfu61u
1ZQB91LOuAvlp5q+25U0UKd0V7A3R7VaWUjZiaE1oGT6MSKM6j/GziPANpw9xRKuyGdui6YtdAzM
8wyAZAbhGHfEnRX57iwVtH9OsWrJgnohUH9daKxk/SFoQzOX1QcsF/Qe9ZIM5W3YSswqVjr4FyNW
jzo0LBnWw7QfCCngcWK3vNXO5GKbyafzO/IXEvxGaZa6dj8kpkYxC2m8JolLdxGW1I2HZFqZhQVD
W6ZQFPlLLKSvcn5EDn830CaaoRN+sVi74QaO0G+T2OeRGZYZ5QHStMRTuSlsJDt5DcKzSIPoUyf7
/JRa7uvT7JZm+kBRag3T/na8ecAVt9RxdziJw0nwkm7WeDHOGj/WldjZCozt6q8hkhP9tYcbTgBL
lTt9QdvO62hF8/Fi9X6CjCDmulVb6AUNLof2rTwx+Yal/FbbH+8PIVc7x2XNQCfa1oA1EgW5Eagx
Oi9kMuk/bu9bigcOyiTLbcUb8VF+nfgOKesCqK6xb1E6C468orIGXwnZNDvK9LbkbNNChCTlfHKr
c/zNkNCpeEy+h7Mc/tLLG7zA5oVuuyVfZ3WQPw691/e4UV0BcTnObhHBciGC0jB08Dsl0foEuSbn
ntNTDVRG4dtORSWzy7YnX1reLb64JUF8ebQ/2Bg+40uJ0KKT6VxqWxLO1/BZoJD5bKFv8gKoSWpZ
JXrNPo6tIIIH6ltR/JKh6dD0c1sD9+Mb1nFBNcIp9EwpzheJAptVxpQksUBbhGAdacMmF4OR6313
Ow4tqOOu2e9Y6PUU12nsEigbWEAi4sYNt9LhcU3Lt8301ypJIwwHG2nlgaRrXM3ke+zWMzg1t9Jf
uKkQzDFGoOjcY6LWgC0299EHLEJ37zRdr8mBiTyZqaZZk+n0/Gf3fTol1ymkvsEFNPa5GNsPDfG5
IrOAkm//oDPaeXXvWS/agsdsCPVg4JLKN8tySicIoKIH2K51QuTB813hd13EIigyqqot0bkpzI+k
08xFG3z7IV+9lMoAXPEfZXSEBJO/2LEp6mtanSSmSqHhpgrrSQnV8uWPBnvOvCGGFhcxcx4LDknI
XZb0TvUM9HpDX7OnHi9VSNb4ywh6DUnJTTIzYsmXLJaxi4ekerd2LAiu+0JB33qoa3CHjior/bOj
YA/ZIA9U9UQmJqxUngu5Fawv0iW/isEsGCtefI3V97NnXr4dfnGCRJEO84yHWUU9X8bcfx9v27Zm
PlGyJsIY8IqsVc1zqAACsPn6gLCsLGZ/2qwfu9jzC2XHuE2OlrbOEuGfH2Je6bzwCRLnlzZ7vc5C
AL/+MSkzqV89AVk64ZOmUzC6zJhMqfqZL/ttdCcznWtiGjTePFHIX5jZ+CWWqGnOuv0rGiuFI7Dv
TU9Gre0uvaXn3PSg6njKZXW0g/W9IKIf7gkpjC9Hd4qIPSKg2Iqhzb/mWrmTEP/J/f48XgeYiLEy
qNUFAaB/u6fPrAPkN28Sz+1EdVM0gh+tRVmzHgG7cAuSJNkd/tVWWrWH9RYp52N0ANM2AqkcZuTr
JOIPwicUsheg6lQ7FVaJOcWgqXeLfi7aROeWeQqmfYQxool6twIbtvOLigNO8FK7VDifOGE/cHyd
7fLuROJprpZFQj3oIH0zYEEgrbYbMniNN6NrWEO0O/ahqVSWi3DZDI4yJW5yMT8RZgOzo5VZ5A1a
N6KxKxAuNCWS1lnGSskOKuqjCTTOdGiREHOqaaJh+NqGESWK38VWaXCuLjNMy0Jm3YEPOmkDwe+j
9H7pSyMoxQOQPhy9r44ku2WTteWS6ffQf1Z6RJnOqoqUdKfsEhj1buSrecZrPrl6pCL8YD50WPhM
2gd9J+YBDsliMQvHMNugSc59CJJyOmfjXcT2F6DxZtI7aBquHqYI0HuAyVl4N9SQgL9J+xfjLowy
P4zYgKrTcLKvEF7NCpxR8BFKyASqFDk4dQ/+J6JcdOskV2sivxHFjmqiJalI1LV2mQyRoBTi/v49
sv196no+P0ht8o5KMummDX0KLGnHpZA31xJOIMv6eBu53ouHgbEdXx2GGGu7pAiy0av97kt+NIl3
rbiZoW8t3VM79uItlXOfPP83e83qoLLHfD/gBoPZsT/XwPiEAd2gM5efAwQPz2pkkh3wzaut28TF
CfK/wqNcflH8xTW42M5PDjZmk5MAuglxjvgIFtGw0GOOHCHu/+aLu0+1Dvp7QqehL/i1Kv9rjBjp
IiZ8KxlL/VFYWXQXByqbda2G+DJLlH2mHAfU5u4Emen2RevmvLthHjrj93FhCp/60sCk6TCpEfVt
mpu1P0zTnDPII/symVr0UrSSWRUQvndRiIN1fltUrmws6K804vp6MPgd7r1Nz62z5XKjSV+0NN03
cXqMAy/rAMPHhLnm7rwEqcmwFSwP8reBpcEyz6uWnWvz6lVw1kHz2HX+tTXB/brCPabWuuixB28P
Z9/XICZiNZl76bw4SJGyL0Q3kbOzxMeY1THja4yyu0G6THYSjVGzZC5eyZKE89c7EFUiEvuQDKLA
88wfkFaWobyrMdMb1VFHT2Xbjt8g1UOwoN1EwTYy3W+Q3S+8wQCcCk52NH3P+uyV+ks0hwSbgk32
4JIQFuRXxT3mrHr0/ZQYtrBXE77/Mrz61n3mDRxzoSZ4yq6foftAgLgLtVQrjqrmR3xCtQ0ynpiH
7xFxyP9/KX0d+NPWsUvFBjorOb12mAU8XArMMPjmdFbnuINai3MoFbYcbMtJ4O0PxewjjVjt21ZY
/CMwj1etANR6Yzv0C2KRwGydE9iT4FaXd5RxSPXDqwZ3EnwF0iJo9vN5eJj4r3nVvHmyiLAdo9tE
vm+C2zMq7C7qjpCzkRAstuMCWnrpOs2tgHX1cEryJcsJG20SG4G/HbbEW/RhNuU02fRclpuS5Vu3
3kcZZcewq3Z024Vkn6P0+WUiyIR8l6Rw6axsEdmaTj/9ZZDSkWir/eG6EEKkqj3tc6uuPC0Rt0yz
hOoz+bVpG6tNNpH946Gm5vhvLvwY3Sog/Gzlc6H6PhAE/FH0hlSxJ7jol/ruJbChiG3prdmh0req
U2zHkel7uWmBTrz+j1W7MFXYr4SJ94RioMqySvXcguIkK1Nyc6amUrdWCivC/v9u+ECBUML+ymEY
XSMrPWG63A1+46PkKdWropw123u8a8W/A/NmDyF7fUFbcF6nR42DuTbSAimmQq6LESy9mhfrg3Vv
eoAvIH2XrZeAcUHBrHE7KjPORiAk02VMTft/MOd2LYyzBnO5cfeVXpk767g904mo7FX59C1hDd+E
KkcQnOl1AP2wYcgeEZe0tEpjUdvy6rA2WVE9OaSwnZTZ22jAd+eKdA1gvJTME9NFxPVujxtzDF1v
RsS6oXG7DO+DA3vmeKTEeNrn64qyH0ali8AhxgCieQMi36OkuIpVlQpRZczt0MBP/k2d6qMd85Xs
AwxToYY+yQiTWMm0HKNoqtdc22guY9K7RlEPeag0kRykQGrBtahpxHhz2mHaK+Pg+XgVQIBORWP+
UjDONR0Iq62Z4y03Up2AkaGpqk8YBLcOm34HMV3hAm+03+d4kwWSRR2cIAr/pKAFIALTZBGvcX3J
4LPX5Rx4f902dwFB+AU87NacTswsjE65kwygO2Iwk60ogAwcRgNtw5ePK3D55H7EF7guiPyXJF3H
6ZMu6wBisj8qoUhr8tKsMrppAJz7JvQ2apKCpYrZI6DnBjR+66IaAQbtVRWCFKExlU8go/VGLO3q
QqKyU/HpZ+/Tgm2Zk38DOeoOOcEiZiKWfYDVO8E9l75sadFg4Ja1DZsxUuUB4K7XqIeCqwTYYDYJ
2sm0nuYIEv4dphmOj74Y08VeAd+MbBoihVAKwBsQA2TmfccSwAUIMD3XIAXLL6yrb8Bs22JjajYG
dc30HIbpSnP5QKNVfYcIJWRA67u0d9qJm64Fqc/k8qTOkxco6kG6QoeDi8a5T8R6rUgpD5xGakSc
qCNpyp27tRixIsigrdzzDmEKUucYXl/Uogr64bzGplKzXIMT10UgImShCw+biWfF6wlbLlJwdlmN
aA2ScWr9XX7GR63EFM4o1xEadW6NlxBP9eO/ROjhDc5IYI0ycZqONXtHiuTsRfh6sg+BrQFZjUl2
HmzWke5do65tW4SUKoa0WmslHxC/9UTeKD1jfHNoHOnwa/Yf+i/gFMmruP/xXcaaIn/3+J2iVJPy
sBsLIZ8proHuJuZ6UGhmnXv8ElLiiL0J7ZGCWE6but5hl/4WO33iXk9NFC5hbUlLlnqTQPPPZSSm
TYjFkLXXBwdVAElyiWp8fEv+aHoN8hNb0px8U0eqKGBlB/SoRLkR9N2cmwoRjfp3DhdUV6/MBkK7
hsLqiLRSpWKjK2WpedZEwt029LsCN2x0XqBOKsD+kE0EJCvysmQoU8EemPPwxrSJDRU4CT5MVaK0
792Wergva6FNMMq5DtUtl1byLHudBKe/D5sY9Lf2Rr32ZdABurqv1VgrgTR1vTb5O1tJwPgU4gwz
3mOl87CoGKCYVkbxTB0pz8WyJZYSxv1fvPbKeKHF4LRv6wQtVv6b5NevaMa65QCUlDmBMso0cxfZ
zutRJCqaX2N9dB/KY6kFf2EDbfrNJy4SdeUGty5CYEOnl+L4axhN+mjr0NlgLMPvgRRSieEXYm/b
5eF0SZB+7QCCDR/Zg86d0/Tti/VF09X/MgCSjqRpC8iqu0ww/DTU3MdxSFFoF5DsvL9tcNUVo7VD
Qjvcr1s9NHHsdcN6Xwib3L/jslWsAyQN6IIXts7KIKTeghuxUxCBxqe6ZQHMcoWXAZC1wGgMj3Cw
SYirI7ZCqnfsDg3IzuS3gIJPKfcbV991PSQ20UWpjCu4wjfefCxYgj+pi2lRX6PdHVDP74pfsI/r
G5UF2vle8l7tu3TgkI/aOTj9o3VUdHnvHolAUbhSV3oaWsxW/Y4B2bv2USVJT7D2V0e0S1NBWSJD
yC+0MPxgQCk4VHH+6q5B6K3cNi+GfNJpXhFyBGRF7mV4enIrh4zsm8Xql9LxoCce8+LUgiE7sMMm
uSTqE4GKP+az9r3ptCpb/NKbKfk13dAUvpEuR9JNYTQ4zrSvJ47B5x7xeyUWiMbzsLAOQMq8K+kp
bZNaeBfGySQvR6/li2OiZRy2PSlsxJb4sjUdq26cbBn2ANS+qo4Srbpd/Nh5cbjWASEeiz437B1a
o0VXk6iyJTsHT3YFZilPE+h+7t0leAXOl9e9yy3BTb+1A5VPIl69IBB4Qtb+9yiUnKe2CJ79UReQ
4hA9za2wpVWNvpU5LiRu3i8KaLEJlmDkoH5zlzbAM1zTWnEu1Sx0VcZS0tHNED++Tn2dVsP+yKOe
AFaChZ5XM8dLYPxWavfwEnJ4vd612sJIuNLJa3G+cchOjT6UKt3i4gcChNTO6Wr4FEBoaHC2eYbU
sO702DqY66HnqOryHWPaQkhPeBmSNiXHqOpvoIDpgOFA/4uyq/UYs2ReteI91HgLJGL3XUtCJtVO
VvC8j9X3qG9atpxhN+r5IhImn/Mx/1XF6pDp2txWyP3QEqduYgR4fGijU90Q9rYexDGmXgknU9oc
647hLhGSYZHEjc9Dqwo7mztWLdfpWGMz5x3XH8SVFt8LBsWyqEvtPWu34PuIsd9rrQTcePKGUHgw
1y3CsRFV5OJYf14i4oh18pFlQ9XF2BNuIVwI8jNwb0SOJ5YeglyY4A6tKOEzbYEqX3wjOreMaAdJ
goJZZ0p5Zn/PH0Rnc+6QY4Oy8XwKBNV7Pos3Jb5eX7fQCCQA3B478ufm1z3E/dhIwMAiSo9LS7yF
uVcQdP887Vb74XVk0r1uugMRcxOlXcvkYnojMZggqCAHbTT8vujY65Hgm7hPQ/JCmk7LAkFN2Zc9
fUgcb3+z0tvDqGv5XZ+DltcSwFjPk4tuWmszU03Rd0t53i955EGncdiMIUYXo4Niy/HnGxJJT472
v4DanU4rqUc5aEXyozaqAcUrA53ytRSLUO9HB+QvEZp+SCLv/aKTB97b/oAcATkvQFWJz6N9wIjs
d8YitaA0WghSMluCNZQ3w7TkVMfYpKCupn4LWBl3dhAhXDcPf3315AJvAt5cUjg59J1axwWJPE7I
F6ZTlfITjbkIINL8vTRixK5AQpE4z/lxfyfWHjHWAPfpf7KP0EOEFglTF7LO9kpW0e0BZUJEm1Zv
fhRQR232UrQXJftckoOlR1NR+VzV5eGYoljos34xLm9enx+Z5+VlblceP5RY6AxNFkQJhChl4WN4
zBxK94HSB5gklBfu8ILzKMdtN5PybScIdI9AWbiCAmNKznUh+aQ8z7McKz21tcuQh6fJlur3oEUb
gtCjDFqhB8fgYauHLYQCCBY/V/nPYyaXHd+jAi/bgIAUMMYSz4gurOayoG4CY1W9S/vvTfabjkcC
G2pEZRf/h+RoyWTnMIeycbOrxPFRC2M0XX19c8zWjIYB6cg1ugiaj4dkFzcvtFRi3hgHCfl9BtJb
GL3HCfOAYb42jgOtjdCS6Q9dyp/Aa4PFqbOj5hpq1t3y+aX4TQDhnfQFzIBVYnJa3YWMZhnuUMsu
SPGdrAC8hCCpp+ytQXtwYiZCLw3RvCMLKCfiaIBDW3ChlfRBkDD2XUw4TRFEVYveIt31yjTYEFYG
51uR6mhwBXpPSZFxJJe80P4U2YUv3dLXdDjffNzbqWV5b5S7TDtuEKRMA79BNWjqmoDexPahmZoT
8MLTyNGQBTKFWp5Axqb7Cw2VBdqdmEdEhiUPwMsm+CqK5G8vh0dBdIkjIm/Zp2wsQY5U8vj8N6s0
1sYKxtECWcnbrYTAHDAFE4TFCQ8jinEaoWUrmA8nO685p0Eu9dlE1UxuZighkpyRRu28+WP1UKmx
QqX/vQ9+guJLsONXIMYb40+QjFb4A6WB6CejASf3nQB8WpvwgyGPTPXSD8M/2OUnUiYvLHAsSv9C
BZmpGxbziWDy7Rx4FQzyVyaHhcMk/AuDEGXM9AxtrJerdDtnB1h2UoGCgks4CGBjC/SdgTG9z6SK
HU0KH2yosAPoqhV9/n8zn7MPHopwz3Q7aYPndPp+T8wxmp/dcRF00wFp0Tv/eXIEXipACAC73P8D
mxTM92hoyr0ZoNv+cugkk2OEypvMlVQmPL6GLBZuPxB9N5TfgKDITM96aQHSwl0okc+FqJx6KF9f
Iv2+8eLod5gPPvs03lJtnQ8+BQcL2+Rh1f/wb7W92ZX7JmnrfrUwAnZyGaLnEKW1VRjy1LShv2ew
HnId/lfeJclyqW8s2LnYdNY3oGXYlb31T5zNzDOVvNxjRiYOQ9I3qHCq27r5C0BmPb4FLL6CnriH
xasTY3Tg1xAWELlchTmgr5I36Tzh/W6lM1+/42mOO9w7NpPX4L7CeUgWtyQmYwc32Q3vYOYbpbrO
HtKBY63r750zdoskwI0zZdkbusq7FdZPNwZy+l8RMstPuBpC3F9wuzbVrG/oTb83XhqRMz/clm0/
M3arN0RGfIKQfx+NMBEXrZLz5O7CdpUebYbxeAvhr5F4T9vrmk2WMXoEpQe5o11F0DJ5mp6E1mbf
BLP8f3/FjOsaS07i+gwWsc/yrf7SckHkHp4MaLCHPEgFNGFSR/8blW8nx1v0JN6r3UVIhuNvbFPd
d1VqMp3Nke+NNcwnZlpfphbeGjxCF1BjJTjBoUcJItKidrYJfj0BATBNQSRz/1Gs9eaJJcGkFWbY
Sns+7fyin+LccVbGkgumd0hUnzfIp/F/6qTqVdAEBVOyiyIkJkCbpFOmRS1SG5gIfsfu2IV30mgB
5OYF3pt/bpUm8ySCGm7BifJimIPTCam1F7sk02F9qfKlhr9Qqk9s/wSOQxV5LTuYokLjdxbU7L2K
VgrunYAJkBJJPZXHx4ZYjqzLPB7j73azR4a/ZuUlb3vHMomfsiqrm4QzpQi0iqP3eh72e/aLAZhL
Lm05mUcsvJ4lFujNiw==
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
