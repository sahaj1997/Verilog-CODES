`include "seq10110.v"

module test_10110;

reg clk,inp,rst;
wire outp;
integer i;

seq10110 duty(outp, clk, rst, inp);

initial 
begin
	clk = 1'b0;
	rst = 1'b0;
	#5 rst = 1'b1;

testing;
end

task testing;
for( i = 0; i <= 30; i = i + 1)
begin
	inp = $random % 2;
	#2 clk = 1'b1;
	#2 clk = 1'b0;
	$display($time," State = ",  duty.state, ", Input = ", inp, ", Output = ", outp);
end
endtask
endmodule