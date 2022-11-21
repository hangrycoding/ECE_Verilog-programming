// R11662663.v 
//
// Implement a 5-to-32 Line Decoder.
//

module top(A,D);
input [4:0]A;
output [31:0]D; 

wire [3:0]E; 
dec_2to4 d1 (A[4:3],E);

dec_3to8 d2 (A[2:0],E[0],D[7:0]);
dec_3to8 d3 (A[2:0],E[1],D[15:8]);
dec_3to8 d4 (A[2:0],E[2],D[23:16]);
dec_3to8 d5 (A[2:0],E[3],D[31:24]);

endmodule

module dec_3to8 (A,E,D);
input E; 
input [2:0]A; 
output [7:0]D; 
reg [7:0]D;

always @*
if(E)
begin
D[0]<=(~A[2]&~A[1]&~A[0]);
D[1]<=(~A[2]&~A[1]&A[0]);
D[2]<=(~A[2]&A[1]&~A[0]);
D[3]<=(~A[2]&A[1]&A[0]);
D[4]<=(A[2]&~A[1]&~A[0]);
D[5]<=(A[2]&~A[1]&A[0]);
D[6]<=(A[2]&A[1]&~A[0]);
D[7]<=(A[2]&A[1]&A[0]);
   end
   else D<=0;

endmodule

module dec_2to4 (A,D);
input [1:0]A; 
output [3:0]D; 

assign D[0]=(~A[1]&~A[0]),
D[1]=(~A[1]&A[0]),
   D[2]=(A[1]&~A[0]),
   D[3]=(A[1]&A[0]);
     
endmodule     
