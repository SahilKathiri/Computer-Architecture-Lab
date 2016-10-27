module t_complex_circuit;
  wire F1, F2;
  reg a, b, c;

  complex_circuit S1(a, b, c, F1, F2);
  initial begin
    a = 0; b = 0; c = 0;
    #50
    a = 0; b = 0; c = 1;
    #50
    a = 0; b = 1; c = 0;
    #50
    a = 0; b = 1; c = 1;
    #50
    a = 1; b = 0; c = 0;
    #50
    a = 1; b = 0; c = 1;
    #50
    a = 1; b = 1; c = 0;
    #50
    a = 1; b = 1; c = 1;
    #50
    a = 0; b = 0; c = 0;
  end
endmodule
