`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 14:10:28
// Design Name: 
// Module Name: top_top
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


module top_top(
output [23:0] data_bridge,
output dataready,
output [9:0] block_now,
output [9:0] row
    );
    reg [7:0] G=8'b00111111;
    reg [7:0] B=8'b00111111;
    reg [7:0] R=8'b11001101;
    wire [7:0] G_data_input;
    wire [7:0] B_data_input;
    wire [7:0] R_data_input;
    assign G_data_input=G;
    assign B_data_input=B;
    assign R_data_input=R;
    reg main_clk=0;
    wire mainclk_wire;
    assign mainclk_wire=main_clk;
     clk_wiz_0 instance_name
      (
       // Clock out ports
       .clk_out1(cal_clk),     // output clk_out1
       .clk_out2(clk),     // output clk_out2
       // Status and control signals
       .reset(1'b0), // input reset
       .locked(),       // output locked
      // Clock in ports
       .clk_in1(mainclk_wire));      // input clk_in1
       reg [10:0] counter=0;
       reg hs=1'b1;
       always@(posedge mainclk_wire)
        begin
            if(counter==11'd1920)
                begin
                counter<=counter+1'b1;
                hs<=1'b0;
                end
            else if(counter==11'd1921)
                begin
                    counter<=11'b0;
                    hs<=1'b1;
                end
            else begin
            counter<=counter+1'b1;
            end
        end
        reg [9:0] row_reg=0;
        wire hdmi_hs;
        assign hdmi_hs=hs;
        assign row=row_reg;
        always@(negedge hdmi_hs)
            begin
                row_reg=row_reg+1'b1;
            end
       hdmi_input hdmi_input_inst(
           .hdmi_clk(~clk),
           .cal_clk(~cal_clk),
           .GRB_alldata({G_data_input,R_data_input,B_data_input}),
           .hdmi_hs(~hdmi_hs),
           .hdmi_vs(1'b0),
           .hdmi_de(1'b1),
           .hotplug(1'b1),
           .GRBout(data_bridge),
           .dataready(dataready),
           .block_now(block_now)
           );
           initial begin
           forever #5 main_clk=~main_clk;
           end
endmodule
