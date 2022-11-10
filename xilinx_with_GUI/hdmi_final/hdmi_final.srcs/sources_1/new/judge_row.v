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
input [6:0] row_now,
input [6:0] col_now,
output judge1,
output judge2,
output judge3
    );
 parameter [6:0] ID=1;                                                                                                                                                       
       parameter [6:0] f_col=7'd0,s_col=7'd1, t_col=7'd2;
       parameter  s1_row=ID-1, s2_row=ID+1;
       parameter [6:0] t1_row=ID-2, t2_row=ID+2;
       localparam f_row=ID;
       assign judge1=(row_now==f_row)&&(col_now==f_col);
       assign judge2=( (col_now==s_col)&&((row_now==s1_row)||(row_now==s2_row) ))||((col_now==f_col)&&((row_now==s1_row)||(row_now==s2_row)));
       assign judge3=( (col_now==s_col)&&((row_now==t1_row)||(row_now==t2_row) ))||((col_now==f_col)&&((row_now==t1_row)||(row_now==t2_row)))||( (col_now==t_col)&&((row_now==t1_row)||(row_now==t2_row)))||((col_now==t_col)&&(row_now==ID) );
endmodule
