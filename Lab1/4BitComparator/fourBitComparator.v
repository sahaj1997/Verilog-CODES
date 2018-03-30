module fourbitcomparator(a,b);
	input [3:0]a;
	output [3:0]b;
	reg [7:0]w1;
	reg [3:0]w2;
	always@(a[3] or a[2] or a[1] or a[0] or b[3] or b[2] or b[1] or b[0])
			if(a[3]==0 && b[3] == 0)
			begin
				w1[7]=0;
				w1[6]=0;
			end
			else if(a[3]==0 && b[3]==1)
			begin
				w1[7]=1;
				w1[6]=0;
			end
			else if(a[3]==1 && b[3]==0)
			begin
				w1[7]=0;
				w1[6]=1;
			end
			else if(a[3]==1 && b[3]==1)
			begin
				w1[7]=0;
				w1[6]=0;
			end

			if(a[2]==0 && b[2] == 0)
			begin
				w1[5]=0;
				w1[4]=0;
			end
			else if(a[2]==0 && b[2]==1)
			begin
				w1[5]=1;
				w1[4]=0;
			end
			else if(a[2]==1 && b[2]==0)
			begin
				w1[5]=0;
				w1[4]=1;
			end
			else if(a[2]==1 && a[2]==1)
			begin
				w1[5]=0;
				w1[4]=0;
			end
			
			if(a[1]==0 && b[1] == 0)
			begin
				w1[3]=0;
				w1[2]=0;
			end
			else if(a[1]==0 && b[1]==1)
			begin
				w1[3]=1;
				w1[2]=0;
			end
			else if(a[1]==1 && b[1]==0)
			begin
				w1[3]=0;
				w1[2]=1;
			end
			else if(a[1]==1 && a[1]==1)
			begin
				w1[3]=0;
				w1[2]=0;
			end
			
			if(a[0]==0 && b[0] == 0)
			begin
				w1[1]=0;
				w1[0]=0;
			end
			else if(a[0]==0 && b[0]==1)
			begin
				w1[1]=1;
				w1[0]=0;
			end
			else if(a[0]==1 && b[0]==0)
			begin
				w1[1]=0;
				w1[0]=1;
			end
			else if(a[0]==1 && a[0]==1)
			begin
				w1[1]=0;
				w1[0]=0;
			end

			if(w1[7]==0 && w1[6]==0)
				w2[3]=0;
			else if(w1[7]==0 && w1[6]==1)
				w2[3]=1;
			else if(w1[7]==1 && w1[6]==0)
				w2[3]=1;
			else if(w1[7]==1 && w1[6]==1)
				w2[3]=0;
			
			if(w1[5]==0 && w1[4]==0)
				w2[2]=0;
			else if(w1[5]==0 && w1[4]==1)
				w2[2]=1;
			else if(w1[5]==1 && w1[4]==0)
				w2[2]=1;
			else if(w1[5]==1 && w1[4]==1)
				w2[2]=0;
				
			if(w1[3]==0 && w1[2]==0)
				w2[1]=0;
			else if(w1[3]==0 && w1[2]==1)
				w2[1]=1;
			else if(w1[3]==1 && w1[2]==0)
				w2[1]=1;
			else if(w1[3]==1 && w1[2]==1)
				w2[1]=0;
				
			if(w1[1]==0 && w1[0]==0)
				w2[0]=0;
			else if(w1[1]==0 && w1[0]==1)
				w2[0]=1;
			else if(w1[1]==1 && w1[0]==0)
				w2[0]=1;
			else if(w1[1]==1 && w1[0]==1)
				w2[0]=0;
				
			
endmodule