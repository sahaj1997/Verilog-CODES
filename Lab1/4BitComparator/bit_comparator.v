module bit_comparator(A,B,less,greater,equal);
input [3:0]A;
input [3:0]B;
output less,greater,equal;
wire anot1,anot2,anot3,anot4,bnot1,bnot2,bnot3,bnot4,anotb1,anotb2,anotb3,anotb4,bnota1,bnota2,bnota3,bnota4,ab1,ab2,ab3,ab4,someand1,someand2,someand3,someand4,someand5,someand6;

not
n1(anot1,A[0]),
n2(anot2,A[1]),
n3(anot3,A[2]),
n4(anot4,A[3]),
n5(bnot1,B[0]),
n6(bnot2,B[1]),
n7(bnot3,B[2]),
n8(bnot4,B[3]);

and
a1(anotb1,anot1,B[0]),
a2(anotb2,anot2,B[1]),
a3(anotb3,anot3,B[2]),
a4(anotb4,anot4,B[3]),
a5(bnota1,bnot1,A[0]),
a6(bnota2,bnot2,A[1]),
a7(bnota3,bnot3,A[2]),
a8(bnota4,bnot4,A[3]);

nor
no1(ab1,anotb1,bnota1),
no2(ab2,anotb2,bnota2),
no3(ab3,anotb3,bnota3),
no4(ab4,anotb4,bnota4);

and
an1(equal,ab1,ab2,ab3,ab4),
an2(someand1,ab4,anotb3),
an3(someand2,ab4,bnota3),
an4(someand3,ab4,ab3,anotb2),
an5(someand4,ab4,ab3,bnota2),
an6(someand5,ab4,ab3,ab2,anotb1),
an7(someand6,ab4,ab3,ab2,bnota1);

or
o1(less,anotb4,someand1,someand3,someand5),
o2(greater,bnota4,someand2,someand4,someand6);

endmodule