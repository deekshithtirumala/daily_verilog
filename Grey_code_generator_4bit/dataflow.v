module four_bit_grey_code_gen(data, y);
  input [3:0] data;
  output [3:0] y;
  
  assign y[3]=data[3];
  assign y[2]=data[2]^data[3];
  assign y[1]=data[1]^data[2]^data[3];
  assign y[0]=data[0]^data[1]^data[2]^data[3];
  
endmodule
