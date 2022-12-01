`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:18 12/01/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [15:0] A,
    input [15:0] B,
    input SBB,
    input SUB,
    input C,
    input ADC,
    output [15:0] Y,
    output Cout,
    output Cout_1
    );

   wire Cin;
   wire [15:0] adder_B;

   assign Cin = SUB | (SBB & C) | (ADC & C);
   assign adder_B = B ^ {16{SBB | SUB}};

   adder_16_bit ADD (
      .A(A), 
      .B(adder_B), 
      .S(Y), 
      .Cout(Cout), 
      .Cin(Cin),
      .Cout_1(Cout_1)
   );

endmodule
