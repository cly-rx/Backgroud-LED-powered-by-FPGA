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
input hdmi_clk/* synthesis syn_keep=1 */,
//input cal_clk,
input sys_clk/* synthesis syn_keep=1 */,
input [7:0] G_data_input,
input [7:0] B_data_input,
input [7:0] R_data_input,
input hdmi_hs/* synthesis syn_keep=1 */,
input hdmi_vs/* synthesis syn_keep=1 */,
input hdmi_de/* synthesis syn_keep=1 */,
//output [23:0] data_test,
//input hotplug,
//output [23:0] result [95:0],
//output [6:0] led_addr [95:0],
output gnd1,
output gnd2,
output signal1,
output signal2,
output signal3,
output signal4,
output led/* synthesis syn_keep=1 */
    );           
assign data_test=all_data;                         
   /* wire hdmi_clk;
     BUFG BUFG_inst (
         .O(hdmi_clk), // 1-bit output: Clock output.
         .I(hdmi_clk_in)  // 1-bit input: Clock input.
      );*/
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
    wire [23:0] result [95:0]/* synthesis syn_keep=1 */;
    wire [6:0] led_addr [95:0];
   // wire sys_clk; 
   // wire clk;
    wire rst;
    assign rst=(hdmi_vs)&&hotplug;
      clk_xiz_0 instance_name
     (
      // Clock out ports
      .clkout0(cal_clk),     // output clk_out1
      .clkout1(calclk),     // output clk_out2
.pll_lock(),
      // Status and control signals
      //.reset(1'b0), // input reset
     // .locked(),       // output locked
     // Clock in ports
      .clkin1(hdmi_clk));      // input clk_in1
        wire [23:0] all_data;
        wire [23:0] data_bridge/* synthesis syn_keep=1 */;
        wire [6:0] row;
    wire [9:0] block_now;
    wire [6:0] row_block;
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
    
   // wire data_pre [95:0];
        reg block_reset=1'b1;
       reg [3:0] reset_counter=4'b0;
       wire b_reset=block_reset;
       reg re_ok=0;
       reg led_begin=0;
       wire ledbegin=led_begin;
       reg [2:0] led_c=0;
       always@(posedge sys_clk or negedge hdmi_vs)
           begin
               if(!hdmi_vs)
                   begin
                       //led_begin=0;
                       block_reset<=1'b1;
                       reset_counter<=4'b0;
                       //led_c=0;
                   end
               else 
                   begin                       
                   if(reset_counter==4'b1111&&row==7'b1)
                    begin
                        block_reset<=1'b1;
                    end                   
                     else  if(reset_counter!=4'b1100&&row==7'b1&&reset_counter!=4'b1111)
                           begin
                               //led_c<=led_c+1'b1;
                               reset_counter<=reset_counter+1'b1;
                           end
                       /* else if(led_c==3'd4)
                           begin
                              // led_begin=1;
                               led_c<=led_c+1'b1;
                           end*/
                         else  if (reset_counter==4'b1100&&row==7'b1)begin
                           //led_begin<=0;
                           block_reset<=1'b0;
                           reset_counter<=reset_counter+1'b1;
                         end
  
                          else reset_counter<=reset_counter+1'b1;
                   end
           end
    genvar i;
    generate 
    for(i=0;i<30;i=i+1)
        begin
            cal_block #(
            .location(2'b0),
            .self_addr(3*i+5)
            ) cal_block_up
            (.GRBdata(all_data),
            .clk(hdmi_vs),
            .row_now(row),
            .col_now(row_block),
            .data_rd(d_ok),
            .rst(b_reset),
            .result(result[i+1])
            );
        end
    endgenerate
      generate 
      for(i=0;i<30;i=i+1)
          begin
              cal_block #(
              .location(2'b1),
              .self_addr(3*i+5)
              ) cal_block_down
              (.GRBdata(all_data),
              .clk(hdmi_vs),
              .row_now(row),
              .col_now(row_block),
              .data_rd(d_ok),
              .rst(b_reset),
              .result(result[i+49])
              );
          end
      endgenerate
    generate 
            for(i=0;i<16;i=i+1)
                begin
                    cal_block #(
                    .location(2'd2),
                    .self_addr(3*i+3)
                    ) cal_block_down
                    (.GRBdata(all_data),
                     .clk(hdmi_vs),
                    .row_now(row),
                    .col_now(row_block),
                    .data_rd(d_ok),
                    .rst(b_reset),
                    .result(result[i+32])
                    );
                end
            endgenerate
   generate 
                      for(i=0;i<16;i=i+1)
                          begin
                              cal_block #(
                              .location(2'd3),
                              .self_addr(3*i+3)
                              ) cal_block_down
                              (.GRBdata(all_data),
                              .row_now(row),
                               .clk(hdmi_vs),
                              .col_now(row_block),
                              .data_rd(d_ok),
                              .rst(b_reset),
                              .result(result[i+80])
                              );
                          end
                      endgenerate
                                                  cal_block_rest #(
                                                  .self_addr(0),
                                                  .location(2'd2)
                                                  ) cal_block1
                                                  (.GRBdata(all_data),
                                                  .row_now(row),
                                                   .clk(hdmi_vs),
                                                  .col_now(row_block),
                                                  .data_rd(d_ok),
                                                  .rst(b_reset),
                                                  .result(result[0])
                                                  );
                                      cal_block_rest #(
                                                  .self_addr(0),
                                                  .location(2'd3)
                                                  ) cal_block2
                                                  (.GRBdata(all_data),
                                                  .row_now(row),
                                                  .col_now(row_block),
                                                   .clk(hdmi_vs),
                                                  .data_rd(d_ok),
                                                  .rst(b_reset),
                                                  .result(result[31])
                                                  );
                                                    cal_block_rest #(
                                                     .self_addr(0),
                                                     .location(2'd0)
                                                     ) cal_block3
                                                     (.GRBdata(all_data),
                                                     .row_now(row),
                                                     .col_now(row_block),
                                                     .data_rd(d_ok),
                                                      .clk(hdmi_vs),
                                                     .rst(b_reset),
                                                     .result(result[48])
                                                     );
                                         cal_block_rest #(
                                                     .self_addr(0),
                                                     .location(2'd1)
                                                     ) cal_block4
                                                     (.GRBdata(all_data),
                                                     .row_now(row),
                                                     .col_now(row_block),
                                                     .data_rd(d_ok),
                                                      .clk(hdmi_vs),
                                                     .rst(b_reset),
                                                     .result(result[79])
                                                     );

   /* generate
        for(i=1;i<33;i++)
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
                                              .result(result[i-1]),
                                              .data_ok(data_pre[i-1]),
                                              .led_addr(led_addr[i-1])
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
             for(i=1;i<33;i++)
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
                                                   .result(result[i+47]),
                                                   .data_ok(data_pre[i+47]),
                                                   .led_addr(led_addr[i+47])
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
                 endgenerate           */                                                                                                                                                                                
  clk_wiz_2 led_clk
     (
      // Clock out ports
      .clkout0(clk_out1),     // output clk_out1
      .clkout1(clk_out2),     // output clk_out2
.pll_lock(),
      // Status and control signals
     // .reset(1'b0), // input reset
      //.locked(),       // output locked
     // Clock in ports
      .clkin1(sys_clk));      // input clk_in1    

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
endmodule