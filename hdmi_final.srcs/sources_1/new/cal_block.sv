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
input clk,
input [9:0] addr_in,
input data_rd,
//input cal_clk,
input rst,
output [23:0] result,
output data_ok,
output [6:0] led_addr
    );
    parameter [1:0] location=2'b1;//区分灯位置用的
    
    wire usefulldata;
    
    reg [7:0] Gdata;
    reg [7:0] Bdata;
    reg [7:0] Rdata;
    
    reg [3:0] input_counter;
    
    parameter [6:0] self_addr=1;//编号（可复用）
    reg [6:0] addr;
    //作用分区存储与分级
    reg [20:0] F_1=21'b0;
  //  reg [17:0] F_final;
    reg [32:0] S_buf=33'b0; //S_2, S_3, S_4, S_5;
    reg [35:0] T_buf=36'b0;// T_2, T_3, T_4, T_5, T_6, T_7, T_8, T_9;
    assign led_addr=addr;
    
    reg addr_state=0;  
    localparam IDLE=1;
    localparam normal=0;
 always@(posedge data_rd or negedge rst)//用来赋地址的
    begin
      if(!rst)
        addr_state<=IDLE;
      else
        begin
        case(addr_state)
            IDLE:begin
            addr<=self_addr;
            addr_state<=normal;
            end
            normal:begin
            addr_state<=normal;
            end
            default:addr_state<=IDLE;
        endcase
      end
    end   
    
    wire judge1;
    wire judge2;
    wire judge3;
