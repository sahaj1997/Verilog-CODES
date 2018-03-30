module bcd_greyc(A,B);
	input [0:3]A;
	output [0:3]B;
	
	xor
		n1(B[0],A[0],0),
		n2(B[1],A[1],A[0]),
		n3(B[2],A[2],A[1]),
		n4(B[3],A[3],A[2]);
endmodule