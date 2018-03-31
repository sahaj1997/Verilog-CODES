module ALU(X, A, opcode, B);

input [3:0] A,B;

input [2:0] opcode;

output reg [3:0] X;

always @( opcode ) begin

case(opcode)

3'd00 : X = A + B;

3'd01 : X = A - B;

3'd02 : X = A ^ B;

3'd03 : X = A | B;

3'd04 : X = A & B;

3'd05 : X = A ~| B;

3'd06 : X = A ~& B;

3'd07 : X = A ~^ B;

endcase
end

endmodule

