`include "bit32_2tolmux.v"

module bit32_3tolmux(out, sel, in1,in2,in3);

input [31:0] in1,in2,in3;
output [31:0] out;
wire [31:0] middle;
input [1:0] sel;

bit32_2tolmux m1(middle, sel[0], in1, in2);
bit32_2tolmux m2(out, sel[1], middle, in3);

endmodule
