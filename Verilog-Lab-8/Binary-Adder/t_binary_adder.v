module t_binary_adder;
  wire [0:3] sum;
  wire c_out;

  reg [0:3] A, B;
  reg c_in;

  binary_adder S1(sum, c_out, A, B, c_in);
  initial begin
    A = 0; B = 2; c_in = 0;
    #20
    A = 2; B = 3; c_in = 0;
    #20
    A = 3; B = 1; c_in = 0;
    #20
    A = 4'ha; B = 4; c_in = 0;      // Can add hex values as 4'ha etc...
    #20                             // 4: size; h: hex
    A = 4; B = 2; c_in = 1;
    #20
    A = 1; B = 0; c_in = 1;
    #20
    A = 0; B = 3; c_in = 1;
    #20
    A = 0; B = 1; c_in = 1;
    #20
    A = 0; B = 0; c_in = 0;
  end
  initial
  $monitor("| A = %h | B = %h | c_in = %b | sum = %h | c_out = %b | time = %0d |", A, B, c_in, sum, c_out, $time);
endmodule
