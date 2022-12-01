// Verilog test fixture created from schematic C:\Users\USER\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\adder_16_bit.sch - Sat Sep 10 16:00:33 2022

`timescale 1ns / 1ps

module adder_16_bit_adder_16_bit_sch_tb();

// Inputs
   reg [15:0] A;
   reg [15:0] B;
   reg Cin;

// Output
   wire [15:0] S;
   wire Cout;

// Bidirs

// Instantiate the UUT
   adder_16_bit UUT (
		.A(A), 
		.B(B), 
		.S(S), 
		.Cout(Cout), 
		.Cin(Cin)
   );
// Initialize Inputs
	initial begin
		A[15:0] = 0;
		B[15:0] = 0;
		Cin = 0;
		A = 16'h12;
		B = 16'h34;
		#20;
		A = 16'h56;
		B = 16'h78;
		#20;
		A = 16'h9A;
		B = 16'hBC;
		#20;
		A = 16'hDE;
		B = 16'hF0;
		#20;
		A = 16'h34;
		B = 16'h12;
		#20;
		A = 16'h78;
		B = 16'h56;
		#20;
		A = 16'hBC;
		B = 16'h9A;
		#20;
		A = 16'hF0;
		B = 16'hDE;
		#20;
		$finish;
	end
endmodule