generate
    if(location==2'b0)
        begin
            areaconfig_up #
            (.ID(self_addr))
            areaconfigup_inst
            (//.self_addr(led_addr),  
            .addr_now(addr_in),   
            //input clk,            
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
                    (//.self_addr(led_addr),  
                    .addr_now(addr_in),   
                    //input clk,            
                     .judge1(judge1),          
                    .judge2(judge2),        
                    .judge3(judge3)           
                    ); 
        end
      else if(location==2'd2)
            begin
                areaconfig_left #
                    (.ID(self_addr))areaconfigleft_inst
                        (//.self_addr(led_addr),  
                        .addr_now(addr_in),   
                        //input clk,            
                         .judge1(judge1),          
                        .judge2(judge2),        
                        .judge3(judge3)           
                        ); 
            end
       else
            begin
                areaconfig_right #
                    (.ID(self_addr))areaconfigright_inst
                        (//.self_addr(led_addr),  
                        .addr_now(addr_in),   
                        //input clk,            
                         .judge1(judge1),          
                        .judge2(judge2),        
                        .judge3(judge3)           
                        ); 
            end
endgenerate    
    
    reg [1:0] state_1=1;
    reg ready1=0;
    localparam wait_data=0;
    localparam ok1=2;
 always@(posedge data_rd or negedge rst)//第一层数据
    begin
        if(!rst)
            begin
                state_1<=wait_data;
                ready1<=0;
                F_1<=0;
            end
        else
            begin
                case(state_1)
                    IDLE:begin
                    F_1<=0;
                    state_1<=wait_data;
                    end
                    wait_data:begin
                    if(judge1==1)//&&data_rd==1)
                        begin
                            F_1[20:14]<=GRBdata[23:17];
                            F_1[13:7]<=GRBdata[15:9];
                            F_1[6:0]<=GRBdata[7:1];
                           state_1<=ok1;
                           ready1<=1;
                        end
                    end
                    default:state_1<=wait_data;
                endcase
            end
    end
    
    reg [2:0] state_2=0;
    reg ready2=0;
    reg [2:0] s2_num=0;
    reg [7:0] data2=0;
    reg [20:0] S_final;
    //wire [7:0] datacal_2;
    //reg [2:0] xishu;
   // assign datacal_2=xishu*S_buf;
    localparam n1=0;
    localparam n2=2;
    localparam n3=3;
    localparam n4=4;
    localparam n5=5;
    localparam cal2=6;
   // localparam store=7;
    localparam ok2=7;
    //localparam delay_buf=8;
 always@(posedge data_rd or negedge rst)//第二层
    begin
        if(!rst)
            begin
            state_2<=n1;
            ready2<=0;
            S_buf<=0;
            end
        else
            begin
             case(state_2)
                IDLE:begin
                ready2<=0;
                S_buf<=0;
                state_2<=n1;
                S_final<=0;
                //s2_num=0;
                end
                n1:begin
                if(judge2==1)//&&data_rd==1)
                begin
                state_2<=n2;
                S_buf[32:22]<=S_buf[32:22]+GRBdata[23:16];
                S_buf[21:11]<=S_buf[21:11]+GRBdata[15:8];
                S_buf[10:0]<=S_buf[10:0]+GRBdata[7:0];
               // s2_num<=s2_num+1;
                end
                end
                n2:begin
                if(judge2==1)//&&data_rd==1)
                begin
                state_2<=n3;
                S_buf[32:22]<=S_buf[32:22]+GRBdata[23:16];
                S_buf[21:11]<=S_buf[21:11]+GRBdata[15:8];
                S_buf[10:0]<=S_buf[10:0]+GRBdata[7:0];
                end
                end
                n3:begin
                if(judge2==1)//&&data_rd==1)
                begin
                state_2<=n4;
                S_buf[32:22]<=S_buf[32:22]+GRBdata[23:16];
                S_buf[21:11]<=S_buf[21:11]+GRBdata[15:8];
                S_buf[10:0]<=S_buf[10:0]+GRBdata[7:0];
                end
                end
                n4:begin
                if(judge2==1)//&&data_rd==1)
                                begin
                state_2<=n5;
                S_buf[32:22]<=S_buf[32:22]+GRBdata[23:16];
                S_buf[21:11]<=S_buf[21:11]+GRBdata[15:8];
                S_buf[10:0]<=S_buf[10:0]+GRBdata[7:0];                
                end
                end
                n5:begin
                if(judge2==1)//&&data_rd==1)
                                begin
                state_2<=ok2;
                S_buf[32:22]<=S_buf[32:22]+GRBdata[23:16];
                S_buf[21:11]<=S_buf[21:11]+GRBdata[15:8];
                S_buf[10:0]<=S_buf[10:0]+GRBdata[7:0];        
                             ready2<=1;        
                end
                end
                /*cal2:begin
                state_2<=ok2;
                S_final[20:14]<=S_buf[32:26];
                S_final[13:7]<=S_buf[21:15];
                S_final[6:0]<=S_buf[10:4];  
                end*/
                default:state_2<=n1;
             endcase
            end
    end
    
    reg [3:0] state_3=0;
    reg ready3=0;
    reg [17:0] T_final=0;
    localparam s1=0;
    localparam s2=2;
    localparam s3=3;
    localparam s4=4;
    localparam s5=5;
    localparam s6=6;
    localparam s7=7;
    localparam s8=8;
    localparam s9=9;
    localparam cal_3=10;
    localparam ok3=11;
always@(posedge data_rd or negedge rst)//第三级
    begin
        if(!rst)
            begin
            state_3<=s1;
            ready3<=0;
            T_buf<=0;
            end
        else 
            begin
            case(state_3)
                IDLE:begin
                //T_buf<=0;
                ready3<=0;
                state_3<=s1;
                T_buf<=0;
                T_final<=0;
                end
                s1:begin
                if(judge3==1)//&&data_rd==1)
                begin
                T_buf[35:24]<=T_buf[35:24]+{4'b0000,GRBdata[23:16]};
                T_buf[23:12]<=T_buf[23:12]+{4'b0000,GRBdata[15:8]};
                T_buf[11:0]<=T_buf[11:0]+{4'b0000,GRBdata[7:0]};
                state_3<=s2;
                end
                end
                s2:begin
                if(judge3==1)//&&data_rd==1)
                begin
                T_buf[35:24]<=T_buf[35:24]+{4'b0000,GRBdata[23:16]};
                T_buf[23:12]<=T_buf[23:12]+{4'b0000,GRBdata[15:8]};
                T_buf[11:0]<=T_buf[11:0]+{4'b0000,GRBdata[7:0]};
                state_3<=s3;
                end
                end
                s3:begin
                if(judge3==1)//&&data_rd==1)
                begin
                T_buf[35:24]<=T_buf[35:24]+{4'b0000,GRBdata[23:16]};
                T_buf[23:12]<=T_buf[23:12]+{4'b0000,GRBdata[15:8]};
                T_buf[11:0]<=T_buf[11:0]+{4'b0000,GRBdata[7:0]};
                state_3<=s4;
                end
                end
                s4:begin
                 if(judge3==1)//&&data_rd==1)
                begin
                T_buf[35:24]<=T_buf[35:24]+{4'b0000,GRBdata[23:16]};
                T_buf[23:12]<=T_buf[23:12]+{4'b0000,GRBdata[15:8]};
                T_buf[11:0]<=T_buf[11:0]+{4'b0000,GRBdata[7:0]};
                state_3<=s5;
                end               
                end
                s5:begin
                if(judge3==1)//&&data_rd==1)
                begin
                T_buf[35:24]<=T_buf[35:24]+{4'b0000,GRBdata[23:16]};
                T_buf[23:12]<=T_buf[23:12]+{4'b0000,GRBdata[15:8]};
                T_buf[11:0]<=T_buf[11:0]+{4'b0000,GRBdata[7:0]};
                state_3<=s6;
                end                
                end
                s6:begin
                if(judge3==1)//&&data_rd==1)
                begin
                T_buf[35:24]<=T_buf[35:24]+{4'b0000,GRBdata[23:16]};
                T_buf[23:12]<=T_buf[23:12]+{4'b0000,GRBdata[15:8]};
                T_buf[11:0]<=T_buf[11:0]+{4'b0000,GRBdata[7:0]};
                state_3<=s7;
                end                
                end
                s7:begin
                if(judge3==1)//&&data_rd==1)
                begin
                T_buf[35:24]<=T_buf[35:24]+{4'b0000,GRBdata[23:16]};
                T_buf[23:12]<=T_buf[23:12]+{4'b0000,GRBdata[15:8]};
                T_buf[11:0]<=T_buf[11:0]+{4'b0000,GRBdata[7:0]};
                state_3<=s8;
                end                
                end
                s8:begin
                if(judge3==1)//&&data_rd==1)
                begin
                T_buf[35:24]<=T_buf[35:24]+{4'b0000,GRBdata[23:16]};
                T_buf[23:12]<=T_buf[23:12]+{4'b0000,GRBdata[15:8]};
                T_buf[11:0]<=T_buf[11:0]+{4'b0000,GRBdata[7:0]};
                state_3<=s9;
                end                
                end
                s9:begin
                if(judge3==1)//&&data_rd==1)
                begin
                T_buf[35:24]<=T_buf[35:24]+{4'b0000,GRBdata[23:16]};
                T_buf[23:12]<=T_buf[23:12]+{4'b0000,GRBdata[15:8]};
                T_buf[11:0]<=T_buf[11:0]+{4'b0000,GRBdata[7:0]};
                state_3<=ok3;
                ready3<=1;
                end                
                end
               /* cal_3:begin
                T_final[17:12]<=T_buf[35:30];
                T_final[11:6]<=T_buf[23:18];
                T_final[5:0]<=T_buf[11:6];
                end*/
                default:state_3<=s1;
            endcase
            end
    end
    
    wire data_ready;
    assign data_ready=(ready1==1'b1&&ready2==1'b1&&ready3==1'b1);
    
    reg [1:0] final_state=0;
    reg [23:0] finaldata=0;
    reg dataok=0;
   // localparam RE=0;
    localparam waiting=0;
    localparam calculating=2;
    localparam fi_ready=3;
    localparam clear=1;
 always@(negedge clk or negedge rst)
    begin
        if(!rst)
            begin
                final_state<=waiting;
                dataok<=0;
            end
        else
            begin
                case(final_state)
                    waiting:begin
                    if(data_ready==1)
                        begin
                            final_state<=calculating;
                        end
                        else dataok=1'b0;
                    end
                    calculating:begin
                        finaldata[23:16]<={1'b0,F_1[20:14]}+{1'b0,S_buf[32:26]}+{2'b0,T_buf[35:30]};
                        finaldata[15:8]<={1'b0,F_1[13:7]}+{1'b0,S_buf[21:15]}+{2'b0,T_buf[23:18]};
                        finaldata[7:0]<={1'b0,F_1[6:0]}+{1'b0,S_buf[10:4]}+{2'b0,T_buf[11:6]};
                        final_state<=fi_ready;
                    end
                    fi_ready:begin
                    dataok=1;
                    end
                    default:final_state<=waiting;
                endcase
            end
    end
    
        assign data_ok=dataok;
        assign result={finaldata[23:16],finaldata[7:0],finaldata[15:8]};
endmodule
