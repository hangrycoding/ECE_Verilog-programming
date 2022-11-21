module top(A, B, C, D, F);

input A, B, C, D;
output F;

assign F = B&D | A&B&~C | A&C&D | ~A&B&C;

endmodule