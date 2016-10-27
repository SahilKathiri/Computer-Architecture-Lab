module complex_circuit(A, B, C, F1, F2);
output F1, F2;
input A, B, C;
wire T1, T2, T3, E1, E2, E3, L;

  and(T2, A, B, C);
  or(T1, A, B, C);

  and(E1, A, B);
  and(E2, A, C);
  and(E3, B, C);

  or(F2, E1, E2, E3);
  not(L, F2);

  and(T3, T1, L);
  or(F1, T2, T3);
endmodule
