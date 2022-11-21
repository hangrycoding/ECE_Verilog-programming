// R11662663.v
//
//  Implement an 8-bit ripple-carry adder.
// Delete all the test benches

module top(Cin, A, B, Cout, S);
input Cin; 
input [7:0] A,B; 
output Cout;
output [7:0] S; 

wire C0,C1,C2,C3,C4,C5,C6;

full_adder FA0 (Cin,A[0],B[0],C0,S[0]);
full_adder FA1 (C0,A[1],B[1],C1,S[1]);
full_adder FA2 (C1,A[2],B[2],C2,S[2]);
full_adder FA3 (C2,A[3],B[3],C3,S[3]);
full_adder FA4 (C3,A[4],B[4],C4,S[4]);
full_adder FA5 (C4,A[5],B[5],C5,S[5]);
full_adder FA6 (C5,A[6],B[6],C6,S[6]);
full_adder FA7 (C6,A[7],B[7],Cout,S[7]);
endmodule

module full_adder(Cin,A,B,Cout,S);
input Cin,A,B;
output Cout,S; 
assign {Cout,S}=A+B+Cin;
endmodule

