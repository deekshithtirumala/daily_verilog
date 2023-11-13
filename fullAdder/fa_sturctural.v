module full_adder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  
  wire w1,w2,w3;
  
  half_adder ha1(a,b, w2, w1);
  half_adder ha2(w2, cin, sum, w3);
  
  or carry_or(cout, w3,w1);
  
endmodule

module half_adder(a,b,sum,cout);
  
  input a,b;
  output sum, cout;
  
  xor tot(sum, a,b);
  and carry(cout, a,b);
endmodule
