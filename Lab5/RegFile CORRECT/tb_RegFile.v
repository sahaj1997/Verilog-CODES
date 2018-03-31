`include "RegFile.v"

module tb_RegFile;

reg clk,reset,RegWrite;
reg [1:0] ReadReg1,ReadReg2,WriteReg;
reg [31:0] WriteData;
wire [31:0] ReadData1,ReadData2;

RegFile r1(ReadData1,ReadData2,clk,reset,ReadReg1,ReadReg2,WriteData,WriteReg,RegWrite);

always @(clk)
#5 clk<=~clk;

initial
begin
$monitor($time," ReadData1 = %d ,ReadData2 = %d ,clk = %b ,reset = %b ,WriteReg = %d ,RegWrite = %b ,q1 = %d ,q2 = %d ,q3 = %d ,q4 = %d ",ReadData1,ReadData2,clk,reset,WriteReg,RegWrite,r1.q1,r1.q2,r1.q3,r1.q4);
end

initial
begin
clk= 1'b1;
reset=1'b0;//reset the register
WriteData = 32'd11111111;
WriteReg = 2'b00;
RegWrite = 1'b1;
#10 reset=1'b1;
#10 ReadReg1 = 2'b00;
#10 WriteReg = 2'b01; WriteData = 32'd1234567;
#10 ReadReg2 = 2'b01;
#200 $finish;
end

endmodule