module outputdata(
input clk,
input [23:0] GRBdata,
input on,
output finisho,
output dataout,
output checkout
//output [23:0] testout
   );
 parameter MAX_NUM=5'd24-1;
 localparam MAX_use=5'd24-1;
 localparam [10:0] high_1_time=11'd80;
 localparam [10:0] high_0_time=11'd40;
 localparam [10:0] max=11'd125;
 localparam [10:0] start=11'd0;
 parameter [5:0] addrmax=24;
 localparam waiting=0;
 localparam judge=1;
 localparam judge2=2;
 localparam out=3;
 localparam out2=4;
 reg check=0;
 reg high_time;
 reg judgebuffer;
 reg [3:0] state=0;
 reg finish=1;
 reg [10:0] counter=0;
 reg [10:0] counter2=0;
 reg [4:0] addr_counter=MAX_NUM;
 reg outputbuffer=0;
 reg [23:0] GRBbuffer;
 reg [23:0] buffer_test;
 reg addr_change=0;//µÿ÷∑—°‘Ò«–ªª
 wire addr_changing;
 // used_data;
  wire databuffer;
  wire [4:0] addr_use;
  assign addr_use=addr_counter;
  assign addr_changing=addr_change;
 assign dataout=outputbuffer;
 assign finisho=finish;
assign checkout=check;
//assign testout=buffer_test;
always@(posedge clk)
    begin
        case(state)
            waiting:begin
                    if(on==1)
                    begin
                    state<=judge;
                    finish<=0;
                    check=~check;
                    GRBbuffer<= GRBdata;
                    //check<=~check;
                  //  buffer_test<=GRBdata;
                    end
                end
            judge:begin
                    if(addr_counter!=5'b11111)
                    begin                   
                    state<=judge2;
                    addr_change<=1;
                    //check<=~check;
                   // databuffer<=GRBbuffer[addr_counter];
                   // buffer_test<=buffer_test-1'b1;
                    end
                    else
                    begin
                    addr_counter<=5'd23;
                    finish<=1;
                    state<=waiting;
                    outputbuffer<=1'b0;
                    //check<=~check;
                    end
                end
            judge2:begin
                    if(databuffer==0)
                    begin
                    state<=out;
                   // high_time<=high_0_time;
                    addr_change<=0;
                    end
                    else if(databuffer==1)
                    begin
                    state<=out2;
                    //high_time<=high_1_time;
                    addr_change<=0;
                    end
                end
            out:begin
                        case(counter)
                            start:begin
                            outputbuffer<=1'b1;
                            counter<=counter+1'b1;
                            end
                            high_0_time:begin
                            outputbuffer<=1'b0;
                            counter<=counter+1'b1;
                            end
                            max:begin
                            counter<=11'b0;
                            state<=judge;
                            addr_counter<=addr_counter-1'b1;
                            outputbuffer<=1'b0;
                            //check<=~check;
                            end
                            default:begin
                            counter<=counter+1'b1;
                            end
                        endcase
                    end
            out2:begin
                                case(counter2)
                                    start:begin
                                    outputbuffer<=1'b1;
                                    counter2<=counter2+1'b1;
                                    end
                                    high_1_time:begin
                                    outputbuffer<=1'b0;
                                    counter2<=counter2+1'b1;
                                    end
                                    max:begin
                                    counter2<=11'b0;
                                    state<=judge;
                                    addr_counter<=addr_counter-1'b1;
                                   // check<=~check;
                                    outputbuffer<=1'b0;
                                    end
                                    default:begin
                                    counter2<=counter2+1'b1;
                                    end
                                endcase
                            end
        endcase
    end
    
 choose choose_inst(
// .clk(clk_out_1),
 .judge(addr_changing),
 .raw_data(GRBdata),
 .addr(addr_use),
 .data_choosed(databuffer)
 );
/*  clk_wiz_1 instance_name
   (
    // Clock out ports
    .clk_out1(clk_out1),     // output clk_out1
    // Status and control signals
    .reset(1'b0), // input reset
    .locked(),       // output locked
   // Clock in ports
    .clk_in1(clk));      // input clk_in1*/
    wire [3:0] state_test;
    assign state_test=state;
endmodule