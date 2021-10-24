@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 63a5aa08728d45f5b3220d6cf2a6e9e7 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot fulladder_dataflow_tb_behav xil_defaultlib.fulladder_dataflow_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
