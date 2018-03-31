`include "ALU.v"

module test_alu;

reg [3:0] A,B;

reg [2:0] opcode;

wire [3:0] X;

ALU AL(X,A,opcode,B);

initial
begin
$monitor("X = %b , opcode = %b",X,opcode);

A = 4'b1100;

B =  4'b0111;

opcode = 3'd00;

#10 opcode = 3'd01;

#10 opcode = 3'd02;

#10 opcode = 3'd03;

#10 opcode = 3'd04;

#10 opcode = 3'd05;

#10 opcode = 3'd06;

#10 opcode = 3'd07;


end

endmodule
