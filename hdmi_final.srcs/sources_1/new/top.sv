`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/18 20:01:51
// Design Name: 
// Module Name: top
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


module top(
input hdmi_clk,
//input cal_clk,
input clk_p,
input clk_n,
input [7:0] G_data_input,
input [7:0] B_data_input,
input [7:0] R_data_input,
input hdmi_hs,
input hdmi_vs,
input hdmi_de,
//input hotplug,
//output [23:0] result [95:0],
//output [6:0] led_addr [95:0],
output gnd1,
output gnd2,
output signal1,
output signal2,
output signal3,
output signal4,
output led
    );                                    
   /* wire hdmi_clk;
     BUFG BUFG_inst (
         .O(hdmi_clk), // 1-bit output: Clock output.
         .I(hdmi_clk_in)  // 1-bit input: Clock input.
      );*/
reg [11:0] risecount=0;
wire [11:0] detect=risecount;
always@(posedge hdmi_clk or negedge hdmi_hs)
    begin
        if(!hdmi_hs)
            begin
                risecount<=12'b0;
            end
        else risecount<=risecount+1'b1;
    end
    reg led_test=0;
    assign led=led_test;
    reg [31:0] test_c=0;
    always@(posedge hdmi_clk)
        begin
            if(test_c==148500000)
                begin
                    led_test<=~led_test;
                    test_c<=0;
                end
            else test_c<=test_c+1'b1;
        end
    reg GND=1'b0;
    assign gnd1=GND;
    assign gnd2=GND;
    reg hot=1'b1;
    wire hotplug=hot;
    wire [23:0] result [95:0];
    wire [6:0] led_addr [95:0];
    wire sys_clk; 
   // wire clk;
    wire rst;
    assign rst=(hdmi_vs)&&hotplug;
    IBUFDS ibufds_inst(
    .I(clk_p),
    .O(sys_clk),
    .IB(clk_n)
    );
    
      clk_wiz_0 instance_name
     (
      // Clock out ports
      .clk_out1(cal_clk),     // output clk_out1
      .clk_out2(calclk),     // output clk_out2
      // Status and control signals
      .reset(1'b0), // input reset
      .locked(),       // output locked
     // Clock in ports
      .clk_in1(hdmi_clk));      // input clk_in1
        wire [23:0] all_data;
        wire [23:0] data_bridge;
        wire [5:0] row;
    wire [9:0] block_now;
    wire [5:0] row_block;
    hdmi_input hdmi_input_inst(
    .hdmi_clk(~hdmi_clk),
    .cal_clk(~cal_clk),
    .GRB_alldata({G_data_input,B_data_input,R_data_input}),
    .hdmi_hs(~hdmi_hs),
    .hdmi_vs(~hdmi_vs),
    .hdmi_de(hdmi_de),
    .hotplug(hotplug),
    .GRBout(data_bridge),
    .dataready(dataready),
    .block_now(block_now),
    .row(row),
    .row_block(row_block)
    );


    wire d_ok;
    data_to_block data_to_block_inst(
    .clk(cal_clk),
   // .addr(blcok_now),
    .GRBdata(data_bridge),
    .data_rd(dataready),
    .rst(rst),
    .d_ok(d_ok),
    .chosen_data(all_data)
    );
    
    wire up_rd;
    wire down_rd;
    wire left_rd;
    wire right_rd;
    assign up_rd=(row==6'd0)&&d_ok;
    assign down_rd=(row==6'd17)&&d_ok;
    assign left_rd=(row_block==6'd1)&&d_ok;
    assign right_rd=(row_block==6'd32)&&d_ok;
    wire data_pre [95:0];
        reg block_reset=1'b1;
    wire b_reset=hdmi_vs;
    genvar i;
    generate
        for(i=0;i<32;i++)
            begin:block_up
                 cal_block_rest #(
                                              .self_addr(i),
                                             .location(1'b0)
                                              ) cal_block_up_inst
                                              (
                                              .clk(sys_clk),
                                              .GRBdata(all_data),
                                              .colorrow(row_block),
                                            
                                              .data_rd(up_rd),
                                              .rst(b_reset),
                                              .result(result[i]),
                                              .data_ok(data_pre[i]),
                                              .led_addr(led_addr[i])
                                              );
            end
    endgenerate
       generate
         for(i=0;i<16;i++)
             begin:block_left
                  cal_block_rest #(
                                               .self_addr(i),
                                              .location(1'b1)
                                               ) cal_block_up_inst
                                               (
                                               .clk(sys_clk),
                                               .GRBdata(all_data),
                                               
                                               .colorrow(row),
                                               .data_rd(left_rd),
                                               .rst(b_reset),
                                               .result(result[i+32]),
                                               .data_ok(data_pre[i+32]),
                                               .led_addr(led_addr[i+32])
                                               );
             end
     endgenerate
      generate
             for(i=0;i<32;i++)
                 begin:block_down
                      cal_block_rest #(
                                                   .self_addr(i),
                                                   .location(1'b0)
                                                   ) cal_block_up_inst
                                                   (
                                                   .clk(sys_clk),
                                                   .GRBdata(all_data),
                                                  .colorrow(row_block),
                                                  
                                                   .data_rd(down_rd),
                                                   .rst(b_reset),
                                                   .result(result[i+48]),
                                                   .data_ok(data_pre[i+48]),
                                                   .led_addr(led_addr[i+48])
                                                   );
                 end
         endgenerate
          generate
                     for(i=0;i<16;i++)
                         begin:block_right
                              cal_block_rest #(
                                                           .self_addr(i),
                                                           .location(1'b1)
                                                           ) cal_block_up_inst
                                                           (
                                                           .clk(sys_clk),
                                                           .GRBdata(all_data),
                                                         
                                                           .colorrow(row),
                                                           .data_rd(right_rd),
                                                           .rst(b_reset),
                                                           .result(result[i+80]),
                                                           .data_ok(data_pre[i+80]),
                                                           .led_addr(led_addr[i+80])
                                                           );
                         end
                 endgenerate
   /* generate
    for(i=2;i<30;i++)
        begin
            //if(i!=18|i!=17|i!=575|i!=543|i!=542|i!=510)
                begin:cal_block_up
                    cal_block #(
                    .self_addr(i),
                    .location(2'b0)
                    ) cal_block_inst
                    (
                    .clk(sys_clk),
                    .GRBdata(all_data),
                    .data_rd(d_ok),
                    .addr_in(block_now),
                    .rst(b_reset),
                    .result(result[i]),
                    .data_ok(data_pre[i]),
                    .led_addr(led_addr[i])
                    );
                end
    end
    endgenerate
        generate
    for(i=1;i<15;i++)
        begin
            //if(i!=18|i!=17|i!=575|i!=543|i!=542|i!=510)
                begin:cal_block_left
                    cal_block #(
                    .self_addr(i+32),
                    .location(2'd2)
                    ) cal_block_inst
                    (
                    .clk(sys_clk),
                    .GRBdata(all_data),
                    .data_rd(d_ok),
                    .addr_in(block_now),
                    .rst(b_reset),
                    .result(result[i+32]),
                    .data_ok(data_pre[i+32]),
                    .led_addr(led_addr[i+32])
                    );
                end
    end
    endgenerate
        generate
    for(i=2;i<30;i++)
        begin
            //if(i!=18|i!=17|i!=575|i!=543|i!=542|i!=510)
                begin:cal_block_down
                    cal_block #(
                    .self_addr(i+48),
                    .location(2'd1)
                    ) cal_block_inst
                    (
                    .clk(sys_clk),
                    .GRBdata(all_data),
                    .addr_in(block_now),
                    .data_rd(d_ok),
                    .rst(b_reset),
                    .result(result[i+48]),
                    .data_ok(data_pre[i+48]),
                    .led_addr(led_addr[i+48])
                    );
                end
    end
    endgenerate
        generate
    for(i=1;i<15;i++)
        begin
            //if(i!=18|i!=17|i!=575|i!=543|i!=542|i!=510)
                begin:cal_block_right
                    cal_block #(
                    .self_addr(i+80),
                    .location(2'd3)
                    ) cal_block_inst
                    (
                    .clk(sys_clk),
                    .GRBdata(all_data),
                    .data_rd(d_ok),
                    .addr_in(block_now),
                    .rst(b_reset),
                    .result(result[i+80]),
                    .data_ok(data_pre[i+80]),
                    .led_addr(led_addr[i+80])
                    );
                end
    end
    endgenerate
    
    generate
    for(i=0;i<33;i++)
        begin
        if(i==0||i==1||i==30||i==31||i==32)//||i==47||i==48||i==49||i==78||i==79||i==80||i==95)
            begin:cal_block_rest
                    cal_block_rest #(
            .self_addr(i)
           // .location(2'd3)
            ) cal_block_rest_inst
            (
            .clk(sys_clk),
            .GRBdata(all_data),
            .addr_in(block_now),
            .data_rd(d_ok),
            .rst(b_reset),
            .result(result[i]),
            .data_ok(data_pre[i]),
            .led_addr(led_addr[i])
            );
        end
      end
  endgenerate
    
  cal_block_rest #(
             .self_addr(10'd512)
            // .location(2'd3)
             ) cal_block_rest_inst47
             (
             .clk(sys_clk),
             .GRBdata(all_data),
             .addr_in(block_now),
             .data_rd(d_ok),
             .rst(b_reset),
             .result(result[47]),
             .data_ok(data_pre[47]),
             .led_addr(led_addr[47])
             );
             
     cal_block_rest #(
                        .self_addr(10'd544)
                       // .location(2'd3)
                        ) cal_block_rest_inst48
                        (
                        .clk(sys_clk),
                        .GRBdata(all_data),
                        .addr_in(block_now),
                        .data_rd(d_ok),
                        .rst(b_reset),
                        .result(result[48]),
                        .data_ok(data_pre[48]),
                        .led_addr(led_addr[48])
                        );
    cal_block_rest #(
                                   .self_addr(10'd545)
                                  // .location(2'd3)
                                   ) cal_block_rest_inst49
                                   (
                                   .clk(sys_clk),
                                   .GRBdata(all_data),
                                   .addr_in(block_now),
                                   .data_rd(d_ok),
                                   .rst(b_reset),
                                   .result(result[49]),
                                   .data_ok(data_pre[49]),
                                   .led_addr(led_addr[49])
                                   );
  cal_block_rest #(
                                                                      .self_addr(10'd574)
                                                                     // .location(2'd3)
                                                                      ) cal_block_rest_inst78
                                                                      (
                                                                      .clk(sys_clk),
                                                                      .GRBdata(all_data),
                                                                      .addr_in(block_now),
                                                                      .data_rd(d_ok),
                                                                      .rst(b_reset),
                                                                      .result(result[78]),
                                                                      .data_ok(data_pre[78]),
                                                                      .led_addr(led_addr[78])
                                                                      );
  cal_block_rest #(
                                                                                                         .self_addr(10'd575)
                                                                                                        // .location(2'd3)
                                                                                                         ) cal_block_rest_inst79
                                                                                                         (
                                                                                                         .clk(sys_clk),
                                                                                                         .GRBdata(all_data),
                                                                                                         .addr_in(block_now),
                                                                                                         .data_rd(d_ok),
                                                                                                         .rst(b_reset),
                                                                                                         .result(result[79]),
                                                                                                         .data_ok(data_pre[79]),
                                                                                                         .led_addr(led_addr[79])
                                                                                                         );
   cal_block_rest #(
                                                                                                                                            .self_addr(10'd63)
                                                                                                                                           // .location(2'd3)
                                                                                                                                            ) cal_block_rest_inst80
                                                                                                                                            (
                                                                                                                                            .clk(sys_clk),
                                                                                                                                            .GRBdata(all_data),
                                                                                                                                            .addr_in(block_now),
                                                                                                                                            .data_rd(d_ok),
                                                                                                                                            .rst(b_reset),
                                                                                                                                            .result(result[80]),
                                                                                                                                            .data_ok(data_pre[80]),
                                                                                                                                            .led_addr(led_addr[80])
                                                                                                                                            );                                                                                                      
                                     cal_block_rest #(
                                                                                                                                                                               .self_addr(10'd543)
                                                                                                                                                                              // .location(2'd3)
                                                                                                                                                                               ) cal_block_rest_inst95
                                                                                                                                                                               (
                                                                                                                                                                               .clk(sys_clk),
                                                                                                                                                                               .GRBdata(all_data),
                                                                                                                                                                               .addr_in(block_now),
                                                                                                                                                                               .data_rd(d_ok),
                                                                                                                                                                               .rst(b_reset),
                                                                                                                                                                               .result(result[95]),
                                                                                                                                                                               .data_ok(data_pre[95]),
                                                                                                                                                                               .led_addr(led_addr[95])
                                                                                                                                                                               );  */
                                                                                                                                                                                                               
  clk_wiz_2 led_clk
     (
      // Clock out ports
      .clk_out1(clk_out1),     // output clk_out1
      .clk_out2(clk_out2),     // output clk_out2
      // Status and control signals
      .reset(1'b0), // input reset
      .locked(locked),       // output locked
     // Clock in ports
      .clk_in1(sys_clk));      // input clk_in1    

/*wire configure [3:0];
assign configure[0]=data_pre[31];
assign configure[1]=data_pre[47];
assign configure[2]=data_pre[79];
assign configure[3]=data_pre[95];*/

/*ledstart ledstart_inst(
.configure(configure),
.ready(ready)
);*/

reg re_ok=0;

/*always@(posedge clk_out1)
begin
    if(data_pre[94]==1'b1&&re_ok==1'b0)
        begin
        re_ok<=1'b1;
        end
     else if(data_pre[94]==1'b1&&re_ok==1'b1)
        begin
        block_reset<=1'b0;
        //re_ok<=1'b0;
        end
     else
        begin 
     block_reset<=1'b1;
     re_ok<=1'b0;
        end
end*/
led_top #
(.data_num(6'd32)
) led_top_up
(
.clk1(clk_out2),
.clk2(clk_out1),
.ready(~hdmi_vs),
//.rst(hdmi_vs),
.data(result[31:0]),
.signal(signal1)
);

led_top #
(.data_num(6'd32)
) led_top_down
(
.clk1(clk_out2),
.clk2(clk_out1),
.ready(~hdmi_vs),
//.rst(hdmi_vs),
.data(result[79:48]),
.signal(signal2)
);

led_top #
(.data_num(5'd16)
) led_top_left
(
.clk1(clk_out2),
.clk2(clk_out1),
.ready(~hdmi_vs),
//.rst(hdmi_vs),
.data(result[47:32]),
.signal(signal3)
);

led_top #
(.data_num(5'd16)
) led_top_right
(
.clk1(clk_out2),
.clk2(clk_out1),
.ready(~hdmi_vs),
//.rst(hdmi_vs),
.data(result[95:80]),
.signal(signal4)
);
/*wire [9:0] test;
assign test[0]=data_pre[90];
assign test[1]=data_pre[91];
assign test[2]=data_pre[92];
assign test[3]=data_pre[93];
assign test[4]=data_pre[94];
assign test[5]=data_pre[95];
assign test[9]=data_pre[79];
assign test[8]=data_pre[78];
assign test[7]=data_pre[77];
assign test[6]=data_pre[76];*/
endmodule