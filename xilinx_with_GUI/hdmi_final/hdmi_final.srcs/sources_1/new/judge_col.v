module judge_col(
input [6:0] col,
output true
    );
    parameter [6:0] ID=5'b1;
    reg [6:0] ID_reg=ID;
    assign true=(col==ID_reg)?1'b1:1'b0;
endmodule
