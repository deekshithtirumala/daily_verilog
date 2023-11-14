module fullSubtractor(a,b, bo_in, diff, bo_out);
  input a,b,bo_in;
  output diff, bo_out;
  
  wire w1,b1,b2;
  
  halfSubtractor hs1(a,b,w1,b1);
  halfSubtractor hs2(w1, bo_in, diff, b2);
  
  or or1(bo_out, b1, b2);
  
endmodule

module halfSubtractor(a,b,diff,bo);
  input a, b;
  output diff, bo;
  
  wire temp;
  
  xor xor1(diff, a,b);
  not not1(temp, a);
  and and1(bo, temp, b);
  
endmodule
