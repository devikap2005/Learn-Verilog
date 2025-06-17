`timescale 10ns/1ns

module half_adder(s,c,a,b);
output s,c;
input a,b;
xor x1(s,a,b);
and a1(c,a,b);
endmodule
