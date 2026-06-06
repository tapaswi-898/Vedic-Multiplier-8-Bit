`timescale 10ns/1ns
module testbench;
reg [7:0] a,b;
wire [15:0]q;
vedic_multiplier_8_bit V0 (a,b,q);
initial
begin
$monitor ($time,"a=%b,b=%b,q=%b",a,b,q);
a=0; b=0;
#10; a = 8'd255; b= 8'd255;
#10; a = 8'd5; b= 8'd3;
#10; a = 8'd4; b= 8'd2;
#10; a = 8'd2; b= 8'd2;
#10; a = 8'd6; b= 8'd8;
#10 $finish;
end
endmodule
