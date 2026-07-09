`timescale 10ns / 1ns
module vedic_multiplier_2_bit(a,b,q);
input [1:0]a,b;
output [3:0]q;
wire [3:0]q;
wire [3:0]temp;
assign q[0]=a[0]&b[0];
assign temp[0]= a[0]&b[1];
assign temp[1]= a[1]&b[0];
assign temp[3]= a[1]&b[1];
half_adder HA1 (temp[0],temp[1],q[1],temp[2]);
half_adder HA2  (temp[2],temp[3],q[2],q[3]);
endmodule

