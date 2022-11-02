`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 17:39:16
// Design Name: 
// Module Name: areaconfig
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


module areaconfig_up(
//input [6:0] self_addr,
input [9:0] addr_now,
//input clk,
output judge1,
output judge2,
output judge3
    );
    parameter [9:0] ID=2;
    localparam [9:0] f=ID;
    localparam  [9:0] s1=ID-1, s2=ID+1, s3=ID+31, s4=ID+32, s5=ID+33;
    localparam [9:0] t1=ID-2, t2=ID+2, t3=ID+30, t4=ID+34, t5=ID+62, t6=ID+63, t7=ID+64, t8=ID+65, t9=ID+66;    
    
    assign judge1=(addr_now==f);
    assign judge2=(addr_now==s1)||(addr_now==s2)||(addr_now==s3)||(addr_now==s4)||(addr_now==s5);
    assign judge3=(addr_now==t1)||(addr_now==t2)||(addr_now==t3)||(addr_now==t4)||(addr_now==t5)||(addr_now==t6)||(addr_now==t7)||(addr_now==t8)||(addr_now==t9);
endmodule
