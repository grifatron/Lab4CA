module Shifter(A[31:0], B[4:0], ShiftL[31:0], ShiftR[31:0]);
	input [31:0]A;
	input [4:0]B;
	output reg [31:0]ShiftL, ShiftR;
	
	always@(A) begin
	ShiftL = A<<B;
	ShiftR = A>>B;
	end
	
endmodule
