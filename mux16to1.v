    `timescale 10ns/1ns

    module mux4to1(in,sel,out);
        output out;
        input [3:0]in;
        input [1:0]sel;
        assign out=in[sel];
    endmodule

    module mux16to1(in,sel,out);
        output out;
        input [15:0]in;
        input [3:0]sel;
        wire [3:0]t;
        mux4to1 m1(in[3:0],sel[1:0],t[0]);
        mux4to1 m2(in[7:4],sel[1:0],t[1]);
        mux4to1 m3(in[11:8],sel[1:0],t[2]);
        mux4to1 m4(in[15:12],sel[1:0],t[3]);
        mux4to1 m5(t,sel[3:2],out);
    endmodule
