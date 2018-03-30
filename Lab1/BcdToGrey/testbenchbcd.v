`include "bcd_greyc.v"

module testbench;
	reg [0:3]A;
	wire [0:3]B;
	bcd_greyc bcg (A,B);
	initial
	begin
	$monitor(, $time,"BCD=%b  Grey=%b",A,B);
	#10 A=4'd0;
	#20 A=4'd1;
	#30 A=4'd2;
	#40 A=4'd3;
	#50 A=4'd4;
	#60 A=4'd5;
	#70 A=4'd6;
	#80 A=4'd7;
	#90 A=4'd8;
	#100 A=4'd9;
	
	end
	endmodule