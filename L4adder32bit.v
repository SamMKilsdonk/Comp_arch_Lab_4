module L4adder32bit (a,b,ci,s,c32);
input ci;
input [31:0] a,b;
output c32;
output [31:0] s;

wire [32:0]c;


assign c[0]=ci;

//genvar i;
//generate
//	for (i=0;i<32;i=i+1)
//	begin:
//		L4adder1bit a0 (a[i],b[i],c[i],s[i],c[i+1]);
//	end
//endgenerate
//

assign c32=c[32];


  //coppied from L5 file Ram 256X8
	genvar i;
	generate
		for (i=0;i<32;i=i+1)
		begin:l
			L4adder1bit a0 (a[i],b[i],c[i],s[i],c[i+1]);
		end
	endgenerate
	//


//L4Adder1bit a0 (a[0],b[0],c0,s[0],c1);
//L4Adder1bit a1 (a[1],b[0],c1,s[1],c2);
//L4Adder1bit a2 (a[2],b[2],c2,s[2],c3);
//L4Adder1bit a3 (a[3],b[3],c3,s[3],c4);
//L4Adder1bit a4 (a[4],b[4],c4,s[4],c5);
//L4Adder1bit a5 (a[5],b[5],c5,s[5],c6);
//L4Adder1bit a6 (a[6],b[6],c6,s[6],c7);
//L4Adder1bit a7 (a[7],b[7],c7,s[7],c8);
//L4Adder1bit a8 (a[8],b[8],c8,s[8],c9);
//L4Adder1bit a9 (a[9],b[9],c9,s[9],c10);
//L4Adder1bit a10 (a[10],b[10],c10,s[10],c11);
//L4Adder1bit a11 (a[11],b[11],c11,s[11],c12);
//L4Adder1bit a12 (a[12],b[12],c12,s[12],c13);
//L4Adder1bit a13 (a[13],b[13],c13,s[13],c14);
//L4Adder1bit a14 (a[14],b[14],c14,s[14],c15);
//L4Adder1bit a15 (a[15],b[15],c15,s[15],c16);
//L4Adder1bit a16 (a[16],b[16],c16,s[16],c17);
//L4Adder1bit a17 (a[17],b[17],c17,s[17],c18);
//L4Adder1bit a18 (a[18],b[18],c18,s[18],c19);
//L4Adder1bit a19 (a[19],b[19],c19,s[19],c20);
//L4Adder1bit a20 (a[20],b[20],c20,s[20],c21);
//L4Adder1bit a21 (a[21],b[21],c21,s[21],c22);
//L4Adder1bit a22 (a[22],b[22],c22,s[22],c23);
//L4Adder1bit a23 (a[23],b[23],c23,s[23],c24);
//L4Adder1bit a24 (a[24],b[24],c24,s[24],c25);
//L4Adder1bit a25 (a[25],b[25],c25,s[25],c26);
//L4Adder1bit a26 (a[26],b[26],c26,s[26],c27);
//L4Adder1bit a27 (a[27],b[27],c27,s[27],c28);
//L4Adder1bit a28 (a[28],b[28],c28,s[28],c29);
//L4Adder1bit a29 (a[29],b[29],c29,s[29],c30);
//L4Adder1bit a30 (a[30],b[30],c30,s[30],c31);
//L4Adder1bit a31 (a[31],b[31],c31,s[31],c32);


endmodule


//module L4adder1bit (a,b,ci,s,co);
//input a,b,ci;
//output s,co;
//
//assign s=ci^a^b;
//assign co=(a&b)|(b&ci)|(a&ci);
//
//
//endmodule

