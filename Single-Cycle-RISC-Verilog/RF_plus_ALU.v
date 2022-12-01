`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:07 12/01/2022 
// Design Name: 
// Module Name:    RF_plus_ALU 
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
module RF_plus_ALU(
    input [2:0] Read_Addr_A,
    input [2:0] Read_Addr_B,
    input [15:0] Write_Data,
    input [2:0] Write_Addr,
    input Write_En,
    input clk,
    input Pre_C,
    input Src_ALU_B,
    input ADC,
    input SUB,
    input SBB,
    input [4:0] imm5,
    input clr,
    output [15:0] Y,
    output Z,
    output N,
    output C,
    output V,
    output [15:0] OutA,
    output [15:0] OutB
    );

   wire [15:0] ALU_B;

   ALU_CC ALU (
      .A(OutA), 
      .B(ALU_B), 
      .Pre_C(Pre_C), 
      .Y(Y), 
      .Z(Z), 
      .V(V), 
      .C(C), 
      .N(N), 
      .ADC(ADC), 
      .SUB(SUB), 
      .SBB(SBB)
   );

   register_file_16_bit RF (
      .Write_En(Write_En), 
      .Write_Addr(Write_Addr), 
      .clk(clk), 
      .Read_Addr_A(Read_Addr_A), 
      .Read_Addr_B(Read_Addr_B), 
      .OutA(OutA), 
      .OutB(OutB), 
      .Write_Data(Write_Data), 
      .clr(clr)
   );

   multiplexer_2_to_1_16_bit Mux2to1_16bit (
      .S(Src_ALU_B), 
      .I1({11'd0, imm5}), 
      .I0(OutB), 
      .Y(ALU_B)
   );

endmodule
