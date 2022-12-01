// Verilog test fixture created from schematic C:\Users\USER\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\PC_circuit.sch - Sun Oct 02 21:10:18 2022

`timescale 1ns / 1ps

module PC_circuit_PC_circuit_sch_tb();

// Inputs
   reg clk;
   reg clr;
   reg [7:0] disp8;
   reg JMP;
   reg BRANCH;
   reg flag_Rd_PC;
   reg flag_label_PC;
   reg flag_Rm_PC;
   reg [10:0] label11;
   reg [15:0] Rd;
   reg [15:0] Rm;

// Output
   wire [15:0] Q;

// Bidirs

// Instantiate the UUT
   PC_circuit UUT (
		.clk(clk), 
		.clr(clr), 
		.disp8(disp8), 
		.JMP(JMP), 
		.BRANCH(BRANCH), 
		.Q(Q), 
		.flag_Rd_PC(flag_Rd_PC), 
		.flag_label_PC(flag_label_PC), 
		.flag_Rm_PC(flag_Rm_PC), 
		.label11(label11), 
		.Rd(Rd), 
		.Rm(Rm)
   );
	always
		#10 clk = ~clk;
// Initialize Inputs
	initial begin
		clk = 0;
		clr = 0;
		disp8 = 0;
		BRANCH = 0;
		JMP = 0;
		flag_Rd_PC = 0;
		Rd = 0;
		flag_label_PC = 0;
		label11 = 0;
		flag_Rm_PC = 0;
		Rm = 0;
		
		clr = 1'b1;
		#100;
		
		clr = 1'b0;
		#10;
		
		disp8 = 8'd5;
		BRANCH = 1'b1;
		JMP = 0;
		flag_Rd_PC = 0;
		Rd = 0;
		flag_label_PC = 0;
		label11 = 0;
		flag_Rm_PC = 0;
		Rm = 0;
		#20;
		
		disp8 = 0;
		BRANCH = 0;
		JMP = 1'b1;
		flag_Rd_PC = 1'b1;
		Rd = 16'd20;
		flag_label_PC = 0;
		label11 = 0;
		flag_Rm_PC = 0;
		Rm = 0;
		#20;
		
		disp8 = 0;
		BRANCH = 0;
		JMP = 1'b1;
		flag_Rd_PC = 0;
		Rd = 0;
		flag_label_PC = 1'b1;
		label11 = 11'd15;
		flag_Rm_PC = 0;
		Rm = 0;
		#20;
		
		disp8 = 0;
		BRANCH = 0;
		JMP = 1'b1;
		flag_Rd_PC = 0;
		Rd = 0;
		flag_label_PC = 0;
		label11 = 0;
		flag_Rm_PC = 1'b1;
		Rm = 16'd50;
		#40;
		$finish;
   end
endmodule
