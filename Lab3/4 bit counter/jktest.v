`include "bit4_sync_countjk.v"

module jktest;

reg clk,reset;
wire [3:0] q;
integer i;

bit4_sync_countjk jk_count(q,clk,reset);

initial
begin
clk=1'b0;
end


always
#50 clk=~clk;

initial 
$monitor($time,"	q = %d",q);

always
begin
reset=1'b0;
#100 reset =1'b1;
#10000 $finish;
end

endmodule