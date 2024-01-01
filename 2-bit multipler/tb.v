module tb();
  reg [1:0]A;
  reg [1:0]B;
  
  wire [3:0]y;
  
  two_bit_multiplier uut(A, B, y);
  
  initial begin
    $dumpfile("output.vcd");
    $dumpvars(1);
    A = 2'b01;
    B = 2'b01;
    #10;
    A = 2'b10;
    B = 2'b01;
    #10;
    A = 2'b11;
    B = 2'b01;
    #10;
    A = 2'b01;
    B = 2'b10;
    #10;
    A = 2'b10;
    B = 2'b10;
    #10;
    A = 2'b11;
    B = 2'b10;
    #10;
    $finish;
  end
endmodule
