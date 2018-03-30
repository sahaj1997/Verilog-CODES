`include "halfadder.v"

module testhalf;

reg a,b;
wire s,c;

halfadder h1(s,c,a,b);

initial
begin
$monitor($time," a=%b, b=%b, s=%b, c=%b",a,b,s,c);
a = 1'b0; b = 1'b1;
#5 a = 1'b0; b = 1'b0;
#5 a = 1'b1; b = 1'b1;
#5 a = 1'b1; b = 1'b0;
end

endmodule