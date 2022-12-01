`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:25 12/01/2022 
// Design Name: 
// Module Name:    multiplexer_2_to_1_16_bit 
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
module multiplexer_2_to_1_16_bit(
    input S,
    input [15:0] I1,
    input [15:0] I0,
    output [15:0] Y
    );

	multiplexer_2_to_1 Mux2to1_0 (.S(S), .I0(I0[0]), .I1(I1[0]), .Y(Y[0]));
	multiplexer_2_to_1 Mux2to1_1 (.S(S), .I0(I0[1]), .I1(I1[1]), .Y(Y[1]));
	multiplexer_2_to_1 Mux2to1_2 (.S(S), .I0(I0[2]), .I1(I1[2]), .Y(Y[2]));
	multiplexer_2_to_1 Mux2to1_3 (.S(S), .I0(I0[3]), .I1(I1[3]), .Y(Y[3]));
	multiplexer_2_to_1 Mux2to1_4 (.S(S), .I0(I0[4]), .I1(I1[4]), .Y(Y[4]));
	multiplexer_2_to_1 Mux2to1_5 (.S(S), .I0(I0[5]), .I1(I1[5]), .Y(Y[5]));
	multiplexer_2_to_1 Mux2to1_6 (.S(S), .I0(I0[6]), .I1(I1[6]), .Y(Y[6]));
	multiplexer_2_to_1 Mux2to1_7 (.S(S), .I0(I0[7]), .I1(I1[7]), .Y(Y[7]));
	multiplexer_2_to_1 Mux2to1_8 (.S(S), .I0(I0[8]), .I1(I1[8]), .Y(Y[8]));
	multiplexer_2_to_1 Mux2to1_9 (.S(S), .I0(I0[9]), .I1(I1[9]), .Y(Y[9]));
	multiplexer_2_to_1 Mux2to1_10 (.S(S), .I0(I0[10]), .I1(I1[10]), .Y(Y[10]));
	multiplexer_2_to_1 Mux2to1_11 (.S(S), .I0(I0[11]), .I1(I1[11]), .Y(Y[11]));
	multiplexer_2_to_1 Mux2to1_12 (.S(S), .I0(I0[12]), .I1(I1[12]), .Y(Y[12]));
	multiplexer_2_to_1 Mux2to1_13 (.S(S), .I0(I0[13]), .I1(I1[13]), .Y(Y[13]));
	multiplexer_2_to_1 Mux2to1_14 (.S(S), .I0(I0[14]), .I1(I1[14]), .Y(Y[14]));
	multiplexer_2_to_1 Mux2to1_15 (.S(S), .I0(I0[15]), .I1(I1[15]), .Y(Y[15]));

endmodule
