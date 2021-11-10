-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../dsed_audio.srcs/sources_1/ip/clk_12megas/clk_12megas_clk_wiz.v" \
  "../../../../dsed_audio.srcs/sources_1/ip/clk_12megas/clk_12megas.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

