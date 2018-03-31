`include "mux4_1.v"

module tbmux4_1;

reg [31:0] q1,q2,q3,q4;
reg [1:0] reg_no;
wire [31:0] regData;

mux4_1 m(regData,q1,q2,q3,q4,reg_no);

initial
begin
$monitor($time," reg_no = %b ,regData = %d ,q1 = %d ,q2 = %d,q3 = %d ,q4 = %d",reg_no,regData,q1,q2,q3,q4);
q1 = 32'd16171;
q2 = 32'd69192333;
q3 = 32'd22222222;
q4 = 32'd33333333;
reg_no = 2'b00;
#5 reg_no = 2'b01;
#5 q2 = 32'd444444444;
#5 reg_no = 2'b10;
#5 q3 = 32'd55555555;
#5 reg_no = 2'b11;
#5 q4 = 32'd111111;
end

endmodule