`timescale 10ns/1ns

module full_adder(s,cout,a,b,c);
    output s,cout;
    input a,b,c;
    wire t1,t2,t3;
    xor x1(s,a,b,c);
    and a1(t1,a,b);
    and a2(t2,b,c);
    and a3(t3,a,c);
    or o1(cout,t1,t2,t3);

endmodule
