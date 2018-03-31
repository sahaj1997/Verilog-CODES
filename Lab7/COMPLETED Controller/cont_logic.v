`include "mult_cont.v"

module cont_logic(op,clk);

reg [3:0] s;
input [5:0] op ;
input clk;

wire [3:0] ns;
wire pcwrite,pcwritecond,iord,memread,memwrite,irwrite,memtoreg,pcsource1,pcsource0,aluop1,aluop0,alusrcb1,alusrcb0,alusrca,regwrite,regdst;

mult_cont m(pcwrite,pcwritecond,iord,memread,memwrite,irwrite,memtoreg,pcsource1,pcsource0,aluop1,aluop0,alusrcb1,alusrcb0,alusrca,regwrite,regdst,ns,op,s);

always @ (posedge clk)
begin
	case(s)
	4'b0000 : s <= ns;
	4'b0001 : s <= ns;
	4'b0010 : s <= ns;
	4'b0011 : s <= ns;
	4'b0100 : s <= ns;
	4'b0101 : s <= ns;
	4'b0110 : s <= ns;
	4'b0111 : s <= ns;
	4'b1000 : s <= ns;
	4'b1001 : s <= ns;
	4'b1010 : s <= ns;
	4'b1011 : s <= ns;
	4'b1100 : s <= ns;
	4'b1101 : s <= ns;
	4'b1110 : s <= ns;
	4'b1111 : s <= ns;
	default: s <= 4'b0000;
	endcase	
end

endmodule