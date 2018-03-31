module Instruction_Memory( instr, read_addr);

	input [31:0] read_addr;
	output [31:0] instr;
	reg [31:0] instr;
	reg [31:0] reg_having_inst [31:0];

	initial
	begin
		$readmemh("inst_in_instmem.txt",reg_having_inst);
	end

	always @*
	begin
		instr = reg_having_inst[read_addr[4:0]];
	end

endmodule 



