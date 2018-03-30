module FA_dataflow (Cout, Sum,In1,In2,Cin);

input In1,In2;
   input Cin;   
   output Cout;   
   output Sum;     
   assign {Cout,Sum}=In1+In2+Cin;
   endmodule