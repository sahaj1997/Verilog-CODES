`include "fulladder.v"

module ripplecarry(s,cout,a,b,cin);

input [3:0] a,b;
input cin;
output [3:0] s;
output cout;

wire [2:0] cm;

fulladder
f1 (s[0],cm[0],a[0],b[0],cin),
f2 (s[1],cm[1],a[1],b[1],cm[0]),
f3 (s[2],cm[2],a[2],b[2],cm[1]),
f4 (s[3],cout,a[3],b[3],cm[2]);

endmodule