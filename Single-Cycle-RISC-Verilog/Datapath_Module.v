`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:22 12/01/2022 
// Design Name: 
// Module Name:    Datapath_Module 
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
module Datapath_Module(
    input clk,
    input flag_HLT,
    input test_normal,
    input ext_instr_we,
    input [15:0] ext_instr_data,
    input clr,
    input Src_Read_B,
    input ADC,
    input SUB,
    input SBB,
    input JMP,
    input flag_label_PC,
    input flag_Rm_PC,
    input flag_Rd_PC,
    input BRANCH,
    input Src_ALU_B,
    input [15:0] ext_instr_addr,
    input [15:0] ext_data_addr,
    input [15:0] ext_data_data,
    input ext_data_write_en ,
    input data_write_en,
    input flag_mem_RF,
    input flag_ALU_RF,
    input flag_Rm_RF,
    input flag_PC_RF,
    input RF_write_en,
    input LHI,
    input LLI,
    input flag_OutR,
    output [15:0] mem_instr_out,
    output reg Pre_C,
    output reg Pre_V,
    output reg Pre_Z,
    output reg Pre_N,
    output reg [15:0] OutR
    );

   wire clk_and_HLT;
   wire [15:0] PC_out;
   wire [15:0] instr_addr;
   wire [7:0] disp8;
   wire [10:0] label11;
   wire [4:0] imm5;
   wire [2:0] Rd;
   wire [2:0] Rm;
   wire [2:0] Rn;
   wire [2:0] Read_Addr_B;
   wire Z, N, C, V;
   wire [15:0] RF_write_data;
   wire [15:0] ALU_result;
   wire [15:0] OutA;
   wire [15:0] OutB;
   wire [15:0] data_addr;
   wire [15:0] data_data;
   wire mem_data_en;
   wire [15:0] mem_data_out;
   wire [7:0] imm8;
   reg Z_buf, N_buf, C_buf, V_buf;

   assign clk_and_HLT = clk & flag_HLT;
   assign disp8 = mem_instr_out[7:0];
   assign label11 = mem_instr_out[10:0];
   assign imm5 = mem_instr_out[4:0];
   assign Rd = mem_instr_out[10:8];
   assign Rm = mem_instr_out[7:5];
   assign Rn = mem_instr_out[4:2];
   assign imm8 = mem_instr_out[7:0];
   assign RF_write_data = (mem_data_out & {16{flag_mem_RF}}) | (ALU_result & {16{flag_ALU_RF}}) | (OutA & {16{flag_Rm_RF}}) | (PC_out & {16{flag_PC_RF}}) | ({imm8, OutB[7:0]} & {16{LHI}}) | ({8'd0, imm8} & {16{LLI}});

   always @(negedge clk_and_HLT) begin
      Z_buf <= Z;
      N_buf <= N;
      C_buf <= C;
      V_buf <= V;
   end
   always @(posedge clk_and_HLT) begin
      Pre_Z <= Z_buf;
      Pre_N <= N_buf;
      Pre_C <= C_buf;
      Pre_V <= V_buf;
   end
   always @(negedge clk_and_HLT or clr) begin
      if (clr) begin
         // reset
         OutR <= 16'd0;
      end
      else begin
         if(flag_OutR)
            OutR <= OutA;
      end
   end

   PC_circuit PC (
      .clk(clk_and_HLT), 
      .clr(clr), 
      .disp8(disp8), 
      .JMP(JMP), 
      .BRANCH(BRANCH), 
      .Q(PC_out), 
      .flag_Rd_PC(flag_Rd_PC), 
      .flag_label_PC(flag_label_PC), 
      .flag_Rm_PC(flag_Rm_PC), 
      .label11(label11), 
      .Rd(OutB), 
      .Rm(OutA)
   );

   multiplexer_2_to_1_16_bit Mux_IM_ADDR (.S(test_normal), .I1(ext_instr_addr), .I0(PC_out), .Y(instr_addr));

   RAM_256x16 IM (
      .Addr(instr_addr[7:0]), 
      .Write_En(ext_instr_we), 
      .clk(~clk_and_HLT), 
      .D(ext_instr_data), 
      .O(mem_instr_out)
   );

   multiplexer_2_to_1_3_bit MuxADDR_B(.S(Src_Read_B), .I1(Rd), .I0(Rn), .Y(Read_Addr_B));

   RF_plus_ALU RF_ALU (
      .Y(ALU_result), 
      .Z(Z), 
      .N(N), 
      .C(C), 
      .Read_Addr_A(Rm), 
      .Read_Addr_B(Read_Addr_B), 
      .Write_Data(RF_write_data), 
      .Write_Addr(Rd), 
      .Write_En(RF_write_en), 
      .clk(~clk_and_HLT), 
      .Pre_C(Pre_C), 
      .Src_ALU_B(Src_ALU_B), 
      .V(V), 
      .OutA(OutA), 
      .OutB(OutB), 
      .ADC(ADC), 
      .SUB(SUB), 
      .SBB(SBB), 
      .imm5(imm5), 
      .clr(clr)
   );

   multiplexer_2_to_1_16_bit Mux_DM_ADDR (.S(test_normal), .I1(ext_data_addr), .I0(ALU_result), .Y(data_addr));
   multiplexer_2_to_1_16_bit Mux_DM_DATA (.S(test_normal), .I1(ext_data_data), .I0(OutB), .Y(data_data));
   multiplexer_2_to_1 Mux_DM_en (.S(test_normal), .I1(ext_data_write_en), .I0(data_write_en), .Y(mem_data_en));

   RAM_256x16 DM (
      .Addr(data_addr[7:0]), 
      .Write_En(mem_data_en), 
      .clk(~clk_and_HLT), 
      .D(data_data), 
      .O(mem_data_out)
   );

   
    
   
   

endmodule
