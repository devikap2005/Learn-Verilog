`timescale 10ns/1ns
`include "full_adder.v"

module full_adder_tb;
    reg a,b,c;
    wire s,cout;
    full_adder DUT(.a(a),.b(b),.c(c),.s(s),.cout(cout));
    initial begin
        $dumpfile("fulladder.vcd");
        $dumpvars(0,full_adder_tb);
        $monitor($time,"A=%b,B=%b,C=%b,S=%b,COUT=%b",a,b,c,s,cout);
        #5 a=0;b=0;c=0;
        #5 a=0;b=0;c=1;
        #5 a=0;b=1;c=0;
        #5 a=0;b=1;c=1;
        #5 a=1;b=0;c=0;
        #5 a=1;b=0;c=1;
        #5 a=1;b=1;c=0;
        #5 a=1;b=1;c=1;
        #5
        $finish;
    end
endmodule