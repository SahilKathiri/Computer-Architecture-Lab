module t_mux_2_1;
  wire out;
  reg a, b, S;

  mux_2_1 S1(out, a, b, S );
  initial begin
    a = 0; b = 0; S = 0;
    #50
    a = 0; b = 0; S = 1;
    #50
    a = 0; b = 1; S = 0;
    #50
    a = 0; b = 1; S = 1;
    #50
    a = 1; b = 0; S = 0;
    #50
    a = 1; b = 0; S = 1;
    #50
    a = 1; b = 1; S = 0;
    #50
    a = 1; b = 1; S = 1;
    #50
    a = 0; b = 0; S = 0;
  end
  initial
  $monitor("| A = %b | B = %b | S = %b | out = %b | time = %0d |", a, b, S, out, $time);
endmodule
