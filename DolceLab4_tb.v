`timescale 1ns/1ps
module DolceLab4_tb(r, e);
input r;
output e;


reg[31:0]A;
reg[31:0] B;
reg Cin;
wire [31:0]S;
wire Cout;

DolceLab4 dut(A,B,Cin,S, Cout);
initial begin

A = 32'd 9;
B = 32'd 10;
Cin = 0;
#20
A = 32'h ffffffff;
B = 32'd 1;
#20;


end


endmodule