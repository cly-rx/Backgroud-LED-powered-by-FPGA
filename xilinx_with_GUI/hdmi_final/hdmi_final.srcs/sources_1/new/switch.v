`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/22 20:50:48
// Design Name: 
// Module Name: switch
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


module switch(
input channel1,
input channel2,
input de,
input hdmi_hs,
input reset,
output ch1,
output ch2,
output run
    );
    reg ch1_reg=1;
    reg ch2_reg=0;
    reg running=1;
    assign run=running;
    wire in_clk;
    wire rst=reset&&hdmi_hs;
    assign in_clk=channel1||channel2;
    reg switch=0;
    reg state=1;
    reg hard=0;
    reg [5:0] total=0;
    localparam IDLE=0;
    localparam working=1;
    assign ch1=ch1_reg;
    assign ch2=ch2_reg;
always@(posedge in_clk or negedge rst)
    begin
        if(!rst)
            begin
                ch1_reg<=1'b1;
                ch2_reg<=1'b0;
                switch<=0;
               // hard<=1;
                state<=working;
                total<=6'd0;
                running<=1'b1;
               // state<=working;
            end
        else
            begin
                case(state)
                    IDLE:begin
                         ch1_reg<=1'b1;
                         ch2_reg<=1'b0;
                         switch<=1'b0;
                         state<=working;
                    end
                    working:begin
                        if(switch==1'b0&&total!=6'd32)
                            begin
                                switch<=~switch;
                                ch1_reg<=1'b0;
                                ch2_reg<=1'b1;
                                total<=total+1'b1;
                                //running<=1'b1;
                            end
                        else if(switch==1'b1&&total!=6'd32)
                            begin
                                switch<=~switch;
                                ch2_reg<=1'b0;
                                ch1_reg<=1'b1;
                                total<=total+1'b1;
                                //running<=1'b1;
                            end
                       else running<=1'b0;    
                    end
                    default:state<=IDLE;
                endcase
            end
    end
endmodule
