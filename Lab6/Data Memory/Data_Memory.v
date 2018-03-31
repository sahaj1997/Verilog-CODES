module Data_Memory(read_data,address,write_data,mem_write,mem_read);

input [31:0] write_data, address; 
input mem_read, mem_write;
output read_data;
wire 

always @(write_data or address)
begin
 case({mem_write,mem_read})
 begin
 
	2'b00 :
	begin
		
	end
	
	2'b01 :
	begin
		
	end
	
	2'b10 :
	begin
		
	end
	
	2'b11 :
	begin
		
	end
	
 end
end