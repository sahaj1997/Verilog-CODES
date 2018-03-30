`include "Fadder.v"

module eightadder(x,y,z,sum,carry,overflow);
input [7:0]x,y;
input z;
output [7:0] sum,carry;
output overflow;

Fadder f1(x[0],y[0],z,sum[0],carry[0]);
Fadder f2(x[1],y[1],carry[0],sum[1],carry[1]);
Fadder f3(x[2],y[2],carry[1],sum[2],carry[2]);
Fadder f4(x[3],y[3],carry[2],sum[3],carry[3]);
Fadder f5(x[4],y[4],carry[3],sum[4],carry[4]);
Fadder f6(x[5],y[5],carry[4],sum[5],carry[5]);
Fadder f7(x[6],y[6],carry[5],sum[6],carry[6]);
Fadder f8(x[7],y[7],carry[6],sum[7],carry[7]);

xor 
x1 (overflow,carry[6],carry[7]);


endmodule