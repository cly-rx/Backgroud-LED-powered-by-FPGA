module block_re(
input hdmi_clk,
//input cal_clk,
input [23:0] GRBdataall,
//input [9:0] read_addr_input,
//input hdmi_hs,
input hdmi_vs,
input hdmi_hs,
input hdmi_de,
input hotplug,
output channel_wire,
output [59:0] data
//output finaloutput
   );

wire [19:0] G_data_input;
wire [19:0] B_data_input;
wire [19:0] R_data_input;
assign G_data_input={12'b0,GRBdataall[23:16]};
assign B_data_input={12'b0,GRBdataall[7:0]};
assign R_data_input={12'b0,GRBdataall[15:8]};
//reg [5:0] row_counter;
reg [6:0] col_counter=0;
reg [9:0] write_addr;
//reg [9:0] read_addr;
reg slice_change=0;
reg judge=0;
reg [19:0] data_calG=0;
reg [19:0] data_calB=0;
reg [19:0] data_calR=0;
reg [19:0] registG=0;
reg [19:0] registB=0;
reg [19:0] registR=0;
reg [4:0] cal_counter=0;
reg [2:0] cal_state=0;
reg V_ok;//一帧全分区数据处理完毕
reg [5:0] row_block_counter=0;//行分区计数
reg [1:0] state=1;
reg [59:0] waiting_data;//下一个分区的数据
reg waiting_ok=0;
reg channel=0;
reg [59:0] final_output=0;
reg [9:0] totalblock_counter;
reg [9:0] row_first_block=0;


wire recognize_clk;
wire reset;




assign reset=hotplug&&(~hdmi_vs)&&(~hdmi_hs);//复位
//assign finalG=final_output[59:40];
//assign finalR=final_output[39:20];
//assign finalB=final_output[19:0];
assign block_now=totalblock_counter;

localparam normal=1;
localparam IDLE=0;
localparam zer=2;
localparam zero=3;
//localparam normal2=2;
reg ready=0;
always@(posedge hdmi_clk or negedge reset)
	begin
                 if(!reset)
	 begin
                  state<=normal;
                      data_calG<=20'b0;
                      data_calB<=20'b0;
                      data_calR<=20'b0;
                      col_counter<=0;
          row_block_counter=0;
          state<=normal;
          ready<=0;
          //totalblock_counter<=0;
          //row_first_block<=0;
	 end
	 else
	 begin
	 	case(state)
		      IDLE:begin
		        data_calG<=20'b0;
                data_calB<=20'b0;
                data_calR<=20'b0;
	            col_counter<=0;
		      state<=normal;
		     //channel<=1'b0;
		     end
		     normal:begin
                           if(hdmi_de==1)
                         begin
                         if(col_counter!=6'd19)
                           begin
                           data_calG<=G_data_input+data_calG;
                           data_calB<=B_data_input+data_calB;
                           data_calR<=R_data_input+data_calR;
                           col_counter<=col_counter+1'b1;
                           state<=normal;
                           end
                          else
                           begin
                           data_calG<=G_data_input+data_calG;
                           data_calB<=B_data_input+data_calB;
                           data_calR<=R_data_input+data_calR;
                           col_counter<=7'b0;
                              state<=zero;
                              ready<=1'b1;
                           end
                         end
                        
                            end
                         zero:begin
                             data_calG<=G_data_input+20'b0;
                                data_calB<=B_data_input+20'b0;
                               data_calR<=R_data_input+20'b0;
                               col_counter<=col_counter+1'b1;
                               state<=normal;
                               ready<=1'b0;
                         end
		endcase
		
	end
	end
	always@(negedge hdmi_clk)
	   begin
	       if(ready==1'b1)
	           begin
	               registG<= data_calG;
	                registR<=data_calR;
	                registB<=data_calB;
	                channel<=1'b1;
	           end
	      else 
	       begin
	           channel<=1'b0;
	       end
	   end
 assign data={registG,registR,registB};
 assign channel_wire=channel;
endmodule