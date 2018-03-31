`include "mult_cont.v"

module cont_logic(op,clk);

reg [3:0] s;
input [5:0] op ;
input clk;

reg [3:0] ns;
wire pcwrite,pcwritecond,iord,memread,memwrite,irwrite,memtoreg,pcsource1,pcsource0,aluop1,aluop0,alusrcb1,alusrcb0,alusrca,regwrite,regdst;

mult_cont m(pcwrite,pcwritecond,iord,memread,memwrite,irwrite,memtoreg,pcsource1,pcsource0,aluop1,aluop0,alusrcb1,alusrcb0,alusrca,regwrite,regdst,ns,op,s);

always @ (posedge clk)
begin
	case()
    s <= ns;
	endcase	
end