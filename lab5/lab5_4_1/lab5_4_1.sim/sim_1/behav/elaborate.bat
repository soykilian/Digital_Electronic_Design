@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto daae1a44850f490694c9537eca72450e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot param_adder_tb_behav xil_defaultlib.param_adder_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
