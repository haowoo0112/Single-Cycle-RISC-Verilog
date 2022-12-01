// Verilog test fixture created from schematic C:\Users\ib701\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\multiplexer_2_to_1.sch - Fri Sep 23 12:32:57 2022

`timescale 1ns / 1ps

module multiplexer_2_to_1_multiplexer_2_to_1_sch_tb();

// Inputs
   reg S;
   reg I0;
   reg I1;

// Output
   wire Y;

// Bidirs

// Instantiate the UUT
   multiplexer_2_to_1 UUT (
		.S(S), 
		.I0(I0), 
		.I1(I1), 
		.Y(Y)
   );
// Initialize Inputs

	initial begin
		S = 0;
		I0 = 0;
		I1 = 0;
		#20;
		S = 0;
		I0 = 0;
		I1 = 1;
		#20;
		S = 0;
		I0 = 1;
		I1 = 0;
		#20;
		S = 0;
		I0 = 1;
		I1 = 1;
		#20;
		S = 1;
		I0 = 0;
		I1 = 0;
		#20;
		S = 1;
		I0 = 0;
		I1 = 1;
		#20;
		S = 1;
		I0 = 1;
		I1 = 0;
		#20;
		S = 1;
		I0 = 1;
		I1 = 1;
		#20;
		$finish;
   end
endmodule
