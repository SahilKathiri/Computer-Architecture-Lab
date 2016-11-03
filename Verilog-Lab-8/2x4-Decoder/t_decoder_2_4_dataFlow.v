module t_mux_2_1;
  wire [0:3] D;
  reg a, b, e;

  decoder_2_4 S1(D, a, b, e );
  initial begin
    e = 0; a = 0; b = 0;
    #50
    e = 0; a = 0; b = 1;
    #50
    e = 0; a = 1; b = 0;
    #50
    e = 0; a = 1; b = 1;
    #50
    e = 1; a = 0; b = 0;
    #50
    e = 1; a = 0; b = 1;
    #50
    e = 1; a = 1; b = 0;
    #50
    e = 1; a = 1; b = 1;
    #50
    e = 0; a = 0; b = 0;
  end
  initial
  $monitor("| E = %b | A = %b | B = %b | D0 D1 D2 D3 = %b %b %b %b | time = %0d |", e, a, b, D[0], D[1], D[2], D[3], $time);
endmodule
