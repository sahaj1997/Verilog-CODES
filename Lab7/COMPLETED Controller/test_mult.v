`include "cont_logic.v"

module test_mult;

reg [5:0] op ;

reg clk;

initial begin
clk=0;
#5
clk=1;
#5
clk=0;
#5
clk=1;
#5
clk=0;
#5
clk=1;
#5
clk=0;
#5
clk=1;
#5
clk=0;
#5
clk=1;
#5
clk=0;
#5
clk=1;
#5
clk=0;
#5
clk=1;
#5
clk=0;
end

cont_logic c (op,clk);

initial
begin
#1 op = 6'b100011;
end 

initial
$monitor($time,"%d %d",c.s,c.ns);

endmodule