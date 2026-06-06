`timescale 10ns / 1ns
module half_adder (a,b,sum,carry);
input a,b;
output sum,carry;
assign sum = a^b;
assign carry = a&b;
endmodule
