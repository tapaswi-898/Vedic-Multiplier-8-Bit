`timescale 10ns / 1ns
module adder_4_bit(a,b,sum);
input [3:0]a,b;
output [3:0]sum;
assign sum = a+b;
endmodule
