`include "ripplecarry.v"

module testrip;

reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;

ripplecarry r1(s,cout,a,b,cin);

initial
begin
$monitor($time," a=%b, b=%b, cin=%b, s=%b, cout=%b",a,b,cin,s,cout);
a = 4'b0111; b = 4'b1000; cin = 1'b0;
#1 a = 4'b1111; b = 4'b1000; cin = 1'b1;
#1 a = 4'b0111; b = 4'b1000; cin = 1'b1;
#1 a = 4'b0011; b = 4'b1000; cin = 1'b1;
end

endmodule