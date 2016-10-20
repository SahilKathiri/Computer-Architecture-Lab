module t_half_adder;
  wire S, C;
  reg x, y;

  half_adder S1(x, y, S, C);
  initial
  begin
    x = 0; y = 0;
    #20
    x = 0; y = 1;
    #20
    x = 1; y = 0;
    #20
    x = 1; y = 1;
    #20
    x = 0; y = 0;
  end
endmodule
