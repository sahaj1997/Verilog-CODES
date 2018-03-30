`include "bcdToGrey.v"

module tb_bcdToGrey();
	reg [3:0]A;
	wire [3:0]e;
	bcdtogrey btog(A,e);
	initial 
		begin
			$monitor(,$time," Input=%b , Output = %b ",A,e);
			#0 A=4'b0000;
			#5 A=4'b0001;
			#5 A=4'b0010;
			#5 A=4'b0011;
			#5 A=4'b0100;
			#5 A=4'b0101;
			#5 A=4'b0110;
			#5 A=4'b0111;
			#5 A=4'b1000;
			#5 A=4'b1001;
			
		end
	initial
		begin
		$dumpfile("out.vcd");
		$dumpvars;
		end

endmodule