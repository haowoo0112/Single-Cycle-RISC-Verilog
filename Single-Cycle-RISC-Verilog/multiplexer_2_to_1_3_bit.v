`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:24:11 12/01/2022 
// Design Name: 
// Module Name:    multiplexer_2_to_1_3_bit 
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
module multiplexer_2_to_1_3_bit(
    input S,
    input [2:0] I1,
    input [2:0] I0,
    output [2:0] Y
    );

	multiplexer_2_to_1 Mux2to1_0 (.S(S), .I0(I0[0]), .I1(I1[0]), .Y(Y[0]));
	multiplexer_2_to_1 Mux2to1_1 (.S(S), .I0(I0[1]), .I1(I1[1]), .Y(Y[1]));
	multiplexer_2_to_1 Mux2to1_2 (.S(S), .I0(I0[2]), .I1(I1[2]), .Y(Y[2]));

endmodule
