// starter.v (Rename to <RNumber>.v
//
//  Implement an 8-bit Adder Subtractor.
//
module top(Cin, A, B, Cout, S);
output [7:0] S;
output Cout;
input [7:0] A;
input [7:0] B;
input Cin;
wire [7:0] j;
wire Z1, Z2, Z3, Z4, Z5, Z6, Z7;
assign Cout = Z8;
xor (j[0], B[0], Cin);
xor (j[1], B[1], Cin);
xor (j[2], B[2], Cin);
xor (j[3], B[3], Cin);
xor (j[4], B[4], Cin);
xor (j[5], B[5], Cin);
xor (j[6], B[6], Cin);
xor (j[7], B[7], Cin);

letsadd FA0 (S[0], Z1, A[0], j[0], Cin);
letsadd FA1 (S[1], Z2, A[1], j[1], Z1);
letsadd FA2 (S[2], Z3, A[2], j[2], Z2);
letsadd FA3 (S[3], Z4, A[3], j[3], Z3);
letsadd FA4 (S[4], Z5, A[4], j[4], Z4);
letsadd FA5 (S[5], Z6, A[5], j[5], Z5);
letsadd FA6 (S[6], Z7, A[6], j[6], Z6);
letsadd FA7 (S[7], Z8, A[7], j[7], Z7);
endmodule

module letsadd (output Sum,cout2,input Pro1,Pro2,cin2);
assign Sum=(Pro1^Pro2)^cin2;
assign cout2=(Pro1&Pro2)|(Pro2&cin2)|(cin2&Pro1);
end module