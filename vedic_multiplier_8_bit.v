`timescale 10ns / 1ns
module vedic_multiplier_8_bit(a,b,q);
input [7:0] a,b;
output [15:0]q;
wire [15:0]q;
wire [7:0]p0,p1,p2,p3;
wire [7:0]temp1;
wire [11:0]temp2,temp3,temp4;
wire [7:0]p4;
wire [11:0]p5;
wire [15:4]q1;
vedic_multiplier_4_bit M1(a[3:0],b[3:0],p0);
vedic_multiplier_4_bit M2 (a[3:0],b[7:4],p1);
vedic_multiplier_4_bit M3(a[7:4],b[3:0],p2);
vedic_multiplier_4_bit M4(a[7:4],b[7:4],p3);

assign temp1= {4'b0,p0[7:4]};
adder_8_bit A1 (p1,temp1,p4);

assign temp2 = {4'b0,p2};
assign temp3 = {p3,4'b0};
adder_12_bit A2 (temp2,temp3,p5);

assign temp4 = {4'b0,p4[7:0]};
adder_12_bit A3 (p5,temp4,q1[15:4]);

assign q = {q1[15:4],p0[3:0]};
endmodule












