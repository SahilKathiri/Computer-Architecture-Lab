module binary_adder (sum, c_out, A, B, c_in);
    output [3:0] sum;
    output  c_out;
    input [3:0] A, B;
    input c_in;

    assign {c_out, sum} = A + B + c_in;

endmodule // binary_adder
