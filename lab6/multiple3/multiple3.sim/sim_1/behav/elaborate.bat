@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto f9bfb3ff924d42e4bdd9e4e2b866d936 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_multiple3_behav xil_defaultlib.tb_multiple3 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
