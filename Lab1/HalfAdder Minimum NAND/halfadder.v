module halfadder(s,c,a,b);

input a,b;
output s,c;
wire u1,u2,u3;

nand
n1 (u1,a,b),
n2 (u2,a,u1),
n3 (u3,b,u1),
n4 (s,u2,u3),
n5 (c,u1,u1);

endmodule
