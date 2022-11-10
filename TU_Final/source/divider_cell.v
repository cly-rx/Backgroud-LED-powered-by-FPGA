// parameter M means the actual width of divisor
module    divider_cell
    #(parameter N=5,
      parameter M=3)
    (
      input                     clk,
      input                     rstn,
      input                     en,

      input [M:0]               dividend,
      input [M-1:0]             divisor,
      input [N-M:0]             merchant_ci , //��һ���������
      input [N-M-1:0]           dividend_ci , //ԭʼ����

      output reg [N-M-1:0]      dividend_kp,  //ԭʼ��������Ϣ
      output reg [M-1:0]        divisor_kp,   //ԭʼ������Ϣ
      output reg                rdy ,
      output reg [N-M:0]        merchant ,  //���㵥Ԫ�����
      output reg [M-1:0]        remainder   //���㵥Ԫ�������
    );

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            rdy            <= 'b0 ;
            merchant       <= 'b0 ;
            remainder      <= 'b0 ;
            divisor_kp     <= 'b0 ;
            dividend_kp    <= 'b0 ;
        end
        else if (en) begin
            rdy            <= 1'b1 ;
            divisor_kp     <= divisor ;  //ԭʼ�������ֲ���
            dividend_kp    <= dividend_ci ;  //ԭʼ����������
            if (dividend >= {1'b0, divisor}) begin
                merchant    <= (merchant_ci<<1) + 1'b1 ; //��Ϊ1
                remainder   <= dividend - {1'b0, divisor} ; //����
            end
            else begin
                merchant    <= merchant_ci<<1 ;  //��Ϊ0
                remainder   <= dividend ;        //��������
            end
        end // if (en)
        else begin
            rdy            <= 'b0 ;
            merchant       <= 'b0 ;
            remainder      <= 'b0 ;
            divisor_kp     <= 'b0 ;
            dividend_kp    <= 'b0 ;
        end
    end

endmodule