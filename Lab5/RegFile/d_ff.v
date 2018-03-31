module d_ff(q,d,clk,reset);

input  d,clk, reset;
output q;
reg q;

always @(posedge clk or d or reset)
begin
	if(reset == 1'b0)
	begin
		q <= 0;
	end
	else
	begin
	case(d)
	
		1'b0: q <= 0;
	
		1'b1: q <= 1;
	
	endcase
	end
end
endmodule
				