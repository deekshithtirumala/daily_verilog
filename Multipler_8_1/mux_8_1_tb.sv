// Code your testbench here
// or browse Examples
module testbench();
  wire y;
  reg x0,x1,x2,x3,x4,x5,x6,x7,s0,s1,s2;
  multiplexer8_1 mux(x0,x1,x2,x3,x4,x5,x6,x7,s0,s1,s2,y);
  initial begin
    $dumpfile("file.vcd");
    $dumpvars(1);
    #500 $finish;
  end
  always begin
    s0=$random;
    s1=$random;s2=$random;
    x0=$random;x1=$random;x2=$random;x3=$random;
    x4=$random;x5=$random;x6=$random;x7=$random;
    #5;
  end
endmodule