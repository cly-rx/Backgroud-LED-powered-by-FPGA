`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 14:25:04
// Design Name: 
// Module Name: register
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


module register(
input clk,
//input [5:0] addr,
input [5:0] row_now,
input [59:0] data,
input rst,
input rd,
output [59:0] GRBdata,
output ok

    );
    reg [6:0] addr=0;
    reg [3:0] state=0;
    reg [59:0] in=0;

    reg [59:0] out=0;
    reg [59:0] insid=0;
    reg write_en=0;
    reg [5:0] counter=0;
    reg ok_reg=0;
    reg [6:0] read_addr=0;
    wire [6:0] rd_addr=read_addr;
    reg rd_ena=0;
    reg [1:0] delay_c=0;
    wire read_d=rd_ena;
    wire write_ena;
    wire [59:0] out_buf;
   // wire reading;
    wire [59:0] inside_wire;
    
    assign inside_wire=insid;
    assign GRBdata=out;
    assign write_ena=write_en;
    assign ok=ok_reg;
    //assign reading=rd_ena;
    
    localparam IDLE=0;
    localparam waiting=1;
    localparam judge=2;
    localparam write=3;
    localparam read=4;
    localparam dataout=5;
    localparam delay=6;
always@(posedge clk or negedge rst)
    begin
        if(!rst)
            begin
            state<=waiting;
            addr<=7'd0;
            read_addr<=7'd0;
            end
        else
            begin
                case(state)
                    IDLE:begin
                    state<=waiting;
                    rd_ena<=0;
                    counter<=0;
                    in<=0;
                    insid<=0;
                    out<=0;
                    ok_reg<=0;
                    write_en<=0;
                    end
                    waiting:begin
                    if(rd==1)
                        begin
                        state<=judge;
                        in<=data;
                        //addr<=addr+1'b1;
                       // rd_ena<=0;
                       /* case(addr)
                            5'd31:read_addr<=5'd0;
                            default:read_addr<=read_addr+1'b1;
                        endcase*/
                        end
                        //else rd_ena<=1'b0;
                    end
                    judge:begin
                    if(row_now==19)
                        begin
                            state<=dataout;
                            insid[59:40]<=out_buf[59:40]+in[59:40];
                            insid[39:20]<=out_buf[39:20]+in[39:20];
                            insid[19:0]<=out_buf[19:0]+in[19:0];
                            out<=59'b0;
                        end
                    else if(row_now!=0)
                        begin
                            state<=write;
                            insid[59:40]<=out_buf[59:40]+in[59:40];
                            insid[39:20]<=out_buf[39:20]+in[39:20];
                            insid[19:0]<=out_buf[19:0]+in[19:0];
                        end
                    else begin
                                                 state<=write;
                                                insid[59:40]<=20'b0+in[59:40];
                                                insid[39:20]<=20'b0+in[39:20];
                                                insid[19:0]<=20'b0+in[19:0];
                    end        
                    end
                    write:begin
                        write_en<=1'b1;
                        state<=read;
                        rd_ena<=1'b0;
                    //    rd_ena<=1;                               
                    end
                    read:begin
                    if(delay_c==2'b0)
                        begin
                            delay_c<=delay_c+1'b1;
                        end
                    else if(delay_c==2'b1)
                        begin
                            delay_c<=delay_c+1'b1;
                            write_en<=1'b0;
                            rd_ena<=1'b1;
                            insid<=0;
                            //addr<=addr+1'b1;
                            read_addr<=read_addr+1'b1;         
                        end 
                    else if(delay_c==2'd2)
                        begin
                            delay_c<=delay_c+1'b1;
                        end
                    else 
                        begin
                            delay_c<=2'b0;
                            //inside<=out_buf;
                            state<=waiting;
                            addr<=addr+1'b1;
                            //read_addr<=read_addr+1;
                        end
                    end
                    dataout:begin
                    //state<=waiting;
                    out<=insid;
                    state<=delay;
                    end
                    delay:begin
                        case(counter)
                            6'd3:begin
                            state<=read;
                            counter<=0;
                            ok_reg<=0;
                            /*case(addr)//读地址切换：读写入的地址的下一个地址
                                                                                5'd31:addr<=5'd0;
                                                                                default:addr<=addr+1'b1;
                                                                                endcase */   
                            end
                            default:begin
                            counter<=counter+1'b1;
                            ok_reg<=1;
                            end
                            endcase
                    end
                endcase
            end
    end
    wire [6:0] addr_wire;
    assign addr_wire=addr;
G_re your_instance_name (
      .wr_clk(~clk),    // input wire clka
      //.ena(1'b1),      // input wire ena
      .wr_en(write_ena),      // input wire [0 : 0] wea
      .wr_addr(addr_wire),  // input wire [4 : 0] addra
      .wr_data(inside_wire),    // input wire [59 : 0] dina
      .rd_clk(~clk),    // input wire clkb
      //.enb(read_d),      // input wire enb
      .rd_addr(rd_addr),  // input wire [4 : 0] addrb
      .rd_data(out_buf),  // output wire [59 : 0] doutb
      .rst(1'b0)
    );
endmodule