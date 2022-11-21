module adder_subtractor_block(cin, A, B, cout, S);
output [7:0] S;
output cout;
input [7:0] A,B;
input cin;
wire [7:0] x;
wire C1, C2, C3, C4, C5, C6, C7;
assign cout = C8;
xor (x[0], B[0], cin);
xor (x[1], B[1], cin);
xor (x[2], B[2], cin);
xor (x[3], B[3], cin);
xor (x[4], B[5], cin);
xor (x[5], B[5], cin);
xor (x[6], B[6], cin);
xor (x[7], B[7], cin);

full_adder FA0 (S[0], C1, A[0], x[0], cin);
full_adder FA1 (S[1], C2, A[1], x[1], C1);
full_adder FA1 (S[2], C3, A[2], x[2], C2);
full_adder FA1 (S[3], C4, A[3], x[3], C3);
full_adder FA1 (S[4], C5, A[4], x[4], C4);
full_adder FA1 (S[5], C6, A[5], x[5], C5);
full_adder FA1 (S[6], C7, A[6], x[6], C6);
full_adder FA1 (S[7], C8, A[7], x[7], C7);
endmodule

module full_adder (output Sum, Cout, input In1,In2,Cin);

assign Sum=(In1^In2)^Cin;
assign Cout=(In1&In2)|(In2&Cin)|(Cin&In1);
end module