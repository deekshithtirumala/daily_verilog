module tb();
  wire diff, bo_out;
  reg a,b, bo_in;
  fullSubtractor fs(a,b,bo_in,diff,bo_out);
  initial begin
    $dumpfile("output.vcd");
    $dumpvars(1);
    a=0;b=0;bo_in=0;
    #90;
    $finish;
  end
  
  always begin
    #10;
    bo_in=~bo_in;
  end
  always begin
    #20;
    b=~b;
  end
  always begin
    #40;
    a=~a;
  end
endmodule
