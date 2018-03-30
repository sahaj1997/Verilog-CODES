`include "shiftreg.v"
`include "FADDER.v"
`include "d_ff.v"

module bit4_serialadder(shiftcontrol,clk,serialinput,clear);

input shiftcontrol,clk,serialinput,clear;

wire S1,S,D,Q,C;
wire q1,q2;
wire [3:0] Q1,Q2;

assign C = clk | shiftcontrol;


shiftreg s1 (Q1,q1, shiftcontrol, S1, clk );
shiftreg s2(Q2,q2, shiftcontrol, serialinput, clk );
FADDER f1(S1,D,q1,q2,Q);
d_ff d1 (Q,D,C,clear);

endmodule