@echo off
set xv_path=C:\\Apps\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 4dc78b282cf74a63a7f4e3c8380bfdca -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Entire_tb_behav xil_defaultlib.Entire_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
