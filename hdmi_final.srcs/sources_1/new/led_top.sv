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
