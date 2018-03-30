`include "mux2tol_gate.v"
`timescale 1ns/1ps
module stimcrct;
reg A,B,C;
wire x;
mux2tol_gate HA1(A,B,C,x);
initial 
begin 
A= 1'b0; B=1'b0; C=1'b0;
$monitor(,$time,"a=%b,b=%b,c=%b, f=%b",A,B,C,x);
#100 A=1'b1; B=1'b0; C=1'b1;
end
endmodule
