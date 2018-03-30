`include "eightadder.v"

module thirtytwoadder(x,y,z,sum,carry,overflow);
input [31:0]x,y;
input z;
output [31:0] sum,carry;
output [3:0] overflow;

eightadder e1(x[7:0],y[7:0],z,sum[7:0],carry[7:0], overflow[0]);
eightadder e2(x[15:8] ,y[15:8] ,carry[7],sum[15:8]  ,carry[15:8] , overflow[1]);
eightadder e3(x[23:16],y[23:16],carry[15],sum[23:16],carry[23:16], overflow[2]);
eightadder e4(x[31:24],y[31:24],carry[23],sum[31:24],carry[31:24], overflow[3]);


endmodule