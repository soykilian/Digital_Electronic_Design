@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 1c3b34456e9a49d7b32afd96f2f7fc01 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot lab4_2_2_tb_behav xil_defaultlib.lab4_2_2_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
