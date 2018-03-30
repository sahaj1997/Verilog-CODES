module Decoder(x,y,z,d0,d1,d2,d3,d4,d5,d6,d7);
input x,y,z;
output d0,d1,d2,d3,d4,d5,d6,d7;
wire xnot,ynot,znot;

not
n1(xnot,x),
n2(ynot,y),
n3(znot,z);

and
a1(d0,xnot,ynot,znot),
a2(d1,xnot,ynot,z),
a3(d2,xnot,y,znot),
a4(d3,xnot,y,z),
a5(d4,x,ynot,znot),
a6(d5,x,ynot,z),
a7(d6,x,y,znot),
a8(d7,x,y,z);

endmodule