module L4TB();

reg [31:0] a,b;
reg [2:0] op;
wire [31:0] s;
wire [3:0] status;


L4ALU mut (s,status,op,a,b);

initial begin
	
	a = 32'h40001230;
	b = 32'hB000040F;
	op = 3'b000;
end
	
always begin
		#10
		op = op+3'b001;
	end
	initial begin
		#80 $stop;
	end

endmodule
