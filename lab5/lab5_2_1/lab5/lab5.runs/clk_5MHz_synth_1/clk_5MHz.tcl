# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.cache/wt [current_project]
set_property parent.project_path E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz.xci
set_property used_in_implementation false [get_files -all e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_board.xdc]
set_property used_in_implementation false [get_files -all e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz.xdc]
set_property used_in_implementation false [get_files -all e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_ooc.xdc]
set_property is_locked true [get_files e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.runs/clk_5MHz_synth_1 -new_name clk_5MHz -ip [get_ips clk_5MHz]]

if { $cached_ip eq {} } {

synth_design -top clk_5MHz -part xc7a100tcsg324-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix clk_5MHz_ clk_5MHz.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_5MHz_stub.v
 lappend ipCachedFiles clk_5MHz_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_5MHz_stub.vhdl
 lappend ipCachedFiles clk_5MHz_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_5MHz_sim_netlist.v
 lappend ipCachedFiles clk_5MHz_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_5MHz_sim_netlist.vhdl
 lappend ipCachedFiles clk_5MHz_sim_netlist.vhdl

 config_ip_cache -add -dcp clk_5MHz.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips clk_5MHz]
}

rename_ref -prefix_all clk_5MHz_

write_checkpoint -force -noxdef clk_5MHz.dcp

catch { report_utilization -file clk_5MHz_utilization_synth.rpt -pb clk_5MHz_utilization_synth.pb }

if { [catch {
  file copy -force E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.runs/clk_5MHz_synth_1/clk_5MHz.dcp e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.runs/clk_5MHz_synth_1/clk_5MHz.dcp e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.runs/clk_5MHz_synth_1/clk_5MHz_stub.v e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.runs/clk_5MHz_synth_1/clk_5MHz_stub.vhdl e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.runs/clk_5MHz_synth_1/clk_5MHz_sim_netlist.v e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.runs/clk_5MHz_synth_1/clk_5MHz_sim_netlist.vhdl e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.ip_user_files/ip/clk_5MHz]} {
  catch { 
    file copy -force e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.v E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.ip_user_files/ip/clk_5MHz
  }
}

if {[file isdir E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.ip_user_files/ip/clk_5MHz]} {
  catch { 
    file copy -force e:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.vhdl E:/DSED/DSED_Group6/lab4_2_1/lab5/lab5.ip_user_files/ip/clk_5MHz
  }
}
