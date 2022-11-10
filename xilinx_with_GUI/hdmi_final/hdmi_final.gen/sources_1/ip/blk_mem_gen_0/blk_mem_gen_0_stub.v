// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Nov  4 10:08:24 2022
// Host        : DESKTOP-47517NI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/fpga
//               project/hdmi_final/hdmi_final.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_stub.v}
// Design      : blk_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *)
module blk_mem_gen_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[6:0],dina[59:0],clkb,enb,addrb[6:0],doutb[59:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [6:0]addra;
  input [59:0]dina;
  input clkb;
  input enb;
  input [6:0]addrb;
  output [59:0]doutb;
endmodule
