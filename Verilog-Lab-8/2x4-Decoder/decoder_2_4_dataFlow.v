module decoder_2_4 (D, A, B, E);
    input A, B, E;
    output [0:3] D;

    assign  D[0] = ~(~A & ~B & ~E),
            D[1] = ~(~A & B & ~E),
            D[2] = ~(A & ~B & ~E),
            D[3] = ~(A & B & ~E);

endmodule // decoder_2_4
