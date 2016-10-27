module t_full_adder;
  wire S, C;
  reg a, b, c;

  full_adder S1(S, C, a, b, c );
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
