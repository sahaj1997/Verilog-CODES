`include "seq10110.v"

module seq_10110test;

reg clk,inp,rst;
wire outp;
reg [15:0] sequenc;
integer i;

seq10110 duty(outp, clk, rst, inp);

initial 
begin
	clk = 1'b0;
	rst = 1'b0;
	sequenc = 16'b1011011011011011;
	#5 rst = 1'b1;

for( i = 0; i <= 15; i = i + 1)
begin
	inp = sequenc[i];
	#2 clk = 1'b1;
	#2 clk = 1'b0;
	$display($time," State = ",duty.state, ", Input = ", inp,", Output = ", outp);
end
testing;
end

task testing;
for( i = 0; i <= 15; i = i + 1)
begin
	inp = $random % 2;
	#2 clk = 1'b1;
	#2 clk = 1'b0;
	$display($time," State = ",  duty.state, ", Input = ", inp, ", Output = ", outp);
end
endtask
endmodule