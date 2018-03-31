`include "Instruction_Memory.v"

module testingIM;
 
	reg [31:0] read_addr;
	wire [31:0] instr;
	
	Instruction_Memory im(instr,read_addr);
	
	initial
	begin
	
	#0	read_addr = 32'h00_00_00_00;
			$monitor("%h",instr);
		#2	read_addr = 32'h00_00_00_08;
			$monitor("%h",instr);
		#2	read_addr = 32'h00_00_00_10;
			$monitor("%h",instr);
		#2	read_addr = 32'h00_00_00_14;
			$monitor("%h",instr);
		#2	read_addr = 32'h00_00_00_18;
			$monitor("%h",instr);
		#2	read_addr = 32'h00_00_00_1F;
			$monitor("%h",instr);
		
	end

endmodule
		