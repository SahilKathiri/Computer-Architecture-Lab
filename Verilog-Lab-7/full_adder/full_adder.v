module half_adder(S, C, x, y);
output S, C;
input x, y;
    xor(S, x, y);
    and(C, x, y);
endmodule

module full_adder(S, C, x, y, z);
input x, y, z;
output S, C;
wire D1, D2, D3;
  half_adder ha1(D3, D1, x, y);
  half_adder ha2(S, D2, D3, z);
  or(C, D2, D1);
endmodule
