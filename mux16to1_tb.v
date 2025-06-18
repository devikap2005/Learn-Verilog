`timescale 10ns/1ns
`include "mux16to1.v"


module mux16to1_tb;
reg[15:0]I; reg[3:0]S; wire Y;
mux16to1 DUT(.in(I), .sel(S), .out(Y));
    initial begin
        $dumpfile("mux16to1.vcd");
        $dumpvars(0,mux16to1_tb);
        $monitor($time,"I=%h, S=%h, Y=%b",I,S,Y);
        #5 I=16'h3f0a; S=4'h1;
        #5 S=4'hc;
        #5 S=4'h5;
        #5 $finish;
    end
endmodule