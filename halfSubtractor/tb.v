
module HalfSubtractor_tb();
  wire diff, borrow;
  reg a,b;
  
  HalfSubtractor hs(a, b, diff, borrow);
  
  initial begin
    $dumpfile("output.vcd");
    $dumpvars(1);
    a=0;b=0;
    #50;
    $finish;
  end
  always begin
    #10;
    b=~b;
  end
  
  always begin
    #20;
    a=~a;
  end
  
endmodule