// Code your design here
/* 
 * Do not change Module name 
*/
//timescale 1ns/1ps

//behavioural level multiplexer verilog program
module multiplexer8_1(x0,x1,x2,x3,x4,x5,x6,x7,s0,s1,s2,y);
input x0,x1,x2,x3,x4,x5,x6,x7,s0,s1,s2;
output reg y;

always @(s1 or s2 or s0) begin
  case({s0,s1,s2})
      3'b000: y=x0;
      3'b001: y=x1;
      3'b010: y=x2;
      3'b011: y=x3;
      3'b100: y=x4;
      3'b101: y=x5;
      3'b110: y=x6;
      3'b111: y=x7;
      default: y=0;
  endcase
end
  
endmodule