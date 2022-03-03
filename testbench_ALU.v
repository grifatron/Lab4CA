module testbench_ALU (in,out);


input in;
output out;

reg [31:0] A_1;
reg [31:0] B_1;
reg Cin_1;
reg [4:0] S_1;

wire [31:0] F_o;
wire [3:0] Status_o;


toplevel DUT(.A(A_1), .B(B_1), .Cin(Cin_1), .select_in(S_1), .F(F_o), .status(Status_o));
initial begin

//tests for Z and F when Cin = 0
A_1= 32'd0;
B_1= 32'd0;
Cin_1= 1'd0;
S_1= 5'd0;
#10
S_1=5'd1;
#10
S_1= 5'd2;
#10
S_1= 5'd3;
#10
S_1= 5'd4;
#10
S_1= 5'd5;
#10
S_1= 5'd6;
#10
S_1= 5'd7;
#10

//tests for Z and F when Cin = 1
A_1= 32'd0;
B_1= 32'd0;
Cin_1= 1'd1;
S_1= 5'd0;
#10
S_1= 5'd1;
#10
S_1= 5'd2;
#10
S_1= 5'd3;
#10
S_1= 5'd4;
#10
S_1= 5'd5;
#10
S_1= 5'd6;
#10
S_1= 5'd7;
#10

//Tests for V
A_1= 32'b1000000000000000000000000000000;
B_1= 32'd5;
Cin_1= 1'd1;
S_1= 5'd0;
#10
S_1= 5'd1;
#10
S_1= 5'd2;
#10
S_1= 5'd3;
#10
S_1= 5'd4;
#10
S_1= 5'd5;
#10
S_1= 5'd6;
#10
S_1= 5'd7;
#10

//Tests for N
A_1= 32'b1000000000000000000000000000000;
B_1= 32'b0000000000000000000000000000000;
Cin_1= 1'd0;

S_1= 5'd2;
#10
//Tests for Subtractor using MUX's at inputs 
A_1= 32'b1000000000000000000000000000000;
B_1= 32'b0000000000000000000000000000000;
Cin_1= 1'd0;

S_1= 5'd8;
#10

A_1= 32'b1000000000000000000000000000000;
B_1= 32'd5;
Cin_1= 1'd1;
S_1= 5'd0;
#10
S_1= 5'd1;
#10
S_1= 5'd2;
#10
S_1= 5'd3;
#10
S_1= 5'd4;
#10
S_1= 5'd5;
#10
S_1= 5'd6;
#10
S_1= 5'd7;
#10
$stop;
end

endmodule


