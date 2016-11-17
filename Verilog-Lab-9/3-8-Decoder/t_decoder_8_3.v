module t_decoder_8_3;
  wire S, C;
  reg a, b, c;

  FAdder S1(S, C, a, b, c );
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

  initial begin
    $monitor("| a = %b | b = %b | c = %b | Sum = %b | Carry = %b |", a, b, c, S, C);
  end
endmodule
