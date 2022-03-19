module L4adder1bit (a,b,ci,s,co);
input a,b,ci;
output s,co;

assign s=ci^a^b;
assign co=(a&b)|(b&ci)|(a&ci);


endmodule
