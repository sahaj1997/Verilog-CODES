`include "bit32OR.v"
`include "bit32AND.v"
`include "bit32_3tolmux.v"
`include "thirtytwoadder.v"

module ALU(result,cout,cin,op,binvert,a,b);

input [31:0] a,b ;
output [31:0] result;
output [31:0] cout;
output [3:0] o;
input cin, binvert;
input [1:0] op;


wire [31:0] bnot, selb, andgate, orgate, adder; 

genvar j;

generate for (j=0; j<32; j=j+8) 
begin: mux_loop
not n1(bnot[j], b[j]);
end
endgenerate

bit32_3tolmux m1(selb, {1'b0,binvert}, b, bnot,a);

bit32AND a1(andgate, a, selb);

bit32OR o1(orgate, a, selb);

thirtytwoadder add1(a,selb,cin,adder,cout,o);

bit32_3tolmux m2(result, op, andgate, orgate, adder);

endmodule