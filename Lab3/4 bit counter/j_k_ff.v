module j_k_ff(q,j,k,clk,reset);

input j,k,clk,reset;
output q;
reg q;

always @(posedge clk)
begin
if(reset == 1'b1)
begin
	case({j,k})
	2'b00: q <= q;
	2'b01: q <= 1'b0;
	2'b10: q <= 1'b1;
	2'b11: q <= ~q;
	default: $display("There is some error in input");
	endcase
end
else
q <= 1'b0; 
end

endmodule