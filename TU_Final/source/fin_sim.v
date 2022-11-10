`timescale 1ns / 1ps//模拟一帧数据的仿真，开始时灯会触发一次，与一帧后触发的灯控制数据进行对比
module final_sim(

    );
    reg clock=1;
    reg sys_clock=0;
    reg hdmi_hs=1;
    reg hdmi_vs=1;
    reg hotplug=0;
    reg hdmi_de=1;
    reg [23:0] GRBdata=24'b000000001111111100000000;
    localparam G=24'b111111110000000000000000;
    localparam B=24'b000000001111111100000000;
    localparam R=24'b000000000000000011111111;
    wire de=hdmi_de;
    wire hs=hdmi_hs;
    wire vs=hdmi_vs;
    wire hot=hotplug;
    wire clk=clock;
    wire sys=sys_clock;
    wire [23:0] GRB;
    wire out1,out2,out3,out4;
    assign GRB=GRBdata;
    reg [9:0] datacount=0;
    reg changed=0;
    always@(negedge clk)
        begin
            case(datacount)
                10'd959:begin
                datacount<=0;
                changed<=1;
                 case(GRBdata)
                               G:GRBdata<=B;
                               B:GRBdata<=G;
                               //R:GRBdata<=G;
                               endcase
                end
                default:begin
                datacount<=datacount+1'b1;
                changed<=0;
                end
            endcase
        end
  /*  always@(posedge clk)
        begin
        if(changed==1)
            case(GRBdata)
                G:GRBdata<=B;
                B:GRBdata<=G;
                //R:GRBdata<=G;
             endcase
        end*/
          wire finalvs=hotplug&&hdmi_vs;
   /* OBUFDS OBUFDS_inst(
    .O(clk_p),
    .OB(clk_n),
    .I(sys)
    );*/
    top top_inst(
    .hdmi_clk(clk),
    .sys_clk(sys),
    .G_data_input(GRB[23:16]),
    .B_data_input(GRB[7:0]),
    .R_data_input(GRB[15:8]),
    .hdmi_de(de),
    .hdmi_hs(hs),
    .hdmi_vs(finalvs),
    //.hotplug(hot),
    .gnd1(),
    .gnd2(),
    .signal1(out1),
    .signal2(out2),
    .signal3(out3),
    .signal4(out4),
    .led()
    );
    
    reg [20:0] counter=0;
    reg [6:0] delay=0;
            reg ready=0;
          
    always@(negedge clk)
        begin
        if(delay!=100)
            delay<=delay+1'b1;
         else begin
         hotplug<=1;
         ready<=1;
        end
        end
          reg [10:0] row_counter=0;
          reg [10:0] totalrow=0;
    always@(posedge clk)
        begin
            if(totalrow==11'd1080)
                begin
                counter<=counter+1'b1;
                hdmi_vs<=0;
                //hdmi_hs<=1;

                end
            else
                begin
                    counter<=21'b0;
                    hdmi_vs<=1;
                    hdmi_de=1;
                end
        end

  
    always@(posedge clk)
        begin
            if(row_counter!=11'd1920&&ready==1)
                begin
                    row_counter<=row_counter+1'b1;
                    hdmi_hs<=1'b1;
                end
            else if(ready==1)
                begin
                    row_counter<=11'b0;
                    hdmi_hs<=1'b0;
                    totalrow<=totalrow+1'b1;
                end
                else row_counter<=11'b0;
        end
    initial begin
   
    forever #5 sys_clock<=~sys_clock;
    end
    initial begin
    forever #7 clock<=~clock;
    end
endmodule