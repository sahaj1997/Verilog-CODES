module fulladder(s,cout,a,b,cin);

input a,b,cin;
output s,cout;

wire u1,u2,u3,u4,u6,u7;

nand
n1 (u1,a,b),
n2 (u2,a,u1),
n3 (u3,u1,b),
n4 (u4,u2,u3),
n5 (u5,u4,cin),
n6 (u6,u5,u4),
n7 (u7,cin,u5),
n8 (s,u6,u7),
n9 (cout,u5,u1);

endmodule

