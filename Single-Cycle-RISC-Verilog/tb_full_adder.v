// Verilog test fixture created from schematic C:\Users\USER\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\full_adder.sch - Sat Sep 10 11:15:58 2022

`timescale 1ns / 1ps

module full_adder_full_adder_sch_tb();

// Inputs
   reg A;
   reg B;
   reg Cin;

// Output
   wire S;
   wire Cout;

// Bidirs

// Instantiate the UUT
   full_adder UUT (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
   );
// Initialize Inputs

	initial begin
		A = 0;
		B = 0;
		Cin = 0;
		#20;
		A = 1;
		B = 0;
		Cin = 0;
		#20;
		A = 0;
		B = 1;
		Cin = 0;
		#20;
		A = 1;
		B = 1;
		Cin = 0;
		#20;
		A = 0;
		B = 0;
		Cin = 1;
		#20;
		A = 1;
		B = 0;
		Cin = 1;
		#20;
		A = 0;
		B = 1;
		Cin = 1;
		#20;
		A = 1;
		B = 1;
		Cin = 1;
		#20;
		$finish;
	end
endmodule
