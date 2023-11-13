module HalfSubtractor(a,b,diff, borrow);
  
  input a, b;
  output reg diff, borrow;
  always @(*) begin
  diff <= a^b;
    borrow <= ~a&b;
  end
endmodule