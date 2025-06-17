`timescale 10ns/1ns
`include "half_adder.v"

module half_adder_tb;
    reg a,b;
    wire s,c;
    half_adder DUT(.a(a),.b(b),.c(c),.s(s));
    initial begin
        $dumpfile("halfadder.vcd");
        $dumpvars(0,half_adder_tb);
        $monitor($time,"A=%b,B=%b,S=%b,C=%b",a,b,s,c);
        #5 a=0;b=0;
        #5 a=0;b=1;
        #5 a=1;b=0;
        #5 a=1;b=1;
        #5
        $finish;
    end
endmodule
    
