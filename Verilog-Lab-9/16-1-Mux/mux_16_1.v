module mux_4_1 (out, in, sel);
    input [0:3] in;
    input [0:1] sel;
    output out;

    wire a, b, c, d, n1, n2, a1, a2, a3, a4;
    not(n1, sel[1]);
    not(n2, sel[0]);

    and(a1, in[0], n1, n2);
    and(a2, in[1], n2, sel[1]);
    and(a3, in[2], sel[0], n1);
    and(a4, in[3], sel[0], sel[1]);

    or(out, a1, a2, a3, a4);
endmodule // mux_4_1

module mux_16_1 (out, in, sel);
    input [0:15] in;
    input [0:3] sel;
    output out;

    wire [0:3] ma;

    mux_4_1 m1(ma[0], in[0:3], sel[2:3]);
    mux_4_1 m2(ma[1], in[4:7], sel[2:3]);
    mux_4_1 m3(ma[2], in[8:11], sel[2:3]);
    mux_4_1 m4(ma[3], in[12:15], sel[2:3]);

    mux_4_1 m5(out, ma, sel[0:1]);

endmodule // mux_16_1
