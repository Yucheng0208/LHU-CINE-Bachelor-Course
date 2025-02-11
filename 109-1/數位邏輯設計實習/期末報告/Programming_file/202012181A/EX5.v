//to de2
module EX5(seg7_out1,seg7_out2,A,B,c0);
input [3:0]A,B;
input c0;
output [6:0] seg7_out1,seg7_out2;
wire [3:0] s;
wire cout;
cla4 test1(s,cout,A,B,c0);
binary_to_7seg test2(cout,seg7_out2);
binary_to_7seg test3(s,seg7_out1);
endmodule
// behavioral description of 4-bit carry look-ahead adder
module cla4 (s, cout, A, B ,c0);
input [3:0] A;
input [3:0] B;
input c0;
output [3:0] s;
output cout;
wire [3:0] s;
wire cout;
wire [3:0] g;
wire [3:0] p;
wire [3:1] c;
assign g[3:0] = A[3:0] & B[3:0]; //carry generation
assign p[3:0] = A[3:0] ^ B[3:0]; //carry propagation
assign c[1] = g[0] | (p[0] & c0); //calculate each stage carryout
assign c[2] = g[1] | (g[0] & p[1]) | (p[0] & p[1] & c0);
assign c[3] = g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]) | (p[0] & p[1] & p[2] & c0);
assign cout = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3])
| (g[0] & p[1] & p[2] & p[3]) | (p[0] & p[1] & p[2] & p[3] & c0);
assign s[0] = p[0]^c0; //calculate summation
assign s[3:1] = p[3:1] ^ c[3:1];
endmodule
//DE2_7seg
module binary_to_7seg(binary_in,seg7_out);
input [3:0] binary_in;
output [6:0] seg7_out;
reg [6:0] seg7_out;
always @ (binary_in)
begin
case(binary_in)
4'h0: seg7_out = 7'b1000000;
4'h1: seg7_out = 7'b1111001;
4'h2: seg7_out = 7'b0100100;
4'h3: seg7_out = 7'b0110000;
4'h4: seg7_out = 7'b0011001;
4'h5: seg7_out = 7'b0010010;
4'h6: seg7_out = 7'b0000010;
4'h7: seg7_out = 7'b1111000;
4'h8: seg7_out = 7'b0000000;
4'h9: seg7_out = 7'b0011000;
4'hA: seg7_out = 7'b0001000;
4'hB: seg7_out = 7'b0000011;
4'hC: seg7_out = 7'b1000110;
4'hD: seg7_out = 7'b0100001;
4'hE: seg7_out = 7'b0000110;
4'hF: seg7_out = 7'b0001110;
default: seg7_out = 7'b1111111;
endcase
end
endmodule
