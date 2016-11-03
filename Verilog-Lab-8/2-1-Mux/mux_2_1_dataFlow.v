module mux_2_1 (out, A, B, S);
    input A, B, S;
    output out;

    assign out = S ? A:B;    
endmodule // mux_2_1
