-makelib ies_lib/xpm -sv \
  "D:/xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../hdmi_final.gen/sources_1/ip/ila_0_2/sim/ila_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

