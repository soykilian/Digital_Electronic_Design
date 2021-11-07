@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 81859519395c43a7a4e89f904510ecd4 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_multiplex_behav xil_defaultlib.tb_multiplex -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
