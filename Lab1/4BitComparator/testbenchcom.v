`include "bit_comparator.v"

module testbenchcom;

	reg [3:0] A,B;
	wire equal,less,greater;
	bit_comparator comp (A,B,less,greater,equal);
	initial
	begin
	$monitor(, $time,"a=%b  b=%b, less==%b ,greater==%b, equal==%b",A,B,less,greater,equal);
	#10 A=4'b1101;B=4'b1101;
	#20 A=4'b1110;B=4'b1101;
	#30 A=4'b1101;B=4'b1110;
	
	end
	endmodule