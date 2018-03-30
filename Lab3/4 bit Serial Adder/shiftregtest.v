`include "shiftreg.v"

module shiftregtest;

parameter n=4;
reg EN,in,CLK;
wire Q1;
wire [n-1:0] Q;

shiftreg shreg(Q, Q1, EN, in, CLK);

initial
begin
CLK=0;
end

always @(CLK)
#2 CLK=~CLK;
initial
#0 $monitor($time,"EN=%b in=%b Q=%b\n",EN,in,Q);

initial
begin
in=0;EN=0;
#4 in=1;EN=1;
#4 in=1;EN=1;
#100 $finish;
end

endmodule

