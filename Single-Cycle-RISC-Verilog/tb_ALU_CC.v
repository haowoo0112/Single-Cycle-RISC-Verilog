// Verilog test fixture created from schematic C:\Users\ib701\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\ALU_CC.sch - Wed Oct 05 12:16:18 2022

`timescale 1ns / 1ps

module ALU_CC_ALU_CC_sch_tb();

// Inputs
   reg [15:0] A;
   reg [15:0] B;
   reg Pre_C;
   reg ADC;
   reg SUB;
   reg SBB;

// Output
   wire [15:0] Y;
   wire Z;
   wire V;
   wire C;
   wire N;

// Bidirs

// Instantiate the UUT
   ALU_CC UUT (
		.A(A), 
		.B(B), 
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
// Initialize Inputs
   initial begin
		A = 0;
		B = 0;
		Pre_C = 0;
		ADC = 0;
		SUB = 0;
		SBB = 0;
		#20;
		
		A = 16'h1234;
		B = 16'h2345;
		Pre_C = 0;
		ADC = 0;
		SUB = 0;
		SBB = 0;
		#20;
		
		A = 16'h1234;
		B = 16'h2345;
		Pre_C = 0;
		ADC = 1'b1;
		SUB = 0;
		SBB = 0;
		#20;
		
		A = 16'h1234;
		B = 16'h2345;
		Pre_C = 1'b1;
		ADC = 1'b1;
		SUB = 0;
		SBB = 0;
		#20;
		
		A = 16'h1234;
		B = 16'h2345;
		Pre_C = 0;
		ADC = 1'b0;
		SUB = 1'b1;
		SBB = 0;
		#20;
		
		A = 16'h2345;
		B = 16'h1234;
		Pre_C = 0;
		ADC = 1'b0;
		SUB = 1'b1;
		SBB = 0;
		#20;
		
		A = 16'h1234;
		B = 16'h2345;
		Pre_C = 1'b1;
		ADC = 1'b0;
		SUB = 1'b1;
		SBB = 0;
		#20;
		
		A = 16'h1234;
		B = 16'h2345;
		Pre_C = 1'b0;
		ADC = 1'b0;
		SUB = 1'b0;
		SBB = 1'b1;
		#20;
		
		A = 16'h1234;
		B = 16'h2345;
		Pre_C = 1'b1;
		ADC = 1'b0;
		SUB = 1'b0;
		SBB = 1'b1;
		#20;
		
		A = 16'h1234;
		B = 16'h1234;
		Pre_C = 1'b1;
		ADC = 1'b0;
		SUB = 1'b1;
		SBB = 1'b0;
		#20;
		$finish;
   end
endmodule
