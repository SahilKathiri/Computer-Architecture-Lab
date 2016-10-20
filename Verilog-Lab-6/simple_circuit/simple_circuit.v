module simple_circuit(A, B, C, D, E);
output D, E;
input A, B, C;
wire w1;

    and(w1, A, B);
    not(E, C);
    or(D, w1, E);
endmodule
