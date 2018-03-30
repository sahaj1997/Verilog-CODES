module full_adder(S,C,V,A,B,M);

input [3:0] A,B;
input M;
output [3:0] S;
output C,V;
reg C,V;
reg [3:0] S;
reg [3:0] BNOT;
reg [4:0] CA;
integer i;

always @(A or B or M)
begin
	if(M == 1'b0)
	begin
		CA[0] = M;
		for (i=0; i<4; i=i+1) 
        begin
			S[i] = ( A[i] ^ B[i] ) ^ CA[i];
			if(i == 3)
			begin
				CA[i+1] = (A[i] & B[i]) | CA[i] & (A[i] ^ B[i]);
				C = CA[i+1];
				V = C ^ CA[i];
			end
			else
			begin
				CA[i+1] = (A[i] & B[i]) | CA[i] & (A[i] ^ B[i]);
			end
		end
	end
	else
	begin
	if(M == 1'b1)
	begin
		CA[0] = M;
		for (i=0; i<4; i=i+1) 
        begin
			BNOT[i] = B[i] ^ 1'b1;
			S[i] = ( A[i] ^ BNOT[i] ) ^ CA[i];
			if(i == 3)
			begin
				CA[i+1] = (A[i] & BNOT[i]) | CA[i] & (A[i] ^ BNOT[i]);
				C = CA[i+1];
				V = C ^ CA[i];
			end
			else
			begin
				CA[i+1] = (A[i] & BNOT[i]) | CA[i] & (A[i] ^ BNOT[i]);
			end
		end
	end
	end
end	

endmodule