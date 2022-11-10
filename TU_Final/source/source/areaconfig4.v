module areaconfig_right(                                                                                                                                                           
input [6:0] row_now/* synthesis syn_keep=1 */,
input [6:0] col_now/* synthesis syn_keep=1 */,                                                                                                                                                               
output judge1/* synthesis syn_keep=1 */,                                                                                                                                                                  
output judge2/* synthesis syn_keep=1 */,                                                                                                                                                                  
output judge3/* synthesis syn_keep=1 */                                                                                                                                                                   
    );                                                                                                                                                                          
    parameter [6:0] ID=1;                                                                                                                                                       
    localparam [6:0] f_col=7'd96, f_row=ID, s_col=7'd95, t_col=7'd94;
    localparam  s1_row=ID-1, s2_row=ID+1;
    localparam [6:0] t1_row=ID-2, t2_row=ID+2;
    assign judge1=(row_now==f_row)&&(col_now==f_col);
    assign judge2=( (col_now==s_col)&&((row_now==s1_row)||(row_now==s2_row) ))||((col_now==f_col)&&((row_now==s1_row)||(row_now==s2_row)));
    assign judge3=( (col_now==s_col)&&((row_now==t1_row)||(row_now==t2_row) ))||((col_now==f_col)&&((row_now==t1_row)||(row_now==t2_row)))||( (col_now==t_col)&&((row_now==t1_row)||(row_now==t2_row)))||((col_now==t_col)&&(row_now==ID) );          
endmodule       
