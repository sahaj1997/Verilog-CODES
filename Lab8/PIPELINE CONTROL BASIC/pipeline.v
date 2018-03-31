`include "encoder.v"
`include "ALU.v"
`include "even_parity.v"

module pipeline(X,F,Ainput,Binput,clk);


input [7:0] F;
input [3:0] Ainput,Binput;
input clk;
output reg X;

reg [2:0] ctrl;
reg [3:0] A,B,out;

wire [2:0] en;
wire [3:0] Y;
wire out_parity;

encoder e(en,F);
ALU A1(Y,A,ctrl,B);
even_parity E1(out_parity,out);

always @(posedge clk)
begin

	// pipeline stage 1
	A <= Ainput;
	B <= Binput;
	ctrl <= en;
	
	//pipeline stage 2
	out <= Y;
	
	// pipeline stage 3
	X <= out_parity;
end

endmodule