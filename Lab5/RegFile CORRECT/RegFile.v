`include "reg_32bit.v"
`include "decoder2_4.v"
`include "mux4_1.v"

module RegFile(ReadData1,ReadData2,clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite);

input clk,reset,RegWrite;
input [1:0] ReadReg1,ReadReg2,WriteReg;
input [31:0] WriteData;
output [31:0] ReadData1,ReadData2;
genvar j;

wire [3:0] t,t1,t2,t3;
wire [31:0] q1,q2,q3,q4;

decoder2_4 m3(t3,WriteReg);

mux4_1 m1(ReadData1,q1,q2,q3,q4,ReadReg1);
mux4_1 m2(ReadData2,q1,q2,q3,q4,ReadReg2);


generate
for(j=0;j<4;j=j+1) begin: loop1
and a1(t[j],clk,RegWrite,t3[j]);
end
endgenerate

reg_32bit d1(q1,WriteData,t[0], reset);
reg_32bit d2(q2,WriteData,t[1], reset);
reg_32bit d3(q3,WriteData,t[2], reset);
reg_32bit d4(q4,WriteData,t[3], reset);

endmodule