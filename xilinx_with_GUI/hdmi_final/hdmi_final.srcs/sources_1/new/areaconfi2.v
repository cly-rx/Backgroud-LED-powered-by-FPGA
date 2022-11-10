`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 18:08:52
// Design Name: 
// Module Name: areaconfi2
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

module areaconfig_down(                                                                                                                                                           
input [6:0] row_now,
input [6:0] col_now,                                                                                                                                                               
output judge1,                                                                                                                                                                  
output judge2,                                                                                                                                                                  
output judge3                                                                                                                                                                   
    );                                                                                                                                                                          
          parameter [6:0] ID=2;
       localparam [6:0] f_row=7'd53, f_col=ID, s_row=7'd52, t_row=7'd51;
       localparam [6:0] s1_col=ID-1, s2_col=ID+1;
       localparam [6:0] t1_col=ID-2, t2_col=ID+2;
       assign judge1=(row_now==f_row)&&(col_now==f_col);
       assign judge2=( (row_now==s_row)&&((col_now==s1_col)||(col_now==s2_col) ))||((row_now==f_row)&&((col_now==s1_col)||(col_now==s2_col)));
       assign judge3=( (row_now==s_row)&&((col_now==t1_col)||(col_now==t2_col) ))||((row_now==f_row)&&((col_now==t1_col)||(col_now==t2_col)))||( (row_now==t_row)&&((col_now==t1_col)||(col_now==t2_col)))||((row_now==t_row)&&(col_now==ID) );
endmodule                                                                                                                                                                       
