@echo off
set bin_path=D:/MODELSIM/win64
cd D:/hdmi_final/sim/pnr_timing
call "%bin_path%/modelsim"   -do "do {run_post_pnr_timing_compile.tcl};do {run_post_pnr_timing_simulate.tcl}" -l run_post_pnr_timing_simulate.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
