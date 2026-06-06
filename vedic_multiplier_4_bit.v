`timescale 10ns / 1ns
module vedic_multiplier_4_bit(a,b,q);
input [3:0] a,b;
output [7:0]q;
wire [7:0]q;
wire [3:0]p0,p1,p2,p3;
wire [3:0]temp1;
wire [5:0]temp2,temp3,temp4;
wire [3:0]p4;
wire [5:0]p5;
wire [7:2]q1;
vedic_multiplier_2_bit M1(a[1:0],b[1:0],p0);
vedic_multiplier_2_bit M2 (a[1:0],b[3:2],p1);
vedic_multiplier_2_bit M3(a[3:2],b[1:0],p2);
vedic_multiplier_2_bit M4(a[3:2],b[3:2],p3);

assign temp1= {2'b00,p0[3:2]};
adder_4_bit A1 (p1,temp1,p4);

assign temp2 = {2'b00,p2};
assign temp3 = {p3,2'b00};
adder_6_bit A2 (temp2,temp3,p5);

assign temp4 = {2'b00,p4[3:0]};
adder_6_bit A3 (p5,temp4,q1[7:2]);

assign q = {q1[7:2],p0[1:0]};
endmodule











