`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/21 17:43:46
// Design Name: 
// Module Name: cal_block_rest
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


module cal_block_rest(
input [23:0] GRBdata,
input clk,
input [5:0] colorrow,
input data_rd,
//input cal_clk,
input rst,
output [23:0] result,
output data_ok,
output [6:0] led_addr
    );
    
    parameter location=0;
    parameter [5:0] self_addr=1;
    
    localparam IDLE=1;
    localparam waiting=0;
    localparam ok=2;
    reg ledaddr=self_addr;
    reg [1:0] state=0;
    reg dataok=0;
    reg [23:0] data=0;
    
    wire usefuldata;
    generate 
    if(location==0)
    begin
        judge_row #
        (.ID(self_addr))
        judgerow_inst
        (.row(colorrow),
        .true(usefuldata));
    end
    else if(location==1)
    begin
       judge_col #
    (.ID(self_addr))
            judgecol_inst
            (.col(colorrow),
            .true(usefuldata));
            end
    endgenerate
    
    
    
    assign data_ok=dataok;

always@(posedge data_rd or negedge rst)
    begin
        if(!rst)
            begin
            state<=waiting;
            dataok<=0;
            end
        else
            begin
                case(state)
                    IDLE:begin
                    state<=waiting;
                    dataok<=0;
                    //data<=0;
                    end
                    waiting:begin
                    if(usefuldata==1'b1)
                 begin
                            state<=ok;
                            data<=GRBdata;
                            dataok<=1;       
               end
         end
                endcase
            end
    end    
     assign result={data[23:16],data[7:0],data[15:8]};
endmodule
