module choose(
//input clk,
input judge,
output data_choosed,
input [23:0] raw_data,
input [4:0] addr
    );
    reg data_reg=0;
    assign data_choosed=data_reg;
always@(posedge judge)
    begin
    case(addr)
    5'b0:data_reg<=raw_data[0];
    5'b1:data_reg<=raw_data[1];
    5'd2:data_reg<=raw_data[2];
    5'd3:data_reg<=raw_data[3];
    5'd4:data_reg<=raw_data[4];
    5'd5:data_reg<=raw_data[5];
    5'd6:data_reg<=raw_data[6];
    5'd7:data_reg<=raw_data[7];
    5'd8:data_reg<=raw_data[8];
    5'd9:data_reg<=raw_data[9];
    5'd10:data_reg<=raw_data[10];
    5'd11:data_reg<=raw_data[11];
    5'd12:data_reg<=raw_data[12];
    5'd13:data_reg<=raw_data[13];
    5'd14:data_reg<=raw_data[14];
    5'd15:data_reg<=raw_data[15];
    5'd16:data_reg<=raw_data[16];
    5'd17:data_reg<=raw_data[17];
    5'd18:data_reg<=raw_data[18];
    5'd19:data_reg<=raw_data[19];
    5'd20:data_reg<=raw_data[20];
    5'd21:data_reg<=raw_data[21];
    5'd22:data_reg<=raw_data[22];
    5'd23:data_reg<=raw_data[23];
    endcase
     end
endmodule