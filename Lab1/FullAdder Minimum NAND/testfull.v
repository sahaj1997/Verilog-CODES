`include "fulladder.v"

module testfull;

reg a,b,cin;
wire s,cout;

fulladder f1(s,cout,a,b,cin);

initial
begin
$monitor($time," a=%b, b=%b, cin=%b, s=%b, cout=%b",a,b,cin,s,cout);
a = 1'b0; b = 1'b1; cin = 1'b0;
#25 a = 1'b0; b = 1'b0; cin = 1'b0;
#25 a = 1'b1; b = 1'b1; cin = 1'b1;
#25 a = 1'b1; b = 1'b0; cin = 1'b1;
end

endmodule