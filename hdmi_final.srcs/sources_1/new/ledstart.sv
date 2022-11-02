`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/21 19:28:29
// Design Name: 
// Module Name: ledstart
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


module ledstart(
input configure [3:0],
output ready
    );
    
    assign ready=configure[1]&&configure[0]&&configure[2]&&configure[3];
endmodule
