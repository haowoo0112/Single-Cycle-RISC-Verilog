`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:02 12/01/2022 
// Design Name: 
// Module Name:    ALU_CC 
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
module ALU_CC(
    input [15:0] A,
    input [15:0] B,
    input Pre_C,
    input ADC,
    input SUB,
    input SBB,
    output [15:0] Y,
    output Z,
    output V,
    output C,
    output N
    );

   assign V = C ^ Cout_1;
   assign Z = ~|Y;
   assign N = Y[15];

   ALU ALU (
      .A(A), 
      .Y(Y), 
      .Cout(C), 
      .Cout_1(Cout_1), 
      .B(B), 
      .SBB(SBB), 
      .SUB(SUB), 
      .C(Pre_C), 
      .ADC(ADC)
   );

endmodule
