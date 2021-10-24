@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto faa0f1c19a444913ac217fb9cfbcca9b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot rom_mult_tb_behav xil_defaultlib.rom_mult_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
