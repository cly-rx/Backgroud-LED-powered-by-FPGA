`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/01 22:01:41
// Design Name: 
// Module Name: judge_row
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


module judge_row(
input [5:0] row,
output true
    );
    parameter [5:0] ID=1;
    reg [5:0] ID_reg=ID;
        assign true=(row==ID_reg)?1'b1:1'b0;
endmodule
