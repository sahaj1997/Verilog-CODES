`include "eightadder.v"

module testbencheightadder;

	reg [7:0] x,y;
	reg z;
	wire [7:0] sum,carry;
	wire overflow;
	eightadder e1(x,y,z,sum,carry,overflow);
	initial
	begin
	$monitor(, $time,"x=%d  y=%d, z=%d ,sum=%d, carry=%b, overflow=%b",x,y,z,sum,carry[7],overflow);
	#10 x=8'b01111111;y=8'b00000001;z=1'b0;
	#20 x=8'b00111111;y=8'b00000001;z=1'b0;
	#30 x=8'b01111111;y=8'b00001111;z=1'b0;
	#40 x=8'b11111111;y=8'b00001111;z=1'b0;
	end
	endmodule