module mealy(outp, clk, rst, inp);

input clk,inp,rst;
output outp;
reg [1:0] state;
reg outp;

always @(posedge clk, posedge rst) 
begin
	if( rst == 1'b0 ) 
	begin
		state <= 2'b00;
		outp <= 0;
	end

	else 
		begin
		case ( state )
			2'b00:
			begin
			if(inp == 1'b1)
				begin
					state <= 2'b01;
					outp <= 0;
				end
			else
				begin
					state <= 2'b10;
					outp <= 0;
				end
			end

			2'b01:
			begin
			if(inp == 1'b1)
				begin
					state <= 2'b00;
					outp <= 1;
				end
			else
				begin
					state <= 2'b10;
					outp <= 0;
				end
			end
			
			2'b10:
			begin
			if(inp == 1'b1)
				begin
					state <= 2'b01;
					outp <= 0;
				end
			else
				begin
					state <= 2'b00;
					outp <= 1;
				end
			end
			
			default: 
			begin
				state <= 2'b00;
				outp <= 0;
			end
		endcase
		
		end

end		

endmodule