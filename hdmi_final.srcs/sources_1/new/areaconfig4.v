`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 19:19:59
// Design Name: 
// Module Name: areaconfig4
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


module areaconfig_right(                                                                                                                                                           
//input [6:0] self_addr,                                                                                                                                                          
input [9:0] addr_now,                                                                                                                                                           
//input clk,                                                                                                                                                                    
output judge1,                                                                                                                                                                  
output judge2,                                                                                                                                                                  
output judge3                                                                                                                                                                   
    );                                                                                                                                                                          
    parameter [9:0] ID=81;                                                                                                                                                      
    localparam [9:0] f=(32*(ID-81)+95);                                                                                                                                                    
    localparam  [9:0] s1=f-1, s2=f-32, s3=f-31, s4=f+32, s5=f+31;                                                                                                           
    localparam [9:0] t1=f-2, t2=f-64, t3=f-65, t4=f-66, t5=f-34, t6=f+30, t7=f+64, t8=f+63, t9=f+62;                                                                     
                                                                                                                                                                                
    assign judge1=(addr_now==f);                                                                                                                                                
    assign judge2=(addr_now==s1)||(addr_now==s2)||(addr_now==s3)||(addr_now==s4)||(addr_now==s5);                                                                               
    assign judge3=(addr_now==t1)||(addr_now==t2)||(addr_now==t3)||(addr_now==t4)||(addr_now==t5)||(addr_now==t6)||(addr_now==t7)||(addr_now==t8)||(addr_now==t9);               
endmodule       
