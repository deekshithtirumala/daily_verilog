module tb();
  wire [3:0] y;
  reg [3:0] data;
  
  four_bit_grey_code_gen gry_gen(data, y);
  initial begin
    $dumpfile("out.vcd");
    $dumpvars(1);
    data=4'b0000;#20;
    data=4'b0001;#20;
    data=4'b0010;#20;
    data=4'b0011;#20;
    data=4'b0100;#20;
    $finish;
  end
endmodule
