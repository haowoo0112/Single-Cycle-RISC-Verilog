// Verilog test fixture created from schematic C:\Users\ib701\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\D_flip_flop_16_bit.sch - Tue Oct 18 16:58:54 2022

`timescale 1ns / 1ps

module D_flip_flop_16_bit_D_flip_flop_16_bit_sch_tb();

// Inputs
   reg clk;
   reg [15:0] D;
   reg LOAD;
   reg clr;

// Output
   wire [15:0] Q;

// Bidirs
	integer x;
// Instantiate the UUT
   D_flip_flop_16_bit UUT (
		.clk(clk), 
		.D(D), 
		.Q(Q), 
		.LOAD(LOAD), 
		.clr(clr)
   );
// Initialize Inputs
      always
		#10 clk = ~clk;
	initial begin
		clk = 0;
		x = 0;
		clr = 1;
		D[15:0] = 0;
		LOAD = 1;
		#20;
		clr = 0;
		for(x=0;x<16;x=x+1)begin
			D[x] <= 1;
			#20;
		end
		LOAD = 0;
		for(x=0;x<16;x=x+1)begin
			D[x] <= 1;
			#20;
		end
		$finish;
	end

endmodule
