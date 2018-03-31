`include "d_ff.v"

module reg_32bit(q,d,clk,reset);

input [31:0] d;
input clk,reset;
output [31:0] q;
genvar j;

generate
for(j=0;j<32;j=j+1) begin: loop
d_ff d1(q[j],d[j],clk, reset);
end
endgenerate

endmodule