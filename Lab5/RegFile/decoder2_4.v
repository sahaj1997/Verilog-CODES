module decoder2_4(register,reg_no);

input [1:0] reg_no;
output [3:0] register;
reg [3:0] register;

always @(reg_no)
begin
	case(reg_no)
	
		2'b00: 
		begin
		register[0] = 1'b1;
		register[1] = 1'b0;
		register[2] = 1'b0;
		register[3] = 1'b0;
		end
	
		2'b01:
		begin
		register[0] = 1'b0;
		register[1] = 1'b1;
		register[2] = 1'b0;
		register[3] = 1'b0;
		end
		
		2'b10:
		begin
		register[0] = 1'b0;
		register[1] = 1'b0;
		register[2] = 1'b1;
		register[3] = 1'b0;
		end
		
		2'b11:
		begin
		register[0] = 1'b0;
		register[1] = 1'b0;
		register[2] = 1'b0;
		register[3] = 1'b1;
		end
	
	endcase
end
endmodule
				