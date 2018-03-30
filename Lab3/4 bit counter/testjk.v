`include "j_k_ff.v"

module testjk;

reg j,k,clk,reset;
wire q;
integer i;

j_k_ff jkff(q,j,k,clk,reset);

initial
begin
clk=1'b0;
end


always
#50 clk=~clk;

initial 
$monitor($time,"j = %b, k = %b, clk = %b, q = %b",j,k,clk,q);

always
begin
reset=1'b0; j=1'b1; k=1'b1;
#100 reset =1'b1;
#100 j=1'b1; k=1'b1;
#100 j=1'b0; k=1'b0;
#100 j=1'b1; k=1'b0;
#100 j=1'b0; k=1'b1;
#100 $finish;
end

endmodule