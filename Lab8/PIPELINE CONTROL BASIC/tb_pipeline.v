`include "pipeline.v"

module tb_pipeline;

	// generating clk 
	reg clk;
	initial
	begin
		clk = 1'b0;
		forever
		begin
			#5 clk = 1'b1;
			#5 clk = 1'b0;
		end
		
		
	end
	
	// instantiating driver
	reg [3:0] ainput;
	reg [3:0] binput;
	reg [7:0] inst;
	wire parity;
	
	pipeline d(parity,inst,ainput,binput,clk);
	
	always @ (negedge clk)
	begin
		
		$display($time,": a = %b,b = %b, ctrl = %b, x = %b, parity = %b",d.A,d.B,d.ctrl,d.out,parity);
		
	end
	
	initial
	begin
		
		ainput = 4'b1100;
		binput = 4'b1010;
		
		#1 inst = 8'h01;
		#10 inst = 8'h02;
		#10 inst = 8'h04;
		#10 inst = 8'h08;
		#10 inst = 8'h10;
		#10 inst = 8'h20;
		#10 inst = 8'h40;
		#10 inst = 8'h80;
		
		# 30 $finish;
		
	end

	

endmodule