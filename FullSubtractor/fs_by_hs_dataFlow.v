module fullSubtractor(a,b, bo_in, diff, bo_out);
  input a,b,bo_in;
  output diff, bo_out;
  
  wire w1,b1,b2;
  
  halfSubtractor hs1(a,b,w1,b1);
  halfSubtractor hs2(w1, bo_in, diff, b2);
  
  assign bo_out = b1|b2;
  
endmodule

module halfSubtractor(a,b,diff,bo);
  input a, b;
  output diff, bo;
  
  wire temp;
  
  assign diff = a^b;
  assign bo = ~a&b;
  
endmodule
