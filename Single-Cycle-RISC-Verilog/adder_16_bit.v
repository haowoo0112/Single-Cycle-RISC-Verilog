`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:05 12/01/2022 
// Design Name: 
// Module Name:    adder_16_bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder_16_bit(
    input [15:0] A,
    input [15:0] B,
    input Cin,
    output [15:0] S,
    output Cout,
    output Cout_1
    );
	wire [14:0] cout;

	full_adder FA0 (.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(cout[0]));
	full_adder FA1 (.A(A[1]), .B(B[1]), .Cin(cout[0]), .S(S[1]), .Cout(cout[1]));
	full_adder FA2 (.A(A[2]), .B(B[2]), .Cin(cout[1]), .S(S[2]), .Cout(cout[2]));
	full_adder FA3 (.A(A[3]), .B(B[3]), .Cin(cout[2]), .S(S[3]), .Cout(cout[3]));
	full_adder FA4 (.A(A[4]), .B(B[4]), .Cin(cout[3]), .S(S[4]), .Cout(cout[4]));
	full_adder FA5 (.A(A[5]), .B(B[5]), .Cin(cout[4]), .S(S[5]), .Cout(cout[5]));
	full_adder FA6 (.A(A[6]), .B(B[6]), .Cin(cout[5]), .S(S[6]), .Cout(cout[6]));
	full_adder FA7 (.A(A[7]), .B(B[7]), .Cin(cout[6]), .S(S[7]), .Cout(cout[7]));
	full_adder FA8 (.A(A[8]), .B(B[8]), .Cin(cout[7]), .S(S[8]), .Cout(cout[8]));
	full_adder FA9 (.A(A[9]), .B(B[9]), .Cin(cout[8]), .S(S[9]), .Cout(cout[9]));
	full_adder FA10 (.A(A[10]), .B(B[10]), .Cin(cout[9]), .S(S[10]), .Cout(cout[10]));
	full_adder FA11 (.A(A[11]), .B(B[11]), .Cin(cout[10]), .S(S[11]), .Cout(cout[11]));
	full_adder FA12 (.A(A[12]), .B(B[12]), .Cin(cout[11]), .S(S[12]), .Cout(cout[12]));
	full_adder FA13 (.A(A[13]), .B(B[13]), .Cin(cout[12]), .S(S[13]), .Cout(cout[13]));
	full_adder FA14 (.A(A[14]), .B(B[14]), .Cin(cout[13]), .S(S[14]), .Cout(Cout_1));
	full_adder FA15 (.A(A[15]), .B(B[15]), .Cin(Cout_1), .S(S[15]), .Cout(Cout));

endmodule
