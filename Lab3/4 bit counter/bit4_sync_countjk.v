`include "j_k_ff.v"

module bit4_sync_countjk(q,clk,reset);

input clk,reset;
wire i1,i2;
output [3:0] q;




	j_k_ff j0(q[0],1'b1,1'b1,clk,reset);
	j_k_ff j1(q[1],q[0],q[0],clk,reset);
	and a1(i1,q[0],q[1]);
	j_k_ff j2(q[2],i1,i1,clk,reset);
	and a2(i2,i1,q[2]);
	j_k_ff j3(q[3],i2,i2,clk,reset);

endmodule
