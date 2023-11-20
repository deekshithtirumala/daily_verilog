module four_bit_grey_code_gen(data, y);
  input [3:0] data;
  output [3:0] y;
  assign y[3]=data[3];
  xor x1(y[2], y[3], data[2]);
  xor x2(y[1], y[2], data[1]);
  xor x3(y[0], y[1], data[0]);
endmodule
