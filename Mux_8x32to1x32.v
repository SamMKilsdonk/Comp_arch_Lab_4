module Mux_8x32to1x32(o, s, i7, i6, i5, i4, i3, i2, i1, i0);
   input [31:0] i0, i1, i2, i3, i4, i5, i6, i7;
   input [2:0] s;
   output reg [31:0] o;
 
	always @(s or i0 or i1 or i2 or i3 or i4 or i5 or i6 or i7 )
	begin
		case (s)
			3'd0  :  o = i0;
			3'd1  :  o = i1;
			3'd2  :  o = i2;
			3'd3  :  o = i3;
			3'd4  :  o = i4;
			3'd5  :  o = i5;
			3'd6  :  o = i6;
			3'd7  :  o = i7;
			default :  o = 32'hxxxxxxx;
		endcase
	end
endmodule
