set_property SRC_FILE_INFO {cfile:c:/Users/mv/Documents/dsde/lab5/lab5_5_1/lab5_5_1.srcs/sources_1/ip/clk_wiz_5_1/clk_wiz_5_1.xdc rfile:../../../lab5_5_1.srcs/sources_1/ip/clk_wiz_5_1/clk_wiz_5_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
