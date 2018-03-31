`include "decoder2_4.v"

module tbdecoder2_4;

reg [1:0] reg_no;
wire [3:0] register;

decoder2_4 de(register,reg_no);

initial
begin
$monitor($time," reg_no = %b ,register = %d ",reg_no,register);
reg_no = 2'b00;
#5 reg_no = 2'b01;
#5 reg_no = 2'b10;
#5 reg_no = 2'b11;
end

endmodule