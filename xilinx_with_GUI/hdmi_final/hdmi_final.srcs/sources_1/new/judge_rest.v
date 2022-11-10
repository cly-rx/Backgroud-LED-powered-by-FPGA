`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/04 17:14:22
// Design Name: 
// Module Name: judge_rest
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


module judge_rest(
input [6:0] row_now,
input [6:0] col_now,
output judge1,
output judge2,
output judge3
    );
    parameter [6:0] f_row=1, f_col=1;
    parameter [6:0] s_row1=1, s_row2=1, s_row3=1, s_col1=1, s_col2=1, s_col3=1, s_colleft=1, s_rowup=1, s_colright=1, s_rowdown=1;
    parameter [6:0] t_row1=1, t_row2=1, t_row3=1, t_row4=1, t_row5=1, t_col1=1, t_col2=1, t_col3=1, t_col4=1, t_col5=1 ,t_rowup=1, t_rowdown=1, t_colleft=1, t_colright=1;
  assign judge1=(row_now==f_row)&&(col_now==f_col);
  assign judge2=((row_now>=s_rowup)?1'b1:1'b0)&&((row_now<=s_rowdown)?1'b1:1'b0)&&((col_now>=s_colleft)?1'b1:1'b0)&&((col_now<=s_colright)?1'b1:1'b0)&&(~judge1);
  assign judge3=((row_now>=t_rowup)?1'b1:1'b0)&&((row_now<=t_rowdown)?1'b1:1'b0)&&((col_now>=t_colleft)?1'b1:1'b0)&&((col_now<=t_colright)?1'b1:1'b0)&&((~judge1)&&(~judge2));
 /* assign judge2=((row_now==s_row1)||(row_now==s_row2)||(row_now==s_row3))&&((col_now==s_col1)||(col_now==s_col2)||(col_now==s_col3));
  assign judge2=((row_now==t_row1)||(row_now==t_row2)||(row_now==t_row3)||(row_now==t_row4)||(row_now==t_row5))&&((col_now==t_col1)||(col_now==t_col2)||(col_now==t_col3)||(col_now==t_col4)||(col_now==t_col5));*/
endmodule
