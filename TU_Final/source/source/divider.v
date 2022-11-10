//parameter N means the actual width of dividend
//using 29/5=5...4
module    divider_man
    #(parameter N=17,
      parameter M=10,
      parameter N_ACT = M+N-1)
    (
      input                     clk,
      input                     rstn,

      input                     data_rdy ,  //����ʹ��
      input [N-1:0]             dividend,   //������
      input [M-1:0]             divisor,    //����

      output                    res_rdy ,
      output [N_ACT-M:0]        merchant ,  //��λ��N
      output [M-1:0]            remainder ); //��������

    wire [N_ACT-M-1:0]   dividend_t [N_ACT-M:0] ;
    wire [M-1:0]         divisor_t [N_ACT-M:0] ;
    wire [M-1:0]         remainder_t [N_ACT-M:0];
    wire [N_ACT-M:0]     rdy_t ;
    wire [N_ACT-M:0]     merchant_t [N_ACT-M:0] ;

    //��ʼ���׸����㵥Ԫ
    divider_cell      #(.N(N_ACT), .M(M))
       u_divider_step0
    ( .clk              (clk),
      .rstn             (rstn),
      .en               (data_rdy),
      //�ñ��������λ 1bit ��������һ�ε�������ı���������λ��0
      .dividend         ({{(M){1'b0}}, dividend[N-1]}),
      .divisor          (divisor),                  
      .merchant_ci      ({(N_ACT-M+1){1'b0}}),   //�̳�ʼΪ0
      .dividend_ci      (dividend[N_ACT-M-1:0]), //ԭʼ������
      //output
      .dividend_kp      (dividend_t[N_ACT-M]),   //ԭʼ��������Ϣ����
      .divisor_kp       (divisor_t[N_ACT-M]),    //ԭʼ������Ϣ����
      .rdy              (rdy_t[N_ACT-M]),
      .merchant         (merchant_t[N_ACT-M]),   //��һ���̽��
      .remainder        (remainder_t[N_ACT-M])   //��һ������
      );

    genvar               i ;
    generate
        for(i=1; i<=N_ACT-M; i=i+1) begin: sqrt_stepx
            divider_cell      #(.N(N_ACT), .M(M))
              u_divider_step
              (.clk              (clk),
               .rstn             (rstn),
               .en               (rdy_t[N_ACT-M-i+1]),
               .dividend         ({remainder_t[N_ACT-M-i+1], dividend_t[N_ACT-M-i+1][N_ACT-M-i]}),   //������ԭʼ��������bit����ƴ��
               .divisor          (divisor_t[N_ACT-M-i+1]),
               .merchant_ci      (merchant_t[N_ACT-M-i+1]),
               .dividend_ci      (dividend_t[N_ACT-M-i+1]),
               //output
               .divisor_kp       (divisor_t[N_ACT-M-i]),
               .dividend_kp      (dividend_t[N_ACT-M-i]),
               .rdy              (rdy_t[N_ACT-M-i]),
               .merchant         (merchant_t[N_ACT-M-i]),
               .remainder        (remainder_t[N_ACT-M-i])
              );
        end // block: sqrt_stepx
    endgenerate

    assign res_rdy       = rdy_t[0];
    assign merchant      = merchant_t[0];  //���һ���̽����Ϊ���յ���
    assign remainder     = remainder_t[0]; //���һ��������Ϊ���յ�����

endmodule