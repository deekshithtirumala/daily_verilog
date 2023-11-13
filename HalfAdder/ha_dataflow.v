module HalfAdder(a,b,sum, carry);
  
  input a, b;
  output reg sum, carry;
  always @(*) begin
  assign sum = a^b;
  assign carry =a&b;
  end
endmodule