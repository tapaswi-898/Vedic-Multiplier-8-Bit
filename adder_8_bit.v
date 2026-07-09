`timescale 10ns / 1ns
module adder_8_bit(a,b,sum);
input [7:0]a,b;
output [7:0]sum;
assign sum = a+b;
endmodule
