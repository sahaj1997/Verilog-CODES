`include "bit8_2tolmux1.v"

module bit32_2tolmux(out, sel, in1,in2);


input [31:0] in1,in2;
output [31:0] out;
input sel;
genvar j;

generate for (j=0; j<32; j=j+8) 
begin: mux_loop
bit8_2tolmux m1(out[j+7:j],sel,in1[j+7:j],in2[j+7:j]);
end
endgenerate
endmodule