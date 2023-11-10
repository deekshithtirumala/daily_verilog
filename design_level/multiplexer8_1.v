// Code your design here
/* 
 * Do not change Module name 
*/
//timescale 1ns/1ps

//design level multiplexer verilog program
module multiplexer8_1(x0,x1,x2,x3,x4,x5,x6,x7,s0,s1,s2,y);
input x0,x1,x2,x3,x4,x5,x6,x7,s0,s1,s2;
output y;

assign y = (x0 & ~s0 & ~s1 & ~s2) | (x1 & ~s0 & ~s1 & s2) | (x2 & ~s0 & s1 & ~s2) | (x3 & ~s0 & s1 & s2) | (x4 & s0 & ~s1 & ~s2) | (x5 & s0 & ~s1 & s2) | (x6 & s0 & s1 & ~s2) | (x7 & s0 & s1 & s2);


endmodule