`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:18 12/03/2022 
// Design Name: 
// Module Name:    Single_Cycle_RISC 
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
module Single_Cycle_RISC(
    input clk,
    input clr,
    input test_normal,
    input ext_instr_we,
    input [15:0] ext_instr_addr,
    input [15:0] ext_instr_data,
    input ext_data_we,
    input [15:0] ext_data_addr,
    input [15:0] ext_data_data,
    output [15:0] OutR,
    output [15:0] instruction,
    output done
    );

   wire Pre_C, Pre_Z;
   wire flag_HLT;
   wire data_write_en;
   wire flag_label_PC;
   wire flag_Rm_PC;
   wire flag_Rd_PC;
   wire BRANCH;
   wire ADC;
   wire SUB;
   wire SBB;
   wire JMP;
   wire Src_ALU_B;
   wire Src_Read_B;
   wire flag_mem_RF;
   wire flag_ALU_RF;
   wire flag_Rm_RF;
   wire flag_PC_RF;
   wire LHI;
   wire LLI;
   wire RF_write_en;
   wire flag_OutR;

   assign done = ~flag_HLT;

   Instruction_Decode ID (
      .Instruction(instruction), 
      .C(Pre_C), 
      .Z(Pre_Z), 
      .flag_HLT(flag_HLT), 
      .data_write_en(data_write_en), 
      .flag_label_PC(flag_label_PC), 
      .flag_Rm_PC(flag_Rm_PC), 
      .flag_Rd_PC(flag_Rd_PC), 
      .BRANCH(BRANCH), 
      .ADC(ADC), 
      .SUB(SUB), 
      .SBB(SBB), 
      .JMP(JMP), 
      .Src_ALU_B(Src_ALU_B), 
      .Src_Read_B(Src_Read_B), 
      .flag_mem_RF(flag_mem_RF), 
      .flag_ALU_RF(flag_ALU_RF), 
      .flag_Rm_RF(flag_Rm_RF), 
      .flag_PC_RF(flag_PC_RF), 
      .LHI(LHI), 
      .LLI(LLI), 
      .RF_write_en(RF_write_en), 
      .flag_OutR(flag_OutR)
   );

   Datapath_Module DP (
      .clk(clk), 
      .flag_HLT(flag_HLT), 
      .test_normal(test_normal), 
      .ext_instr_we(ext_instr_we), 
      .ext_instr_data(ext_instr_data), 
      .mem_instr_out(instruction), 
      .clr(clr), 
      .Src_Read_B(Src_Read_B), 
      .Pre_C(Pre_C), 
      .ADC(ADC), 
      .SUB(SUB), 
      .SBB(SBB), 
      .JMP(JMP), 
      .flag_label_PC(flag_label_PC), 
      .flag_Rm_PC(flag_Rm_PC), 
      .flag_Rd_PC(flag_Rd_PC), 
      .BRANCH(BRANCH), 
      .Src_ALU_B(Src_ALU_B), 
      .ext_instr_addr(ext_instr_addr), 
      .ext_data_addr(ext_data_addr), 
      .ext_data_data(ext_data_data), 
      .ext_data_write_en(ext_data_we), 
      .data_write_en(data_write_en), 
      .Pre_Z(Pre_Z), 
      .flag_mem_RF(flag_mem_RF), 
      .flag_ALU_RF(flag_ALU_RF), 
      .flag_Rm_RF(flag_Rm_RF), 
      .flag_PC_RF(flag_PC_RF), 
      .RF_write_en(RF_write_en), 
      .LHI(LHI), 
      .LLI(LLI),
      .flag_OutR(flag_OutR),
      .OutR(OutR)
   );

endmodule
