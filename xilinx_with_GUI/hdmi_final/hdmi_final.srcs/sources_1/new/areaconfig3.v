`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 18:13:07
// Design Name: 
// Module Name: areaconfig3
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

module areaconfig_left(                                                                                                                                                           
input [6:0] row_now,
input [6:0] col_now,                                                                                                                                                                  
output judge1,                                                                                                                                                                  
output judge2,                                                                                                                                                                  
output judge3                                                                                                                                                                   
    );                                                                                                                                                                          
    parameter [6:0] ID=1;                                                                                                                                                       
    localparam [6:0] f_col=7'd1, f_row=ID, s_col=7'd2, t_col=7'd3;
    localparam  s1_row=ID-1, s2_row=ID+1;
    localparam [6:0] t1_row=ID-2, t2_row=ID+2;
    assign judge1=(row_now==f_row)&&(col_now==f_col);
    assign judge2=( (col_now==s_col)&&((row_now==s1_row)||(row_now==s2_row) ))||((col_now==f_col)&&((row_now==s1_row)||(row_now==s2_row)));
    assign judge3=( (col_now==s_col)&&((row_now==t1_row)||(row_now==t2_row) ))||((col_now==f_col)&&((row_now==t1_row)||(row_now==t2_row)))||( (col_now==t_col)&&((row_now==t1_row)||(row_now==t2_row)))||((col_now==t_col)&&(row_now==ID) );
endmodule       
