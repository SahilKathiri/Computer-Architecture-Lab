module decoder_2_4 (D0, D1, D2, D3, A, B, E);
    input A, B, E;
    output D0, D1, D2, D3;
    wire na, nb, ne;

    not(na, A);
    not(nb, B);
    not(ne, E);

    nand(D0, na, nb, ne);
    nand(D1, na, b, ne);
    nand(D2, a, nb, ne);
    nand(D3, a, b, ne);
endmodule // decoder_2_4
