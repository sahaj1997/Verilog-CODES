module mux4_1(regData,q1,q2,q3,q4,reg_no);

input [31:0] q1,q2,q3,q4;
input [1:0] reg_no;
output [31:0] regData;
reg [31:0] regData;

always @(reg_no or q1 or q2 or q3 or q4)
begin
	case(reg_no)
	
		2'b00: regData <= q1;
	
		2'b01: regData <= q2;
		
		2'b10: regData <= q3;
		
		2'b11: regData <= q4;
	
	endcase
end
endmodule
				
