// Verilog test fixture created from schematic C:\Users\ib701\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\multiplexer_2_to_1_16_bit.sch - Fri Sep 23 12:55:39 2022

`timescale 1ns / 1ps

module multiplexer_2_to_1_16_bit_multiplexer_2_to_1_16_bit_sch_tb();

// Inputs
   reg S;
   reg [15:0] I1;
   reg [15:0] I0;

// Output
   wire [15:0] Y;

// Bidirs

// Instantiate the UUT
   multiplexer_2_to_1_16_bit UUT (
		.S(S), 
		.I1(I1), 
		.I0(I0), 
		.Y(Y)
   );
// Initialize Inputs
	 initial begin
		S = 0;
		I1 = 0;
		I0 = 0;
		#20;
		S = 0;
		I1 = 16'h12;
		I0 = 16'h34;
		#20;
		S = 1;
		I1 = 16'h12;
		I0 = 16'h34;
		#20;
		S = 0;
		I1 = 16'h56;
		I0 = 16'h78;
		#20;
		S = 1;
		I1 = 16'h56;
		I0 = 16'h78;
		#20;
		S = 0;
		I1 = 16'h9A;
		I0 = 16'hBC;
		#20;
		S = 1;
		I1 = 16'h9A;
		I0 = 16'hBC;
		#20;
		S = 0;
		I1 = 16'hDE;
		I0 = 16'hF0;
		#20;
		S = 1;
		I1 = 16'hDE;
		I0 = 16'hF0;
		#20;
		$finish;
   end
endmodule
