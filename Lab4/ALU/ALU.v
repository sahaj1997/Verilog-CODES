module ALU(result,cout,cin,op,binvert,a,b);

input [31:0] a,b ;
output [31:0] result;
output cout;
input cin, binvert;
input [1:0] op;
wire [31:0] bnot, selb, andgate, orgate, adder; 

not n1(bnot, b);

Mux_2_1 m1(selb, binvert, b, bnot);

And_Gate a1(andgate, a, selb);

Or_Gate o1(orgate, a, selb);

Adder_32 add1(adder, cout, a, selb, cin);

Mux_3_1 res(result, op, andgate, orgate, adder);
