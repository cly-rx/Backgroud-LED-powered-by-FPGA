`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/18 19:33:25
// Design Name: 
// Module Name: data_to_block
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


module data_to_block(
//input [8:0] addr,
input clk/* synthesis syn_keep=1 */,
input [23:0] GRBdata/* synthesis syn_keep=1 */,
input data_rd/* synthesis syn_keep=1 */,
input rst/* synthesis syn_keep=1 */,
output [23:0] chosen_data/* synthesis syn_keep=1 */,
output d_ok/* synthesis syn_keep=1 */
    );
    
    reg [2:0] state=0;
    reg [23:0] databuffer=0;
    reg [4:0] counter=0;
    reg ok=0;
    assign chosen_data=databuffer;
    assign d_ok=ok;
    localparam IDLE=0;
    localparam waiting=1;
    localparam changing=2;
    localparam controling=3;
   /* genvar i;
    for(i=0;i<100;i++)
    begin
        assign chosen_data[i]=databuffer;
    end*/
always@(posedge clk or negedge rst)
    begin
     if(!rst)
        begin
            state<=IDLE;
        end
     else
        case(state)
            IDLE:begin
            databuffer<=0;
            state<=waiting;
            ok<=0;
            end
            waiting:begin
            if(data_rd==1)
                begin
                   state<=changing;
                   databuffer<=0;
                end
            end
            changing:begin
                state<=controling;
                databuffer<=GRBdata;
            end
            controling:begin
                if(counter!=1)
                    begin
                        counter<=counter+1'b1;
                        ok<=1;
                    end
                else
                    begin
                        counter<=0;
                        ok<=0;
                        state<=waiting;
                    end
            end
            default:state<=IDLE;
        endcase
    end
endmodule