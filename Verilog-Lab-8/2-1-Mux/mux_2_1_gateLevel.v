module mux_2_1 (out, A, B, S);
    // If S = 0, select B
    // If S = 1, select A
    input A, B, S;
    output out;
    wire a1, a2, n1;

    and(a1, A, S);
    not(n1, S);
    and(a2, B, n1);

    or(out, a1, a2);

endmodule // mux_2_1
