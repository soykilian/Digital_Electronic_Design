-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../lab5_5_1.srcs/sources_1/ip/clk_wiz_5_1/clk_wiz_5_1_clk_wiz.v" \
  "../../../../lab5_5_1.srcs/sources_1/ip/clk_wiz_5_1/clk_wiz_5_1.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

