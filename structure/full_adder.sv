module full_adder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  
  xor a_b_sum(sum_1, a, b);
  xor c_sum1_sum(sum, sum_1, cin);
  
  or b_c_or(t1, b,cin);
  and b_c_and(t3, b,cin);
  and a_t1_and(t2, t1, a);
  or t1_t3_or(cout, t2, t3);
endmodule
