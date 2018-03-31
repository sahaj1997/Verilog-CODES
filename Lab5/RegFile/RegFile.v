`include "reg_32bit.v"

module RegFile(ReadData1,ReadData2,clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite);

input clk,reset,RegWrite;
input [1:0] ReadReg1,ReadReg2,WriteReg;
input [31:0] WriteData;
output [31:0] ReadData1,ReadData2;
reg [31:0] ReadData1,ReadData2;
genvar j;

wire [3:0] t;



generate
for(j=0;j<4;j=j+1) begin: loop1
and a1(t[j],clk,RegWrite,WriteReg[j]);
reg_32bit d1(q[j],d[j],clk, reset);
end
endgenerate
