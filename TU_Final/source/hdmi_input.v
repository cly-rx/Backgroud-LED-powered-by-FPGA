
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/16 16:44:09
// Design Name: 
// Module Name: hdmi_input
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


module hdmi_input(
input hdmi_clk/* synthesis syn_keep=1 */,
input cal_clk/* synthesis syn_keep=1 */,
input [23:0] GRB_alldata/* synthesis syn_keep=1 */,
//input [9:0] read_addr_input,
input hdmi_hs/* synthesis syn_keep=1 */,
input hdmi_vs/* synthesis syn_keep=1 */,
input hdmi_de/* synthesis syn_keep=1 */,
input hotplug/* synthesis syn_keep=1 */,
output [23:0] GRBout/* synthesis syn_keep=1 */,
output dataready/* synthesis syn_keep=1 */,
output [9:0] block_now/* synthesis syn_keep=1 */,
output [6:0] row/* synthesis syn_keep=1 */,
output [6:0] row_block/* synthesis syn_keep=1 */
//output [59:0] divide_buf
//output [59:0] final_output_wire
   );
//wire GRBdataall;
wire [59:0] final_output_wire;
wire [59:0] divide_buf;

reg [5:0] row_counter=0;
reg [5:0] col_counter;
reg [9:0] write_addr;
//reg [9:0] read_addr;
reg slice_change=0;
reg judge=0;
reg data_rdy=0;
reg [4:0] cal_counter=0;
reg [2:0] cal_state=0;
reg V_ok;//һ֡ȫ�������ݴ������
reg [6:0] row_block_counter=0;//�з�������
reg [3:0] state;
reg [59:0] waiting_data;//��һ������������
reg waiting_ok=0;
reg [59:0] final_output=0;
reg [9:0] totalblock_counter=0;
reg [9:0] row_first_block=0;

assign final_output_wire=final_output;
wire [19:0] finalG;
wire [19:0] finalR;
wire [19:0] finalB;
wire recognize_clk;
wire reset;
wire channel1;


assign reset=hotplug&&(~hdmi_vs)&&(~hdmi_hs);//��λ
assign recognize_clk=channel1;
//assign finalG=final_output[59:40];
//assign finalR=final_output[39:20];
//assign finalB=final_output[19:0];
assign block_now=totalblock_counter;

wire [59:0] data_row1;
wire [59:0] data_row2;
wire chose;//ͨ��ѡ���źţ�0Ϊch1��1Ϊch2
wire ch1;
wire ch2;
//assign row=row_block_counter;
reg channel_choose=0;
wire output_en;
assign chose=channel_choose;
assign output_en=channel1;
reg [1:0] re_buffer_state=0;
reg block_out=0;//���������ź�
wire blockout;
reg [2:0] delay_counter=0;
assign blockout=block_out;
localparam waiting=0;
localparam delay=3;
localparam recieving=1;
localparam judging=2;
reg [9:0] total_detect=0;
always@(posedge cal_clk or posedge hdmi_hs)
  begin
    if(hdmi_hs)
        begin
            re_buffer_state<=waiting;
            //row_block_counter<=6'b0;
            block_out<=1'b0;
            delay_counter<=3'b0;
            
           // final_output<=data_row2;
        end
        else
        begin
	 case(re_buffer_state)
	   waiting:begin
	      if(channel1==1'b1&&row_block_counter!=7'd96)
	      begin
	       re_buffer_state<=recieving;
	       final_output<=0;
	       end
	        else 
	        block_out<=1'b0;
	   end
	   delay:begin
	       case(delay_counter)
	           3'd3:begin
	           re_buffer_state<=waiting;
	           delay_counter<=3'b0;
	           //row_block_counter<=row_block_counter+1'b1;
	           end
	           default:begin
	           delay_counter<=delay_counter+1'b1;
	           end
	       endcase
	   end
	   recieving:begin
	       final_output<=data_row1;
	       re_buffer_state<=delay;
	        //channel_choose<=~channel_choose;
	       block_out<=1'b1;
	      // row_block_counter<=row_block_counter+1'b1;
	   end
	      default:re_buffer_state<=waiting;
	 endcase
	 end
 end
 assign row_block=row_block_counter;
 wire run;
 block_re block_re_ch1(
 .hdmi_clk(hdmi_clk),
 //cal_clk,
 .GRBdataall(GRB_alldata),
 //input [9:0] read_addr_input,
// .hdmi_hs(hdmi_hs),
 .hdmi_vs(hdmi_vs),
 .hdmi_hs(hdmi_hs),
 .hdmi_de(hdmi_de),
 .hotplug(hotplug),
 .channel_wire(channel1),
 .data(data_row1)
 );
 reg [5:0] block_row=0;
