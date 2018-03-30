`include "full_adder.v"

module AddSub;


reg [3:0] A,B;
reg M;
wire [3:0] S;
wire C,V;


full_adder addsub(S,C,V,A,B,M);

initial
begin
$monitor($time," S = %d , C = %d , V = %d , A = %d , B = %d , M = %d ",S,C,V,A,B,M);
A = 4'd2;B = 4'd3; M = 1'b0;
#100 A = 4'd3;B = 4'd2; M = 1'b1;
#200 A = 4'd8;B = 4'd1; M = 1'b1;
#300 A = 4'd8;B = 4'd1; M = 1'b0;
end




endmodule