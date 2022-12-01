`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:41 12/01/2022 
// Design Name: 
// Module Name:    two_comple_adder_16bit 
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
module two_comple_adder_16bit(
    input [15:0] A,
    input [15:0] B,
    input C,
    output [15:0] Y,
    output Cout,
    output Cout_1
    );

	adder_16_bit adder (
		.A(A), 
		.B(B ^ {16{C}}), 
		.S(Y), 
		.Cout(Cout), 
		.Cin(C)
   );

endmodule
