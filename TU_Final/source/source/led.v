module led
# (parameter
LEDNUM=25)
(input clk,
input clk_5m,
input [23:0] GRB,
input ready,
output [5:0] addr_counter,
output signal_out,
output checkout1
);
localparam waiting=0;
localparam working=1;
localparam delay=2;
//localparam delay2=3;
localparam wait_forsend=3;
localparam [4:0] FULL_NUM=LEDNUM-1;
//localparam [4:0] GRB_num=10'd24;
reg [5:0] num_counter=0;
reg [3:0] state=0;
reg [4:0] pixel_datanum_counter=0;
reg [23:0] GRB_buffer;
reg judge=0;
reg pixel_out_on;
reg [4:0] small_counter=5'b0;
reg check=1;
wire pixel_out_on_wire;//像素点输出开始标志位
wire [23:0] GRB_wire;
wire finisho;//像素点输出结束标志位
wire panduan;
wire judgeo;
assign judgeo=judge;
//assign panduan=judgeo&finisho;
assign GRB_wire=GRB_buffer;
assign pixel_out_on_wire=pixel_out_on;
assign addr_counter=num_counter;
assign checkout1=check;
always@(posedge clk)
	begin
		case(state)
		 waiting:begin
		 	if(ready==1)
		 	state<=working; 
		 	//check<=check; 
			end
		  working:begin
		 	if(num_counter==LEDNUM)//这里的判定可能要改
		 		begin
				  //state<=wait_forsend;
                  num_counter<=0;
                  state<=waiting;
                  //check<=~check;
				end
			else 
				begin
				 GRB_buffer<=GRB;
                judge<=1'b1;
                state<=delay;
                check<=~check;
                pixel_out_on<=1;
				end
			end
	     delay:begin
	       if(small_counter!=5)
	       begin
	       small_counter<=small_counter+1'b1;
	       end
	       else
	       begin
	       small_counter<=5'b0;
	       state<=wait_forsend;
	       pixel_out_on<=0;
	       end
	     end
		 wait_forsend:begin	 		 
/*           if(small_counter!=5'd15)
                begin
                  small_counter<=small_counter+1;
                end
             else if(small_counter==5'd15)
                begin
                  
                end
			 else */if(panduan==1)	
				begin
                 small_counter<=5'b0;
                 judge<=1'b0;
				 state<=working;
                 num_counter<=num_counter+1'b1;                 
				end
		     end
 		endcase

	end

outputdata outputdata_inst(
.clk(clk_5m),
.GRBdata(GRB_wire),
.on(pixel_out_on_wire),
.finisho(finisho),
.dataout(signal_out),
.checkout()
//.testout() 
);
panduan panduan_inst(
.judge(judgeo),
.finish(finisho),
.panduan(panduan)
);
wire [3:0] test_state;
assign test_state=state;
endmodule