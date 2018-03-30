`include "bit4_serialadder.v"

module tb_serial;

reg shiftcontrol,clk,serialinput,clear;

bit4_serialadder b(shiftcontrol,clk,serialinput,clear);

initial 
begin
forever
begin
#5 clk = ~clk;
end
end

initial
begin
$monitor($time," clk = %b, serialinput = %b, clear = %b, shiftcontrol = %b, Q1 = %b, Q2 = %b",clk,serialinput,clear,shiftcontrol,b.Q1,b.Q2);
clk = 1'b0;
shiftcontrol = 1'b0;
clear = 1'b0;
#20
#5 shiftcontrol = 1'b1; clear = 1'b1; serialinput = 1'b1;
#50 serialinput = 1'b0;
#50 serialinput = 1'b1;
#50 $finish;

end

endmodule