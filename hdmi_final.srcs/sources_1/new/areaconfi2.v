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
//input [6:0] self_addr,                                                                                                                                                          
input [9:0] addr_now,                                                                                                                                                           
//input clk,                                                                                                                                                                    
output judge1,                                                                                                                                                                  
output judge2,                                                                                                                                                                  
output judge3                                                                                                                                                                   
    );                                                                                                                                                                          
    parameter [9:0] ID=48;                                                                                                                                                       
    localparam [9:0] f=(ID-48)+544;                                                                                                                                                      
    localparam  [9:0] s1=f-1, s2=f+1, s3=f-31, s4=f-32, s5=f-33;                                                                                                           
    localparam [9:0] t1=f-2, t2=f+2, t3=f-30, t4=f-34, t5=f-62, t6=f-63, t7=f-64, t8=f-65, t9=f-66;                                                                     
                                                                                                                                                                                
    assign judge1=(addr_now==f);                                                                                                                                                
    assign judge2=(addr_now==s1)||(addr_now==s2)||(addr_now==s3)||(addr_now==s4)||(addr_now==s5);                                                                               
    assign judge3=(addr_now==t1)||(addr_now==t2)||(addr_now==t3)||(addr_now==t4)||(addr_now==t5)||(addr_now==t6)||(addr_now==t7)||(addr_now==t8)||(addr_now==t9);               
endmodule                                                                                                                                                                       