assign row={1'b0, block_row};
always@(posedge hdmi_hs or posedge hdmi_vs)//�м���
    begin
        if(hdmi_vs)
            begin
                block_row<=6'b0;
                row_counter<=6'b0;
            end
        else 
        begin
        if(row_counter!=6'd19)
            begin
                    //block_row<=block_row+1'b1;
                    row_counter<=row_counter+1'b1;
            end
            else begin
            row_counter<=6'b0;
            block_row<=block_row+1'b1;
            end
          end
    end
   // wire [5:0] rowdetect=row_block_counter;
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
 localparam addrchange=3;
 reg control=0;
 wire div_con;
 reg [5:0] waitingcounter=0;
 reg dataok=0;
 assign div_con=control;
 always @(negedge cal_clk or posedge hdmi_hs)//������������&��������㲥������
    begin
      if(hdmi_hs)
       begin
       control<=0;
       div_state<=wait_for;
       waitingcounter<=0;
       dataok<=0;
       row_block_counter<=7'b0;
       end
       else
        begin
        case(div_state)
            wait_for:begin
                if(ok==1)
                begin
                control<=1'b1;
                div_state<=calculating;
                total_detect<=totalblock_counter;
                end
            end
            calculating:begin
                if(waitingcounter!=6'd21)
                waitingcounter<=waitingcounter+1;
                else
                begin//�޸�
                waitingcounter<=6'b0;
                div_state<=sendingout;
                control<=1'b0;
                end
            end
            sendingout:begin
               if(waitingcounter!=6'b1)
                begin
                waitingcounter<=waitingcounter+1'b1;
                dataok<=1;
                end
               else
                begin
                dataok<=0;
                waitingcounter<=6'b0;
                div_state<=wait_for;
                row_block_counter<=row_block_counter+1'b1;
                //totalblock_counter<=totalblock_counter+1'b1;
                end
            end
            addrchange:begin
            if (waitingcounter==6'd10)
                begin
            totalblock_counter<=totalblock_counter+1'b1;
            div_state<=wait_for;
            waitingcounter<=6'b0;
                end
            else waitingcounter<=waitingcounter+1'b1;
            end
            default:div_state<=wait_for;
       endcase
       end
    end
    assign dataready=dataok;
    //wire [2:0] div_finish;
    wire [16:0] zero1;
    wire [16:0] zero2;
    wire [16:0] zero3;
   // assign zero_wire=zero;
 /*div_gen_0 G (
   .aclk(cal_clk),                                      // input wire aclk
   .s_axis_divisor_tvalid(div_con),    // input wire s_axis_divisor_tvalid
   .s_axis_divisor_tdata({6'b000000,10'b0110010000}),      // input wire [15 : 0] s_axis_divisor_tdata
   .s_axis_dividend_tvalid(div_con),  // input wire s_axis_dividend_tvalid
   .s_axis_dividend_tdata({7'b0000,divide_buf[56:40]}),    // input wire [23 : 0] s_axis_dividend_tdata
   .m_axis_dout_tvalid(),          // output wire m_axis_dout_tvalid
   .m_axis_dout_tdata({zero1})            // output wire [31 : 0] m_axis_dout_tdata
 );
 assign GRBout[23:16]=zero1[23:16];
  div_gen_0 R (
   .aclk(cal_clk),                                      // input wire aclk
   .s_axis_divisor_tvalid(div_con),    // input wire s_axis_divisor_tvalid
   .s_axis_divisor_tdata({6'b000000,10'b0110010000}),      // input wire [15 : 0] s_axis_divisor_tdata
   .s_axis_dividend_tvalid(div_con),  // input wire s_axis_dividend_tvalid
   .s_axis_dividend_tdata({7'b0000,divide_buf[36:20]}),    // input wire [23 : 0] s_axis_dividend_tdata
   .m_axis_dout_tvalid(),          // output wire m_axis_dout_tvalid
   .m_axis_dout_tdata(zero2)            // output wire [31 : 0] m_axis_dout_tdata
 );
  assign GRBout[15:8]=zero2[23:16];
   div_gen_0 B (
  .aclk(cal_clk),                                      // input wire aclk
  .s_axis_divisor_tvalid(div_con),    // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata({6'b000000,10'b0110010000}),      // input wire [15 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(div_con),  // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata({7'b0000000,divide_buf[16:0]}),    // input wire [23 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(),          // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(zero3)            // output wire [31 : 0] m_axis_dout_tdata
);*/
  divider_man G (
    .clk(cal_clk),
    .rstn(1'b1),
    .data_rdy(div_con),
    .dividend(divide_buf[56:40]),
    .divisor(10'b0110010000),
    .res_rdy(),
    .merchant(zero1),
    .remainder()
);
assign GRBout[23:16]=zero1[7:0];
 divider_man R (
    .clk(cal_clk),
    .rstn(1'b1),
    .data_rdy(div_con),
    .dividend(divide_buf[36:20]),
    .divisor(10'b0110010000),
    .res_rdy(),
    .merchant(zero2),
    .remainder()
);
assign GRBout[15:8]=zero2[7:0];  
 divider_man B (
    .clk(cal_clk),
    .rstn(1'b1),
    .data_rdy(div_con),
    .dividend(divide_buf[16:0]),
    .divisor(10'b0110010000),
    .res_rdy(),
    .merchant(zero3),
    .remainder()
);
assign GRBout[7:0]=zero3[7:0];
// wire [9:0] todetect=total_detect;           
endmodule
