`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 19:55:38
// Design Name: 
// Module Name: collect
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module collect
#( parameter [5:0] ADDR_WIDTH=25  )
(
  input clk,
  input [23:0] data_in_all [ADDR_WIDTH-1:0],
  input [5:0] addr,
  output [23:0] chosen_data
   );
reg [23:0] chosen_data_reg;
assign chosen_data=chosen_data_reg;
always@(posedge clk)
 begin
 chosen_data_reg<=data_in_all[addr];
 end 
endmodule