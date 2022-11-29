// Verilog test fixture created from schematic C:\Users\USER\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\multiplexer_8_to_1_16_bit.sch - Sat Sep 10 01:43:06 2022

`timescale 1ns / 1ps

module multiplexer_8_to_1_16_bit_multiplexer_8_to_1_16_bit_sch_tb();

// Inputs
   reg [15:0] I6;
   reg [15:0] I5;
   reg [15:0] I4;
   reg [15:0] I3;
   reg [15:0] I2;
   reg [15:0] I1;
   reg [15:0] I0;
   reg [15:0] I7;
   reg S2;
   reg S1;
   reg S0;

// Output
   wire [15:0] Y;

// Bidirs

// Instantiate the UUT
   multiplexer_8_to_1_16_bit UUT (
		.Y(Y), 
		.I6(I6), 
		.I5(I5), 
		.I4(I4), 
		.I3(I3), 
		.I2(I2), 
		.I1(I1), 
		.I0(I0), 
		.I7(I7), 
		.S2(S2), 
		.S1(S1), 
		.S0(S0)
   );
// Initialize Inputs

	initial begin
		I6[15:0] = 16'h12;
		I5[15:0] = 16'h34;
		I4[15:0] = 16'h56;
		I3[15:0] = 16'h78;
		I2[15:0] = 16'h9A;
		I1[15:0] = 16'hBC;
		I0[15:0] = 16'hDE;
		I7[15:0] = 16'hF0;
		S2 = 0;
		S1 = 0;
		S0 = 0;
		#20;
		S2 = 0;
		S1 = 0;
		S0 = 1;
		#20;
		S2 = 0;
		S1 = 1;
		S0 = 0;
		#20;
		S2 = 0;
		S1 = 1;
		S0 = 1;
		#20;
		S2 = 1;
		S1 = 0;
		S0 = 0;
		#20;
		S2 = 1;
		S1 = 0;
		S0 = 1;
		#20;
		S2 = 1;
		S1 = 1;
		S0 = 0;
		#20;
		S2 = 1;
		S1 = 1;
		S0 = 1;
		#20;
		$finish;
   end
endmodule
