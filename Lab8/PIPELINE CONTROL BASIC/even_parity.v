
module even_parity(par,in);

input [3:0] in;

output par ;

assign par = in[0] ^ in[1] ^ in[2] ^ in[3] ;

endmodule