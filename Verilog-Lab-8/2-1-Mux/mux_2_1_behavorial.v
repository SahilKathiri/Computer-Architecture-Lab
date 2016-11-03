module mux_2_1 (out, A, B, S);
    input A, B, S;
    output out;
    reg out;

    always @ ( A or B or S ) begin
        if (S == 1)
            out = A;
        else
            out = B;
    end
endmodule // mux_2_1
