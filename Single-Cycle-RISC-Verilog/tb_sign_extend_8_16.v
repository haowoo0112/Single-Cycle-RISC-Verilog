// Verilog test fixture created from schematic C:\Users\ib701\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\sign_extend_8_16.sch - Mon Sep 26 10:45:12 2022

`timescale 1ns / 1ps

module sign_extend_8_16_sign_extend_8_16_sch_tb();

// Inputs
   reg [7:0] imm;

// Output
   wire [15:0] Q;

// Bidirs

// Instantiate the UUT
   sign_extend_8_16 UUT (
		.imm(imm), 
		.Q(Q)
   );
// Initialize Inputs

	initial begin
		imm = 0;
		#20;
		imm = 8'h12;
		#20;
		imm = 8'h35;
		#20;
		imm = 8'h85;
		#20;
		imm = 8'hA4;
		#20;
		$finish;
   end
endmodule
