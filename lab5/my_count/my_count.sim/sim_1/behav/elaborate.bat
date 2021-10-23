@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto f473903bd3f44739956930a8baf3487a -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot my_count_tb_behav xil_defaultlib.my_count_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
