module encoder(opcode,func_code);

input [7:0] func_code;

output reg [2:0] opcode;

always @( func_code ) begin

case(func_code)

8'd01 : begin
			opcode = 3'b000;
		end

8'd02 : begin
			opcode = 3'b001;
		end

8'd04 : begin
			opcode = 3'b010;
		end

8'd08 : begin
			opcode = 3'b011;
		end

8'd16 : begin
			opcode = 3'b100;
		end

8'd32 : begin
			opcode = 3'b101;
		end

8'd64 : begin
			opcode = 3'b110;
		end

8'd128 : begin
			opcode = 3'b111;
		end
		
endcase
end

endmodule

