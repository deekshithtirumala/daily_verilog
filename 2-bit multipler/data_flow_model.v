module two_bit_multiplier(A, B, y);
  input [1:0]A;
  input [1:0]B;
  
  output [3:0]y;
  
  
  assign y[0] = A[0]&B[0];
  assign y[1] = A[1]&B[0]&(~B[1] | ~A[0]) | A[0]&B[1]&(~A[1] | ~B[0]);
  assign y[2] = A[1]&B[1]&(~A[0] | ~B[0]);
  assign y[3] = A[1]&A[0]&B[1]&B[0];
endmodule
