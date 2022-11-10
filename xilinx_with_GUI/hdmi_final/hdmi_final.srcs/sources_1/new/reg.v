`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/09 10:29:52
// Design Name: 
// Module Name: reg
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


module re(
input clk,
input switch,
input change,
input [3:0] re_data,
output [9:0] data
);
localparam [9:0] L9=890;
localparam [9:0] L8=830;
localparam [9:0] L7=770;
localparam [9:0] L6=710;
localparam [9:0] L5=650;
localparam [9:0] L4=580;
localparam [9:0] L3=520;
localparam [9:0] L2=460;
localparam [9:0] L1=400;
localparam [9:0] L10=950;
//localparam [9:0] L10=300;

reg [9:0] inside=10'd400;
assign data=inside;
reg [9:0] buffer=0;
always@(posedge clk )
	begin
	   if(switch==1)
	   begin
		case(re_data)
		4'h1:buffer<=L1;
		4'h2:buffer<=L2;
		4'h3:buffer<=L3;
		4'h4:buffer<=L4;
		4'h5:buffer<=L5;
		4'h6:buffer<=L6;
		4'h7:buffer<=L7;
		4'h8:buffer<=L8;		
		4'h9:buffer<=L9;
		4'ha:buffer<=L10;
	           endcase	
	end
	end
reg state=0;
localparam begining=0;
localparam normal=1;
always@(posedge clk)
	begin	
	if(switch==0)
	  begin
	   case(state)	       
	       1'b0:begin 
	       inside<=10'd400;
	       state<=1'b1;
	      end
	      1'b1:
	      if(change==1)
	      begin
		inside<=buffer;
		end
		default:state<=1'b0;
		endcase
	end
	end
endmodule
