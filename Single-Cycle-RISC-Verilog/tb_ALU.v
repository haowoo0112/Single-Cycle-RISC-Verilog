// Verilog test fixture created from schematic C:\Users\ib701\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\ALU.sch - Wed Oct 05 12:08:26 2022

`timescale 1ns / 1ps

module ALU_ALU_sch_tb();

// Inputs
   reg [15:0] A;
   reg [15:0] B;
   reg SBB;
   reg SUB;
   reg C;
   reg ADC;

// Output
   wire [15:0] Y;
   wire Cout;
   wire Cout_1;

// Bidirs

// Instantiate the UUT
   ALU UUT (
		.A(A), 
		.Y(Y), 
		.Cout(Cout), 
		.Cout_1(Cout_1), 
		.B(B), 
		.SBB(SBB), 
		.SUB(SUB), 
		.C(C), 
		.ADC(ADC)
   );
// Initialize Inputs
   initial begin
		A = 0;
		B = 0;
		SBB = 0;
		SUB = 0;
		C = 0;
		ADC = 0;
		#20;
		
		A = 16'H4567;
		B = 16'H1234;
		SBB = 1;
		SUB = 0;
		C = 0;
		ADC = 0;
		#20;
		
		A = 16'H4567;
		B = 16'H1234;
		SBB = 1;
		SUB = 0;
		C = 1;
		ADC = 0;
		#20;
		
		A = 16'H4567;
		B = 16'H1234;
		SBB = 0;
		SUB = 1;
		C = 0;
		ADC = 0;
		#20;
		
		A = 16'H4567;
		B = 16'H1234;
		SBB = 0;
		SUB = 0;
		C = 0;
		ADC = 1;
		#20;
		
		A = 16'H4567;
		B = 16'H1234;
		SBB = 0;
		SUB = 0;
		C = 1;
		ADC = 1;
		#20;
		$finish;
   end
endmodule
