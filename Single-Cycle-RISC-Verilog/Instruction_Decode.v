`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:49:52 12/03/2022 
// Design Name: 
// Module Name:    Instruction_Decode 
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
module Instruction_Decode(
    input [15:0] Instruction,
    input C,
    input Z,
    output flag_HLT,
    output data_write_en,
    output flag_label_PC,
    output flag_Rm_PC,
    output flag_Rd_PC,
    output BRANCH,
    output ADC,
    output SUB,
    output SBB,
    output JMP,
    output Src_ALU_B,
    output Src_Read_B,
    output flag_mem_RF,
    output flag_ALU_RF,
    output flag_Rm_RF,
    output flag_PC_RF,
    output LHI,
    output LLI,
    output RF_write_en,
    output flag_OutR
    );
   
   wire [15:0] Instruction_bar;
   wire op_LHI, op_LLI, op_LDR, op_STR, op_ADD, op_ADC, op_SUB, op_SBB, op_CMP, op_ADDI, op_SUBI, op_MOV, op_BCC, op_BNE, op_BEQ, op_B, op_JMP, op_JAL1, op_JAL2, op_JR, op_OutR, op_HLT, op_BCS;

   assign Instruction_bar = ~Instruction;

   assign op_LHI = Instruction_bar[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction[11];
   assign op_LLI = Instruction_bar[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction[12] & Instruction_bar[11];
   assign op_LDR = Instruction_bar[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction[12] & Instruction[11];
   assign op_STR = Instruction_bar[15] & Instruction_bar[14] & Instruction[13] & Instruction_bar[12] & Instruction[11];
   assign op_ADD = Instruction_bar[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction_bar[1] & Instruction_bar[0];
   assign op_ADC = Instruction_bar[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction_bar[1] & Instruction[0];
   assign op_SUB = Instruction_bar[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction[1] & Instruction_bar[0];
   assign op_SBB = Instruction_bar[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction[1] & Instruction[0];
   assign op_CMP = Instruction_bar[15] & Instruction_bar[14] & Instruction[13] & Instruction[12] & Instruction_bar[11] & Instruction_bar[1] & Instruction[0];
   assign op_ADDI = Instruction_bar[15] & Instruction_bar[14] & Instruction[13] & Instruction[12] & Instruction[11];
   assign op_SUBI = Instruction_bar[15] & Instruction[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11];
   assign op_MOV = Instruction_bar[15] & Instruction[14] & Instruction_bar[13] & Instruction[12] & Instruction[11];
   assign op_BCC = Instruction[15] & Instruction[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction_bar[10] & Instruction[9] & Instruction[8] & ~C;
   assign op_BCS = Instruction[15] & Instruction[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction_bar[10] & Instruction[9] & Instruction_bar[8] & C;
   assign op_BNE = Instruction[15] & Instruction[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction_bar[10] & Instruction_bar[9] & Instruction[8] & ~Z;
   assign op_BEQ = Instruction[15] & Instruction[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction_bar[10] & Instruction_bar[9] & Instruction_bar[8] & Z;
   assign op_B = Instruction[15] & Instruction[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction[11] & Instruction[10] & Instruction[9] & Instruction_bar[8];
   assign op_JMP = Instruction[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction_bar[11];
   assign op_JAL1 = Instruction[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction_bar[12] & Instruction[11];
   assign op_JAL2 = Instruction[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction[12] & Instruction_bar[11];
   assign op_JR = Instruction[15] & Instruction_bar[14] & Instruction_bar[13] & Instruction[12] & Instruction[11];
   assign op_OutR = Instruction[15] & Instruction[14] & Instruction[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction_bar[1] & Instruction_bar[0];
   assign op_HLT = Instruction[15] & Instruction[14] & Instruction[13] & Instruction_bar[12] & Instruction_bar[11] & Instruction_bar[1] & Instruction[0];

   assign flag_HLT = ~op_HLT;
   assign data_write_en = op_STR;
   assign flag_label_PC = op_JMP;
   assign flag_Rm_PC = op_JAL2;
   assign flag_Rd_PC = op_JR;
   assign BRANCH = op_BCC | op_BCS | op_BNE | op_BEQ | op_B | op_JAL1;
   assign ADC = op_ADC;
   assign SUB = op_SUB | op_CMP | op_SUBI;
   assign SBB = op_SBB;
   assign JMP = op_JMP | op_JAL2 | op_JR;
   assign Src_ALU_B = op_LDR | op_STR | op_ADDI | op_SUBI;
   assign Src_Read_B = op_LHI | op_STR | op_JR;
   assign flag_mem_RF = op_LDR;
   assign flag_ALU_RF = op_ADD | op_ADC | op_SUB | op_SBB | op_ADDI | op_SUBI;
   assign flag_Rm_RF = op_MOV;
   assign flag_PC_RF = op_JAL1 | op_JAL2;
   assign LHI = op_LHI;
   assign LLI = op_LLI;
   assign RF_write_en = op_LHI | op_LLI | op_LDR | op_ADD | op_ADC | op_SUB | op_SBB | op_ADDI | op_SUBI | op_MOV | op_JAL1 | op_JAL2;
   assign flag_OutR = op_OutR;

endmodule
