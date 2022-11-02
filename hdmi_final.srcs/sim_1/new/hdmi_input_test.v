`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 14:50:04
// Design Name: 
// Module Name: hdmi_input_test
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


module hdmi_input_test(
//input hdmi_clk,
//input cal_clk,
//input [23:0] GRB_alldata,
//input [9:0] read_addr_input,
//input hdmi_hs,
//input hdmi_vs,
//input hdmi_de,
//input hotplug,
output [23:0] GRBout,
output dataready,
output [9:0] block_now
//output [59:0] divide_buf
//output [59:0] final_output_wire
   );
   reg hs=0;
   reg vs=0;
   reg hot=1'b1;
   wire hdmi_clk;
   wire cal_clk;
   wire [23:0] GRB_alldata;
   wire hdmi_hs=hs;
   wire hdmi_vs=vs;
   wire hdmi_de=1'b1;
   wire hotplug=hot;
   reg clk=0;
   wire clk_wire=clk;
   reg [23:0] GRB=24'b001111110011001100111100;
   assign GRB_alldata=GRB;
 clk_wiz_0 instance_name
     (
      // Clock out ports
      .clk_out1(cal_clk),     // output clk_out1
      .clk_out2(hdmi_clk),     // output clk_out2
      // Status and control signals
      .reset(1'b0), // input reset
      .locked(),       // output locked
     // Clock in ports
      .clk_in1(clk_wire));      // input clk_in1
           initial begin
      forever #5 clk=~clk;
      end
  reg [10:0] counter=0;
           //reg hs=1'b1;
           always@(posedge clk_wire)
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
                hs<=1'b0;
                counter<=counter+1'b1;
                end
            end
            reg [9:0] row_reg=0;
           // wire hdmi_hs;
         //   assign hdmi_hs=hs;
            assign row=row_reg;
            always@(negedge hdmi_hs)
                begin
                    row_reg=row_reg+1'b1;
                end



//wire GRBdataall;
wire [59:0] final_output_wire;
wire [59:0] divide_buf;
parameter [10:0] row_length=1920;
parameter [10:0] col_length=1080;
parameter [6:0] slice_row_length=32;
parameter [6:0] slice_col_length=18;
parameter [10:0] addr_max=576;
parameter [5:0] counter_width=60;
parameter [4:0] self_reg=24;//自身所属分区

reg [5:0] row_counter;
reg [5:0] col_counter;
reg [9:0] write_addr;
//reg [9:0] read_addr;
reg slice_change=0;
reg judge=0;
reg [19:0] data_calG;
reg [19:0] data_calB;
reg [19:0] data_calR;
reg [19:0] data_calG2;
reg [19:0] data_calB2;
reg [19:0] data_calR2;
reg data_rdy=0;
reg [4:0] cal_counter=0;
reg [2:0] cal_state=0;
reg V_ok;//一帧全分区数据处理完毕
reg [5:0] row_block_counter=0;//行分区计数
reg [3:0] state;
reg [59:0] waiting_data;//下一个分区的数据
reg waiting_ok=0;
reg [59:0] final_output=0;
reg [9:0] totalblock_counter=0;
reg [9:0] row_first_block=0;

assign final_output_wire=final_output;
wire [19:0] finalG;
wire [19:0] finalR;
wire [19:0] finalB;
wire channel1wire;
wire channel2wire;
wire recognize_clk;
wire reset;
wire channel1;
wire channel2;

/*wire [23:0] data_calGwire;
wire [23:0] data_calBwire;
wire [23:0] data_calRwire;
wire [23:0] data_calGwire2;
wire [23:0] data_calBwire2;
wire [23:0] data_calRwire2;
*/
assign reset=hotplug&&(~hdmi_vs);//复位
assign recognize_clk=channel1|channel2;
//assign finalG=final_output[59:40];
//assign finalR=final_output[39:20];
//assign finalB=final_output[19:0];
assign block_now=totalblock_counter;

wire [59:0] data_row1;
wire [59:0] data_row2;
wire chose;//通道选择信号，0为ch1，1为ch2
wire ch1;
wire ch2;

reg channel_choose=0;
wire output_en;
assign chose=channel_choose;
assign output_en=channel1|channel2;
reg [1:0] re_buffer_state=0;
reg block_out=0;//分区发送信号
wire blockout;
assign blockout=block_out;
localparam waiting=0;
localparam recieving=1;
localparam judging=2;
always@(posedge cal_clk or posedge hdmi_hs)
  begin
    if(hdmi_hs)
        begin
            re_buffer_state<=waiting;
            row_block_counter<=6'b0;
            block_out<=1'b0;
        end
        else
        begin
	 case(re_buffer_state)
	   waiting:begin
	      if(recognize_clk==1'b1)
	       re_buffer_state<=recieving;
	        else 
	        block_out<=1'b0;
	   end
	   recieving:begin
	       if(channel1==1'b1)//*修改
	       begin
	       final_output<=data_row1;
	       re_buffer_state<=waiting;
	       //channel_choose<=~channel_choose;
	       block_out<=1'b1;
	       row_block_counter<=row_block_counter+1'b1;
	       end
	       else
	       begin
	       final_output<=data_row2;
	        re_buffer_state<=waiting;
	        //channel_choose<=~channel_choose;
	        row_block_counter<=row_block_counter+1'b1;
	        block_out<=1'b1;
	        end
	   end
	      default:re_buffer_state<=waiting;
	 endcase
	 end
 end
 
 
 block_re block_re_ch1(
 .hdmi_clk(~hdmi_clk),
 //cal_clk,
 .GRBdataall(GRB_alldata),
 //input [9:0] read_addr_input,
// .hdmi_hs(hdmi_hs),
 .hdmi_vs(hdmi_vs),
 .hdmi_de(ch1),
 .hotplug(hotplug),
 .channel_wire(channel1),
 .data(data_row1)
 );
 block_re block_re_ch2(
 .hdmi_clk(~hdmi_clk),
 //cal_clk,
 .GRBdataall(GRB_alldata),
 //input [9:0] read_addr_input,
 //.hdmi_hs(hdmi_hs),
 .hdmi_vs(hdmi_vs),
 .hdmi_de(ch2),
 .hotplug(hotplug),
 .channel_wire(channel2),
 .data(data_row2)
 );

 switch switch_inst(
 .channel1(channel1),
 .channel2(channel2),
 .reset(~hdmi_vs),
 .ch1(ch1),
 .ch2(ch2)
 );
 always@(posedge hdmi_hs or posedge hdmi_vs)//行计数
    begin
        if(hdmi_vs)
            begin
                row_counter<=6'b0;
            end
        else
            begin
                if(row_counter!=6'd59)
                    row_counter<=row_counter+1'b1;
                else 
                    row_counter<=6'b0;
            end
    end
// wire [59:0] divide_buf;
 //assign divide_buf={finalG,finalR,finalB};
 wire ok; 
    register regester_inst(
    .clk(~cal_clk),
    //.addr(row_block_counter),
    .row_now(row_counter),
    .data(final_output_wire),
    .rst(reset),
    .rd(blockout),
    .GRBdata(divide_buf),
    .ok(ok)
    );
 reg [1:0] div_state=0;
 localparam wait_for=0;
 localparam calculating=1;
 localparam sendingout=2;
 reg control=0;
 wire div_con;
 reg [5:0] waitingcounter=0;
 reg dataok=0;
 assign div_con=control;
 always @(negedge cal_clk or negedge reset)//除法器控制器&分区对外广播控制器
    begin
      if(!reset)
       begin
       control<=0;
       div_state<=wait_for;
       waitingcounter<=0;
       dataok<=0;
       totalblock_counter<=10'b0;
       end
       else
        begin
        case(div_state)
            wait_for:begin
                if(ok==1)
                begin
                control<=1'b1;
                div_state<=calculating;
                end
            end
            calculating:begin
                if(waitingcounter!=6'd21)
                waitingcounter<=waitingcounter+1;
                else
                begin//修改
                waitingcounter<=6'b0;
                div_state<=sendingout;
                end
            end
            sendingout:begin
               if(waitingcounter!=6'b1)
                begin
                waitingcounter<=waitingcounter+1'b1;
                dataok=1;
                end
               else
                begin
                dataok<=0;
                waitingcounter<=6'b0;
                div_state<=wait_for;
                control<=1'b0;
                totalblock_counter<=totalblock_counter+1'b1;
                end
            end
            default:div_state<=wait_for;
       endcase
       end
    end
    assign dataready=dataok;
    //wire [2:0] div_finish;
    wire [39:0] zero1;
    wire [39:0] zero2;
    wire [39:0] zero3;
   // assign zero_wire=zero;
 div_gen_0 G (
   .aclk(cal_clk),                                      // input wire aclk
   .s_axis_divisor_tvalid(div_con),    // input wire s_axis_divisor_tvalid
   .s_axis_divisor_tdata({4'b0000,12'b111000010000}),      // input wire [15 : 0] s_axis_divisor_tdata
   .s_axis_dividend_tvalid(div_con),  // input wire s_axis_dividend_tvalid
   .s_axis_dividend_tdata({4'b0000,divide_buf[59:40]}),    // input wire [23 : 0] s_axis_dividend_tdata
   .m_axis_dout_tvalid(),          // output wire m_axis_dout_tvalid
   .m_axis_dout_tdata({zero1})            // output wire [31 : 0] m_axis_dout_tdata
 );
 assign GRBout[23:16]=zero1[23:16];
  div_gen_0 R (
   .aclk(cal_clk),                                      // input wire aclk
   .s_axis_divisor_tvalid(div_con),    // input wire s_axis_divisor_tvalid
   .s_axis_divisor_tdata({4'b0000,12'b111000010000}),      // input wire [15 : 0] s_axis_divisor_tdata
   .s_axis_dividend_tvalid(div_con),  // input wire s_axis_dividend_tvalid
   .s_axis_dividend_tdata({4'b0000,divide_buf[39:20]}),    // input wire [23 : 0] s_axis_dividend_tdata
   .m_axis_dout_tvalid(),          // output wire m_axis_dout_tvalid
   .m_axis_dout_tdata(zero2)            // output wire [31 : 0] m_axis_dout_tdata
 );
  assign GRBout[15:8]=zero2[23:16];
   div_gen_0 B (
  .aclk(cal_clk),                                      // input wire aclk
  .s_axis_divisor_tvalid(div_con),    // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata({4'b0000,12'b111000010000}),      // input wire [15 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_con),  // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata({4'b0000,divide_buf[19:0]}),    // input wire [23 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(),          // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(zero3)            // output wire [31 : 0] m_axis_dout_tdata
);
 assign GRBout[7:0]=zero3[23:16];

endmodule
