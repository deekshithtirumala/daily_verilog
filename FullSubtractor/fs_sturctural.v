module fullSubtractor(a,b, bo_in, diff, bo_out);
  input a,b,bo_in;
  output diff, bo_out;
  
  wire w1,w2,w3,w4,w5;
  
  xor x1(w1, a,b);
  xor x2(diff, w1, bo_in);
  
  and and1(w2, bo_in,b);
  or or1(w3,b,bo_in);
  not not1(w5,a);
  and and2(w4, w3, w5);
  or or2(bo_out,w2,w4);
  
endmodule
