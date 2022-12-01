`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:47 12/01/2022 
// Design Name: 
// Module Name:    register_file_16_bit 
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
module register_file_16_bit(
    input Write_En,
    input [2:0] Write_Addr,
    input clk,
    input [2:0] Read_Addr_A,
    input [2:0] Read_Addr_B,
    output [15:0] OutA,
    output [15:0] OutB,
    input [15:0] Write_Data,
    input clr
    );
   
   wire [7:0] D_LOAD;
   wire [15:0]I0, I1, I2, I3, I4, I5, I6, I7;

   decoder_3_to_8_en Decode3to8 (
      .x0(Write_Addr[0]), 
      .x1(Write_Addr[1]), 
      .x2(Write_Addr[2]), 
      .Y0(D_LOAD[0]), 
      .en(Write_En), 
      .Y1(D_LOAD[1]), 
      .Y2(D_LOAD[2]), 
      .Y3(D_LOAD[3]), 
      .Y4(D_LOAD[4]), 
      .Y5(D_LOAD[5]), 
      .Y6(D_LOAD[6]), 
      .Y7(D_LOAD[7])
   );

   D_flip_flop_16_bit DFF0 (.clk(clk), .D(Write_Data), .Q(I0), .LOAD(D_LOAD[0]), .clr(clr));
   D_flip_flop_16_bit DFF1 (.clk(clk), .D(Write_Data), .Q(I1), .LOAD(D_LOAD[1]), .clr(clr));
   D_flip_flop_16_bit DFF2 (.clk(clk), .D(Write_Data), .Q(I2), .LOAD(D_LOAD[2]), .clr(clr));
   D_flip_flop_16_bit DFF3 (.clk(clk), .D(Write_Data), .Q(I3), .LOAD(D_LOAD[3]), .clr(clr));
   D_flip_flop_16_bit DFF4 (.clk(clk), .D(Write_Data), .Q(I4), .LOAD(D_LOAD[4]), .clr(clr));
   D_flip_flop_16_bit DFF5 (.clk(clk), .D(Write_Data), .Q(I5), .LOAD(D_LOAD[5]), .clr(clr));
   D_flip_flop_16_bit DFF6 (.clk(clk), .D(Write_Data), .Q(I6), .LOAD(D_LOAD[6]), .clr(clr));
   D_flip_flop_16_bit DFF7 (.clk(clk), .D(Write_Data), .Q(I7), .LOAD(D_LOAD[7]), .clr(clr));

   multiplexer_8_to_1_16_bit Mux8to1_A (
      .Y(OutA), 
      .I6(I6), 
      .I5(I5), 
      .I4(I4), 
      .I3(I3), 
      .I2(I2), 
      .I1(I1), 
      .I0(I0), 
      .I7(I7), 
      .S2(Read_Addr_A[2]), 
      .S1(Read_Addr_A[1]), 
      .S0(Read_Addr_A[0])
   );
   multiplexer_8_to_1_16_bit Mux8to1_B (
      .Y(OutB), 
      .I6(I6), 
      .I5(I5), 
      .I4(I4), 
      .I3(I3), 
      .I2(I2), 
      .I1(I1), 
      .I0(I0), 
      .I7(I7), 
      .S2(Read_Addr_B[2]), 
      .S1(Read_Addr_B[1]), 
      .S0(Read_Addr_B[0])
   );
endmodule
