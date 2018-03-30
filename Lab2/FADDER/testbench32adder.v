`include "thirtytwoadder.v"

module testbench32adder;

	reg [31:0] x,y;
	reg z;
	wire [31:0] sum,carry;
	wire [3:0] overflow;
	thirtytwoadder tt1(x,y,z,sum,carry,overflow);
	initial
	begin
	$monitor(, $time,"x=%d  y=%d, z=%d ,sum=%d, carry=%b, overflow=%b",x,y,z,sum,carry[31],overflow[3]);
	#10 x=32'b11111111111111111111111111111111;y=32'b00000000000000000000000000000001;z=1'b0;
	#20 x=32'b01111111111111111111111111111111;y=32'b00000000000000000000000000000001;z=1'b0;
	#30 x=32'b11111111111111111111111111111111;y=32'b00000000000000000000000000001111;z=1'b0;
	#40 x=32'b00001111111111111111111111111111;y=32'b00000000000000000000000000000001;z=1'b0;
	end
	endmodule