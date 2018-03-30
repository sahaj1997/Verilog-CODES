module seq10110(outp, clk, rst, inp);

input clk,inp,rst;
output outp;
reg [2:0] state;
reg outp;

always @(posedge clk, posedge rst) 
begin
	if( rst == 1'b0 ) 
	begin
		state <= 3'b000;
		outp <= 0;
	end

	else 
		begin
		case ( state )
			3'b000:
			begin
			if(inp == 1'b1)
				begin
					state <= 3'b001;
					outp <= 0;
				end
			else
				begin
					state <= 3'b000;
					outp <= 0;
				end
			end

			3'b001:
			begin
			if(inp == 1'b1)
				begin
					state <= 3'b001;
					outp <= 0;
				end
			else
				begin
					state <= 3'b010;
					outp <= 0;
				end
			end
			
			3'b010:
			begin
			if(inp == 1'b1)
				begin
					state <= 3'b011;
					outp <= 0;
				end
			else
				begin
					state <= 3'b000;
					outp <= 0;
				end
			end
			
			3'b011:
			begin
			if(inp == 1'b1)
				begin
					state <= 3'b100;
					outp <= 0;
				end
			else
				begin
					state <= 3'b010;
					outp <= 0;
				end
			end
			
			3'b100:
			begin
			if(inp == 1'b1)
				begin
					state <= 3'b001;
					outp <= 0;
				end
			else
				begin
					state <= 3'b010;
					outp <= 1;
				end
			end
			
			default: 
			begin
				state <= 3'b000;
				outp <= 0;
			end
		endcase
		
		end

end		

endmodule