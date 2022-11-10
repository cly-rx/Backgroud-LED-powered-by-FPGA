`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/09 10:31:13
// Design Name: 
// Module Name: re_top
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


module datarecieve(
input clk,
input clk_forrx,
input hdmi_vs,
input rx,
input rst,
output [9:0] R_divisor,
output [9:0] G_divisor,
output [9:0] B_divisor
);
wire [7:0] rx_data;
wire rx_data_ready;
wire rx_data_valid;
reg valid=0;
reg re_counter=0;
assign rx_data_ready=valid&&hdmi_vs;
uart_rx uart_rx_inst
(
	.clk                        (clk_forrx                  ),
	.rst_n                      (1'b1                    ),
	.rx_data                    (rx_data                  ),
	.rx_data_valid              (rx_data_valid            ),
	.rx_data_ready              (rx_data_ready            ),
	.rx_pin                     (rx                 )
);

reg [1:0] state=0;
localparam IDLE=0;
localparam waiting=1;
localparam data_recieve=3;
localparam colour_judge=2;

reg [3:0] data=0;
reg [3:0] control=0;

localparam [7:0] G=8'h1;
localparam [7:0] B=8'h2;
localparam [7:0] R=8'h3;
/*assign G_divisor=G;
assign B_divisor=B;
assign R_divisor=R;*/
reg [3:0] colour=0;
reg [7:0] data_addr=0;
reg [3:0] G_buffer=4'b1;
reg [3:0] B_buffer=4'b1;
reg [3:0] R_buffer=4'b1;
reg need_changeG=0;//将要转换数据
reg need_changeR=0;//将要转换数据
reg need_changeB=0;//将要转换数据
reg rise_reset=0;//用于上升沿完成一次复位
//reg switch=0;
always@(posedge clk or negedge rst)
	begin
		if(!rst)
			begin
				state<=IDLE;
				valid<=0;
				rise_reset<=0;
			end
		else 
		     begin	
			case(state)
			IDLE:begin
				state<=waiting;
				valid<=1;
				//re_counter<=0;
				data<=4'b1;
				control<=0;
				//rise_reset<=0;
				//switch<=0;
			end
			waiting:begin
			if(rise_reset==0)
			 begin
			     rise_reset<=1;
			     need_changeG<=0;
			     need_changeR<=0;
			     need_changeB<=0;
			 end
			 else begin
				if(rx_data_valid==1)
					begin
					  // re_counter<=1'b1;
					   control<=rx_data[7:4];
					   data<=rx_data[3:0];
					   state<=colour_judge;
					end
				/*1'b1:begin
				if(rx_data_valid==1)
					begin
					   re_counter<=1'b0;
					   data<=rx_data;
					   valid<=0;
					   state<=colour_judge;
					 
					end
				end		*/   
				end        
			end
			colour_judge:begin
                  state<=data_recieve;
                  G_buffer<=4'b1;
                  B_buffer<=4'b1;
                  R_buffer<=4'b1;
			end
			data_recieve:begin
				case(colour)
                        4'h1:begin
                        G_buffer<=data;
                        				state<=IDLE;
                        				need_changeG<=1;
                        end
                        4'h2:begin
                        B_buffer<=data;
                        				state<=IDLE;
                        				need_changeB<=1;
                        end
                        4'h3:begin
                        R_buffer<=data;
                        				state<=IDLE;
                        				need_changeR<=1;
                        end
                        default:begin
                        G_buffer<=4'b1;
                        B_buffer<=4'b1;
                        R_buffer<=4'b1;
                        state<=IDLE;
                          end
                        endcase		
			end
			default:state<=IDLE;
		            endcase
		     end
	end
wire [3:0] Gwire=G_buffer;
wire [3:0] Bwire=B_buffer;
wire [3:0] Rwire=R_buffer;
reg [1:0] changing=0;
reg beginning=0;
/*always@(negedge clk)
	begin
	case(beginning)
	1'b0:
	begin
		G_buffer<=400;
		B_buffer<=400;
		R_buffer<=400;
		beginning<=1'b1;
	end
	1'b1:
	begin
		case(colour)
		2'b1:G_buffer<=data_addr;
		2'd2:B_buffer<=data_addr;
		2'd3:R_buffer<=data_addr;
		default:begin
		G_buffer<=10'd400;
        B_buffer<=10'd400;
        R_buffer<=10'd400;
		  end
        endcase
	end
	default:beginning<=1'b0;
	endcase
end*/

re G_inst(
.clk(clk),
.switch(hdmi_vs),
.change(need_changeG),
.re_data(Gwire),
.data(G_divisor)
);
re B_inst(
.clk(clk),
.switch(hdmi_vs),
.change(need_changeB),
.re_data(Bwire),
.data(B_divisor)
);
re R_inst(
.clk(clk),
.switch(hdmi_vs),
.change(need_changeR),
.re_data(Rwire),
.data(R_divisor)
);

endmodule