`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 19:54:47
// Design Name: 
// Module Name: led_top
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


module led_top #
(parameter [5:0] data_num=32
) (
input clk1,
input clk2,
input ready,
//input rst,
input [23:0] data [data_num-1:0],
output signal
    );
wire [23:0] chosen_data;
wire [5:0] addr;
reg [23:0] data_buf [data_num-1:0];
reg [1:0] state;
wire [23:0] data_bridge [data_num-1:0]=data_buf[data_num-1:0];
reg led_begin=0;
reg ok=0;
genvar i;
reg [3:0] waiting=0;
generate
    for(i=0;i<data_num-1;i=i+1)
        begin
always@(posedge clk2 or negedge ready)
    begin
    if(!ready)
        begin
            data_buf[i]<=24'b0;
            state<=2'b0;
            ok<=1'b0;
        end
     else begin 
          case(state)
        2'b0:begin
        if(ready==1)
            begin
            state<=2'b1;
            end
        end
        2'b1:begin
        if(waiting==4'b1111)
            begin
            data_buf[i]<=data[i];
            state<=2'd2;
            ok<=1'b1;
            waiting<=4'b0;
            end
        else waiting<=waiting+1'b1;
        end
        endcase
        end
    end
        end
endgenerate
reg pre=1'b0;
always@(negedge clk1 or negedge ready)
    begin
    if(!ready)
        begin
            led_begin<=1'b0;
        end
        else
        begin
        if(ok==1'b1&&pre==1'b0)
            begin
                led_begin<=1'b1;
                pre<=1'b1;
             //else waiting<=waiting+1'b1;
            end
        else if(pre==1'b1)
            begin
                led_begin<=1'b0;
            end
        end 
    end
collect #
(.ADDR_WIDTH(data_num)
) collect_inst(
.clk(clk1),
.data_in_all(data),
.addr(addr),
.chosen_data(chosen_data)
);
led #
(.LEDNUM(data_num)
) led_inst(
.clk(clk1),
.clk_5m(clk2),
.GRB(chosen_data),
.ready(ready),
.addr_counter(addr),
.signal_out(signal),
.checkout1()
);
endmodule
