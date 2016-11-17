module t_mux_16_1;
  wire out;

  reg [0:15] in;
  reg [0:3] sel;

  mux_16_1 S1(out, in, sel);
  initial begin
    in = 16'h8000; sel = 4'h0;
    #20
    in = 16'h4000; sel = 4'h1;
    #20
    in = 16'h2000; sel = 4'h2;
    #20
    in = 16'h1000; sel = 4'h3;
    #20
    in = 16'h0800; sel = 4'h4;
    #20
    in = 16'h0400; sel = 4'h5;
    #20
    in = 16'h0200; sel = 4'h6;
    #20
    in = 16'h0100; sel = 4'h7;
    #20
    in = 16'h0080; sel = 4'h8;
    #20
    in = 16'h0040; sel = 4'h9;
    #20
    in = 16'h0020; sel = 4'ha;
    #20
    in = 16'h0010; sel = 4'hb;
    #20
    in = 16'h0008; sel = 4'hc;
    #20
    in = 16'h0004; sel = 4'hd;
    #20
    in = 16'h0002; sel = 4'he;
    #20
    in = 16'h0001; sel = 4'hf;
    #20
    in = 16'h8000; sel = 4'h0;
  end
  initial
  $monitor("| in = %b | sel = %b | out = %b ", in, sel, out);
endmodule
