module HalfSubtractor(a,b,diff, borrow);
  
  input a, b;
  output diff, borrow;
  
  wire temp;
  xor diffrence(diff,a,b);
  not comple(temp, a);
  and bor(borrow, temp, b);
endmodule