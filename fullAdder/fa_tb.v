module full_adder_tb();
  wire sum, cout;
  reg a,b,cin;
  
  full_adder fa1(a,b,cin,sum,cout);
  
  initial begin
    $dumpfile("output.vcd");
    $dumpvars(1);
    a=0;b=0;cin=0;
    #100;$finish;
  end
  always begin
    #40
    a=~a;
  end
  always begin
    #20
    b=~b;
  end
  always begin
    #10
    cin=~cin;
  end
endmodule