`include "Decoder.v"

module Fadder(x,y,z,sum,carry);
input x,y,z;
output sum,carry;
wire d0,d1,d2,d3,d4,d5,d6,d7;

Decoder d(x,y,z,d0,d1,d2,d3,d4,d5,d6,d7);

assign sum=d1+d2+d4+d7,
       carry=d3+d5+d6+d7;

endmodule