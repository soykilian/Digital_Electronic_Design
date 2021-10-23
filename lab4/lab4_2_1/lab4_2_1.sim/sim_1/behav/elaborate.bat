@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 7658339845b9444da99b0bc5da0066da -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot lab_4_2_1_tb_behav xil_defaultlib.lab_4_2_1_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
