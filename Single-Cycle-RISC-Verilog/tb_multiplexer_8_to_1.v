// Verilog test fixture created from schematic C:\Users\USER\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\multiplexer_8_to_1.sch - Fri Sep 09 21:04:18 2022

`timescale 1ns / 1ps

module multiplexer_8_to_1_multiplexer_8_to_1_sch_tb();

// Inputs
   reg S2;
   reg S1;
   reg S0;
   reg I0, I1, I2, I3, I4, I5, I6, I7;

// Output
   wire Y;

// Bidirs

// Instantiate the UUT
   multiplexer_8_to_1 UUT (
		.S2(S2), 
		.S1(S1), 
		.S0(S0), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.I4(I4), 
		.I5(I5), 
		.I6(I6), 
		.I7(I7), 
		.Y(Y)
   );
// Initialize Inputs
	initial begin
		S2 = 0;
		S1 = 0;
		S0 = 0;
		I0 = 0;
		I1 = 0;
		I2 = 0;
		I3 = 0;
		I4 = 0;
		I5 = 0;
		I6 = 0;
		I7 = 0;
		#5;
		S2 = 0;
		S1 = 0;
		S0 = 0;
		I0 = 1;
		#5;
		S2 = 0;
		S1 = 0;
		S0 = 1;
		I1 = 0;
		#5;
		S2 = 0;
		S1 = 0;
		S0 = 1;
		I1 = 1;
		#5;
		S2 = 0;
		S1 = 1;
		S0 = 0;
		I2 = 0;
		#5;
		S2 = 0;
		S1 = 1;
		S0 = 0;
		I2 = 1;
		#5;
		S2 = 0;
		S1 = 1;
		S0 = 1;
		I3 = 0;
		#5;
		S2 = 0;
		S1 = 1;
		S0 = 1;
		I3 = 1;
		#5;
		S2 = 1;
		S1 = 0;
		S0 = 0;
		I4 = 0;
		#5;
		S2 = 1;
		S1 = 0;
		S0 = 0;
		I4 = 1;
		#5;
		S2 = 1;
		S1 = 0;
		S0 = 1;
		I5 = 0;
		#5;
		S2 = 1;
		S1 = 0;
		S0 = 1;
		I5 = 1;
		#5;
		S2 = 1;
		S1 = 1;
		S0 = 0;
		I6 = 0;
		#5;
		S2 = 1;
		S1 = 1;
		S0 = 0;
		I6 = 1;
		#5;
		S2 = 1;
		S1 = 1;
		S0 = 1;
		I7 = 0;
		#5;
		S2 = 1;
		S1 = 1;
		S0 = 1;
		I7 = 1;
		#5;
		$finish;
	end

endmodule
