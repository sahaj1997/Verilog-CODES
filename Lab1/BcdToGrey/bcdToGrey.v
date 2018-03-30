module bcdtogrey(A,e);
input [3:0]A;
output [3:0]e;


	xor g1(e[0],A[0],A[1]);
	xor g2(e[1],A[2],A[1]);
	or  g3(e[2],A[3],A[2]);
	buf b1 (e[3],A[3]);

endmodule