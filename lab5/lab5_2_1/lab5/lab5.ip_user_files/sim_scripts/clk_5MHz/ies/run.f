-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_sim_netlist.vhdl" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

