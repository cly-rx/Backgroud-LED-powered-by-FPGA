// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Nov  4 20:57:40 2022
// Host        : DESKTOP-47517NI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/fpga
//               project/hdmi_final/hdmi_final.gen/sources_1/ip/ila_0_2/ila_0_stub.v}
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2021.1" *)
module ila_0(clk, probe0, probe1, probe2, probe3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[59:0],probe1[0:0],probe2[0:0],probe3[6:0]" */;
  input clk;
  input [59:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [6:0]probe3;
endmodule
