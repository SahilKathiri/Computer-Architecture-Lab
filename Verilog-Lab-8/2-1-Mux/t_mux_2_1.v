module t_mux_2_1;
  wire out;
  reg a, b, S;

  mux_2_1 S1(out, a, b, S );
  initial begin
    S = 0; a = 0; b = 0;
    #50
    S = 0; a = 0; b = 1;
    #50
    S = 0; a = 1; b = 0;
    #50
    S = 0; a = 1; b = 1;
    #50
    S = 1; a = 0; b = 0;
    #50
    S = 1; a = 0; b = 1;
    #50
    S = 1; a = 1; b = 0;
    #50
    S = 1; a = 1; b = 1;
    #50
    S = 0; a = 0; b = 0;
  end
  initial
  $monitor("| S = %b | A = %b | B = %b | out = %b | time = %0d |", S, a, b, out, $time);
endmodule
