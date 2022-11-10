module cal_block_rest(
input [23:0] GRBdata/* synthesis syn_keep=1 */,
input clk/* synthesis syn_keep=1 */,
input [6:0] row_now/* synthesis syn_keep=1 */,
input [6:0] col_now/* synthesis syn_keep=1 */,
input data_rd/* synthesis syn_keep=1 */,
//input cal_clk,
input rst/* synthesis syn_keep=1 */,
output [23:0] result/* synthesis syn_keep=1 */
    );
    
    parameter [1:0] location=0;
    parameter [6:0] self_addr=1;
    
   wire judge1;
   wire judge2;
   wire judge3; 
    wire usefuldata;
    generate 
        if(location==2'b0)
            begin
        judge_rest #
        (.f_row(53),
        .f_col(1),
        .t_colleft(1),
        .t_colright(3),
        .t_rowup(52),
        .t_rowdown(53),
        .s_rowup(51),
        .s_rowdown(53),
        .s_colleft(1),
        .s_colright(2))
        judgerow_1
        (.row_now(row_now),
        .col_now(col_now),
        .judge1(judge1),
        .judge2(judge2),
        .judge3(judge3));
            end
       else if(location==2'b1)
                        begin
                    judge_rest #
                    (.f_row(53),
                            .f_col(96),
                            .t_colleft(94),
                            .t_colright(96),
                            .t_rowup(51),
                            .t_rowdown(53),
                            .s_rowup(52),
                            .s_rowdown(53),
                            .s_colleft(95),
                            .s_colright(96))
                    judgerow_2
                    (.row_now(row_now),
                    .col_now(col_now),
                    .judge1(judge1),
                    .judge2(judge2),
                    .judge3(judge3));
                        end
        else if(location==2'd2)
                                               begin
                                           judge_rest #
                                           (.f_row(1),
                                                   .f_col(1),
                                                   .t_colleft(1),
                                                   .t_colright(3),
                                                   .t_rowup(1),
                                                   .t_rowdown(3),
                                                   .s_rowup(1),
                                                   .s_rowdown(2),
                                                   .s_colleft(1),
                                                   .s_colright(3))
                                           judgerow_3
                                           (.row_now(row_now),
                                           .col_now(col_now),
                                           .judge1(judge1),
                                           .judge2(judge2),
                                           .judge3(judge3));
                                               end
         else if(location==2'd3)
                                                                      begin
                                                                  judge_rest #
                                                                  (.f_row(1),
                                                                          .f_col(96),
                                                                          .t_colleft(94),
                                                                          .t_colright(96),
                                                                          .t_rowup(1),
                                                                          .t_rowdown(3),
                                                                          .s_rowup(1),
                                                                          .s_rowdown(2),
                                                                          .s_colleft(95),
                                                                          .s_colright(96))
                                                                  judgerow_4
                                                                  (.row_now(row_now),
                                                                  .col_now(col_now),
                                                                  .judge1(judge1),
                                                                  .judge2(judge2),
                                                                  .judge3(judge3));
                                                                      end
    endgenerate
    
reg [7:0] Gdata=0/* synthesis syn_preserve = 1 */;
reg [7:0] Bdata=0/* synthesis syn_preserve = 1 */;
reg [7:0] Rdata=0/* synthesis syn_preserve = 1 */;
wire [7:0] datarowG1={1'b0,GRBdata[23:17]}/* synthesis syn_keep=1 */;
    wire [7:0] datarowB1={1'b0,GRBdata[7:1]}/* synthesis syn_keep=1 */;
    wire [7:0] datarowR1={1'b0,GRBdata[15:9]}/* synthesis syn_keep=1 */;
    wire [7:0] datarowG2={4'b0,GRBdata[23:20]}/* synthesis syn_keep=1 */;
    wire [7:0] datarowB2={4'b0,GRBdata[7:4]}/* synthesis syn_keep=1 */;
    wire [7:0] datarowR2={4'b0,GRBdata[15:12]}/* synthesis syn_keep=1 */;
    wire [7:0] datarowG3={6'b0,GRBdata[23:22]}/* synthesis syn_keep=1 */;
    wire [7:0] datarowB3={6'b0,GRBdata[7:6]}/* synthesis syn_keep=1 */;
    wire [7:0] datarowR3={6'b0,GRBdata[15:14]}/* synthesis syn_keep=1 */;
    wire [2:0] step_judge={judge3,judge2,judge1}/* synthesis syn_keep=1 */;
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
        reg data_begin=0/* synthesis syn_preserve = 1 */;
    always@(posedge data_rd or negedge rst)
        begin
          if(!rst)
            begin
                //data_begin<=0;
                 data_begin<=0;
               /*  Gdata<=8'b0;
                 Bdata<=8'b0;
                 Rdata<=8'b0;*/
            end
           else
                case(step_judge)
                                 3'b001:begin
                                 if(data_begin==0)
                                  begin
                                      data_begin<=1;
                                       Gdata<=datarowG1/* synthesis syn_preserve = 1 */;
                                                                                        Bdata<=datarowB1/* synthesis syn_preserve = 1 */;
                                                                                        Rdata<=datarowR1/* synthesis syn_preserve = 1 */;
                                  end
                                   else  begin
                                                             Gdata<=Gdata+datarowG1/* synthesis syn_preserve = 1 */;
                                                             Bdata<=Bdata+datarowB1/* synthesis syn_preserve = 1 */;
                                                             Rdata<=Rdata+datarowR1/* synthesis syn_preserve = 1 */;
                                                    end
                                    end
                                 3'b010:begin
                                                        if(data_begin==0)
                                  begin
                                      data_begin<=1;
                                       Gdata<=datarowG2/* synthesis syn_preserve = 1 */;
                                                                                        Bdata<=datarowB2/* synthesis syn_preserve = 1 */;
                                                                                        Rdata<=datarowR2/* synthesis syn_preserve = 1 */;
                                  end
                                         else        begin
                                                 Gdata<=Gdata+datarowG2/* synthesis syn_preserve = 1 */;
                                                 Bdata<=Bdata+datarowB2/* synthesis syn_preserve = 1 */;
                                                 Rdata<=Rdata+datarowR2/* synthesis syn_preserve = 1 */;
                                               end
                                    end
                                 3'b100:begin
                                                        if(data_begin==0)
                                  begin
                                      data_begin<=1;
                                       Gdata<=datarowG3/* synthesis syn_preserve = 1 */;
                                                                                        Bdata<=datarowB3/* synthesis syn_preserve = 1 */;
                                                                                        Rdata<=datarowR3/* synthesis syn_preserve = 1 */;
                                  end
                                     else                         begin
                                                                Gdata<=Gdata+datarowG3/* synthesis syn_preserve = 1 */;
                                                                Bdata<=Bdata+datarowB3/* synthesis syn_preserve = 1 */;
                                                                Rdata<=Rdata+datarowR3/* synthesis syn_preserve = 1 */;
                                                             end
                                                   end
                                 endcase
        end
   // reg [23:0] outputdata=24'b0;
    assign result={Gdata,Bdata,Rdata};
endmodule