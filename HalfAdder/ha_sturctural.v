module HalfAdder(a,b,sum, carry);
  
  input a, b;
  output sum, carry;
  
  xor tot(sum, a,b);
  and cry(carry, a,b);
endmodule