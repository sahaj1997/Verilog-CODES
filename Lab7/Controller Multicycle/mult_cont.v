module mult_cont(pcwrite,pcwritecond,iord,memread,memwrite,irwrite,memtoreg,pcsource1,pcsource0,aluop1,aluop0,alusrcb1,alusrcb0,alusrca,regwrite,regdst,ns,op,s);

input [3:0] s;
input [5:0]op ;

output [3:0] ns;
output pcwrite,pcwritecond,iord,memread,memwrite,irwrite,memtoreg,pcsource1,pcsource0,aluop1,aluop0,alusrcb1,alusrcb0,alusrca,regwrite,regdst;

wire [16:0] lines;

assign lines[0] = ( ~s[0] & ~s[1] & ~s[2] & ~s[3] ) ;

assign lines[1] = ( s[0] & ~s[1] & ~s[2] & ~s[3] ) ;

assign lines[2] = ( ~s[0] & s[1] & ~s[2] & ~s[3] ) ;

assign lines[3] = ( s[0] & s[1] & ~s[2] & ~s[3] ) ;

assign lines[4] = ( ~s[0] & ~s[1] & s[2] & ~s[3] ) ;

assign lines[5] = ( s[0] & ~s[1] & s[2] & ~s[3] ) ;

assign lines[6] = ( ~s[0] & s[1] & s[2] & ~s[3] ) ;

assign lines[7] = ( s[0] & s[1] & s[2] & ~s[3] ) ;

assign lines[8] = ( ~s[0] & ~s[1] & ~s[2] & s[3] ) ;

assign lines[9] = ( s[0] & ~s[1] & ~s[2] & s[3] ) ;

assign lines[10] = ( s[0] & ~s[1] & ~s[2] & ~s[3] & ~op[0] & op[1] & ~op[2] & ~op[3] & ~op[4] & ~op[5] ) ;

assign lines[11] = ( s[0] & ~s[1] & ~s[2] & ~s[3] & ~op[0] & ~op[1] & op[2] & ~op[3] & ~op[4] & ~op[5] ) ;

assign lines[12] = ( s[0] & ~s[1] & ~s[2] & ~s[3] & ~op[0] & ~op[1] & ~op[2] & ~op[3] & ~op[4] & ~op[5] ) ;

assign lines[13] = ( ~s[0] & s[1] & ~s[2] & ~s[3] & op[0] & op[1] & ~op[2] & op[3] & ~op[4] & op[5] ) ;

assign lines[14] = ( s[0] & ~s[1] & ~s[2] & ~s[3] & op[0] & op[1] & ~op[2] & ~op[3] & ~op[4] & op[5] ) ;

assign lines[15] = ( s[0] & ~s[1] & ~s[2] & ~s[3] & op[0] & op[1] & ~op[2] & op[3] & ~op[4] & op[5] ) ;

assign lines[16] = ( ~s[0] & s[1] & ~s[2] & ~s[3] & op[0] & op[1] & ~op[2] & ~op[3] & ~op[4] & op[5] ) ;







assign pcwrite = lines[0] || lines[9];

assign pcwritecond = lines[8] ;

assign iord = lines[3] || lines[5] ;

assign memread = lines[0] || lines[3] ;

assign memwrite = lines[5] ;

assign irwrite = lines[0] ;

assign memtoreg = lines[4] ;

assign pcsource1 = lines[9] ;

assign pcsource0 = lines[8] ;

assign aluop1 = lines[6] ;

assign aluop0 = lines[8] ;

assign alusrcb1 = lines[1] || lines[2] ;

assign alusrcb0 = lines[0] || lines[1] ;

assign alusrca = lines[2] || lines[6] || lines[8] ;

assign regwrite = lines[4] || lines[7] ;

assign regdst = lines[7] ;

assign ns[3] = lines[10] || lines[11] ;

assign ns[2] = lines[3] || lines[6] || lines[12] || lines[13] ;

assign ns[1] = lines[6] || lines[12] || lines[14] || lines[15] || lines[16] ;

assign ns[0] = lines[0] || lines[6] || lines[10] || lines[13] || lines[16] ;

endmodule

