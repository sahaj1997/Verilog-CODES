`include "Fadder.v"

module testbenchfadder;

	reg x,y,z;
	wire sum,carry;
	Fadder f(x,y,z,sum,carry);
	initial
	begin
	$monitor(, $time,"x=%b  y=%b, z=%b ,sum=%b, carry=%b",x,y,z,sum,carry);
	#10 x=1'b0;y=1'b1;z=1'b0;
	#20 x=1'b1;y=1'b1;z=1'b1;
	#30 x=1'b0;y=1'b0;z=1'b0;
	#40 x=1'b0;y=1'b1;z=1'b1;
	
	end
	endmodule