`include "encoder.v"

module test_en;

reg [7:0] func_code;

wire [2:0] opcode;

encoder e(opcode,func_code);

initial
begin
$monitor("func_code = %b , opcode = %b",func_code,opcode);

func_code = 8'd64;

#10 func_code = 8'd128;

#10 func_code = 8'd8;

#10 func_code = 8'd4;

#10 func_code = 8'd2;

#10 func_code = 8'd1;

#10 func_code = 8'd32;

#10 func_code = 8'd16;

end

endmodule
