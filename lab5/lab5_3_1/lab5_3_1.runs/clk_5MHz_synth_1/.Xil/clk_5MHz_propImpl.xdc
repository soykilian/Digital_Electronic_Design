set_property SRC_FILE_INFO {cfile:c:/Users/mv/Downloads/lab4-20211014T204009Z-001/lab4/lab5_3_1/lab5_3_1.srcs/sources_1/ip/clk_5MHz/clk_5MHz.xdc rfile:../../../lab5_3_1.srcs/sources_1/ip/clk_5MHz/clk_5MHz.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.10000000000000001
