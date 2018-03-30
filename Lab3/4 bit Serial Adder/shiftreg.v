module shiftreg(Q, Q1, EN, in, CLK);

parameter n=4;
input in,EN,CLK;
output Q1;
reg Q1;
output [3:0] Q;
reg [3:0] Q;

always @(posedge CLK)
begin
if (EN)
begin
Q1 = Q[0];
Q={in, Q[n-1:1]};
end
else
Q = 4'b0000;
end
endmodule