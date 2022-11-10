`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/18 21:54:39
// Design Name: 
// Module Name: cal_block
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


module cal_block(
input [23:0] GRBdata,
input [6:0] row_now,
input [6:0] col_now,
input data_rd,
input clk,
//input cal_clk,
input rst,
output [23:0] result
    );
    parameter [1:0] location=2'b1;//区分灯位置用的
    
    wire usefulldata;
    
    reg [7:0] Gdata=0;
    reg [7:0] Bdata=0;
    reg [7:0] Rdata=0;
    
    reg [3:0] input_counter;
    
    parameter [6:0] self_addr=1;//编号（可复用）
    reg [6:0] addr;
    //作用分区存储与分级
    reg [7:0] data=0;
    assign led_addr=addr;
    
    reg addr_state=0;  
    wire judge1;
    wire judge2;
    wire judge3;
generate
    if(location==2'b0)
        begin
            areaconfig_up #
            (.ID(self_addr))
            areaconfigup_inst
            (.row_now(row_now),
            .col_now(col_now),         
             .judge1(judge1),          
            .judge2(judge2),        
            .judge3(judge3)           
            ); 
        end
     else if(location==2'b1)
        begin
        areaconfig_down #
        (.ID(self_addr))
        areaconfigdown_inst
                    (.row_now(row_now),
                    .col_now(col_now),            
                     .judge1(judge1),          
                    .judge2(judge2),        
                    .judge3(judge3)           
                    ); 
        end
      else if(location==2'd2)
            begin
                areaconfig_left #
                    (.ID(self_addr))areaconfigleft_inst
                        (.row_now(row_now),
                                .col_now(col_now),        
                         .judge1(judge1),          
                        .judge2(judge2),        
                        .judge3(judge3)           
                        ); 
            end
       else
            begin
                areaconfig_right #
                    (.ID(self_addr))areaconfigright_inst
                        (.row_now(row_now),
                                .col_now(col_now),             
                         .judge1(judge1),          
                        .judge2(judge2),        
                        .judge3(judge3)           
                        ); 
            end
endgenerate    
 reg data_begin=0;
wire [7:0] datarowG1={1'b0,GRBdata[23:17]};
wire [7:0] datarowB1={1'b0,GRBdata[7:1]};
wire [7:0] datarowR1={1'b0,GRBdata[15:9]};
wire [7:0] datarowG2={4'b0,GRBdata[23:20]};
wire [7:0] datarowB2={4'b0,GRBdata[7:4]};
wire [7:0] datarowR2={4'b0,GRBdata[15:12]};
wire [7:0] datarowG3={6'b0,GRBdata[23:22]};
wire [7:0] datarowB3={6'b0,GRBdata[7:6]};
wire [7:0] datarowR3={6'b0,GRBdata[15:14]};
wire [2:0] step_judge={judge3,judge2,judge1};
wire [7:0] Gdatawire=(data_begin==1)?Gdata:8'b0;
wire [7:0] Bdatawire=(data_begin==1)?Bdata:8'b0;
wire [7:0] Rdatawire=(data_begin==1)?Rdata:8'b0;
/*always@(judge1 or judge2 or judge3)
    begin
        if({judge3,judge2,judge1}==3'b001)
            begin
                data_addG<=datarowG1;
                data_addB<=datarowB1;
                data_addR<=datarowR1;
            end
        else if({judge3,judge2,judge1}==3'b010)
            begin
            data_addG<=datarowG2;
            data_addB<=datarowB2;
            data_addR<=datarowR2;
             end
        else if({judge3,judge2,judge1}==3'b100)
                begin
                data_addG<=datarowG3;
                 data_addB<=datarowB3;
                data_addR<=datarowR3;
                end
    end*/
   
always@(posedge data_rd or negedge rst)
    begin
      if(!rst)
        begin
           data_begin<=0;
         /* Gdata<=0;
           Bdata<=0;
           Rdata<=0;*/
        end
       else
           case(step_judge)
                       3'b001:begin
                      /*if(data_begin==0)
                       begin
                            data_begin<=1;
                             Gdata<=datarowG1;
                                                                              Bdata<=datarowB1;
                                                                              Rdata<=datarowR1;
                        end
                         else */ begin
                                                   Gdata<=Gdatawire+datarowG1;
                                                   Bdata<=Bdatawire+datarowB1;
                                                   Rdata<=Rdatawire+datarowR1;
                                                   data_begin<=1;
                                          end
                          end
                       3'b010:begin
                                         /*    if(data_begin==0)
                       begin
                            data_begin<=1;
                             Gdata<=datarowG2;
                                                                              Bdata<=datarowB2;
                                                                              Rdata<=datarowR2;
                        end
                               else    */   begin
                                       Gdata<=Gdatawire+datarowG2;
                                       Bdata<=Bdatawire+datarowB2;
                                       Rdata<=Rdatawire+datarowR2;
                                       data_begin<=1;
                                     end
                          end
                       3'b100:begin
                                            if(data_begin==0)
                    /*    begin
                            data_begin<=1;
                             Gdata<=datarowG3;
                                                                              Bdata<=datarowB3;
                                                                              Rdata<=datarowR3;
                        end
                           else            */           begin
                                                      Gdata<=Gdatawire+datarowG3;
                                                      Bdata<=Bdatawire+datarowB3;
                                                      Rdata<=Rdatawire+datarowR3;
                                                      data_begin<=1;
                                                   end
                                         end
                       endcase
    end
    
 //assign result={Gdata,Bdata,Rdata};
    reg [23:0] outputdata=24'b0;
/* always@(negedge clk)
    begin
        if(location==2'b0)
     begin   
       outputdata<={{Gdata[6:0],1'b0},{Bdata[6:0],1'b0},{Rdata[6:0],1'b0}};
     end
    else
        begin
        outputdata<={Gdata,Bdata,Rdata};
        end
    end*/
   /* if(location==2'b0)
    assign result={{Gdata[6:0],1'b0},{Bdata[6:0],1'b0},{Rdata[6:0],1'b0}};
    else*/ assign result={Gdata,Bdata,Rdata};
endmodule
