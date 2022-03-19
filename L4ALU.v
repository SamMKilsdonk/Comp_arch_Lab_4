module L4ALU (s,status, op,a,b);
	input [31:0] a,b;
	input [2:0] op;
	output [31:0] s;
	output [3:0] status;
	
	
	wire [4:0] shiftParam;
	
	wire[31:0]su,xo,an,or_,no,rs,ls,zero;
	
	L4adder32bit adder (a,b,1'b0,su,status[2]);
	
	assign shiftParam = b[4:0];
	
	assign xo = a^b;
	assign an = a&b;
	assign or_ = a|b;
	assign no = ~or_;
	assign rs = a >> shiftParam;
	assign ls = a << shiftParam;
	
	//zero reg for unused output state
	assign zero = 32'h00000000;
	
	Mux_8x32to1x32 mux (s,op,zero,ls,rs,no,or_,an,xo,su);
	//zero flag
	assign status[0]=(s==32'b0)?1'b1:1'b0;
	//neg flag
	assign status[1] = s[31];
	
	// overflow flag =ab`s + `a`bs if a and b have same sign, but s has opposite sign, then overflow has occurred
	assign status[3] = (a[31] & b[31] & ~s[31]) | (~a[31] & ~ b[31] & s[31]);

endmodule
