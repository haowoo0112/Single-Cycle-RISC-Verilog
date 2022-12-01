// Verilog test fixture created from schematic C:\Users\ib701\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\RF_plus_ALU.sch - Tue Oct 18 19:53:13 2022

`timescale 1ns / 1ps

module RF_plus_ALU_RF_plus_ALU_sch_tb();

// Inputs
   reg [2:0] Read_Addr_A;
   reg [2:0] Read_Addr_B;
   reg [15:0] Write_Data;
   reg [2:0] Write_Addr;
   reg Write_En;
   reg clk;
   reg Pre_C;
   reg Src_ALU_B;
   reg ADC;
   reg SUB;
   reg SBB;
   reg [4:0] imm5;
   reg clr;

// Output
   wire [15:0] Y;
   wire Z;
   wire N;
   wire C;
   wire V;
   wire [15:0] OutA;
   wire [15:0] OutB;

// Bidirs

// Instantiate the UUT
   RF_plus_ALU UUT (
		.Y(Y), 
		.Z(Z), 
		.N(N), 
		.C(C), 
		.Read_Addr_A(Read_Addr_A), 
		.Read_Addr_B(Read_Addr_B), 
		.Write_Data(Write_Data), 
		.Write_Addr(Write_Addr), 
		.Write_En(Write_En), 
		.clk(clk), 
		.Pre_C(Pre_C), 
		.Src_ALU_B(Src_ALU_B), 
		.V(V), 
		.OutA(OutA), 
		.OutB(OutB), 
		.ADC(ADC), 
		.SUB(SUB), 
		.SBB(SBB), 
		.imm5(imm5), 
		.clr(clr)
   );
// Initialize Inputs
   always
		#10 clk = ~clk;
// Initialize Inputs
	initial begin
		Read_Addr_A = 0;
		Read_Addr_B = 0;
		Write_Data = 0;
		Write_Addr = 0;
		Write_En = 0;
		clk = 0;
		clr = 1;
		Pre_C = 0;
		Src_ALU_B = 0;
		imm5 = 0;
		ADC = 0;
		SUB = 0;
		SBB = 0;
		#100;
		clr = 0;
		
		Write_Data = 16'h1234;
		Write_Addr = 3'd0;
		Write_En = 1'b1;
		#20;
		
		Write_Data = 16'h2345;
		Write_Addr = 3'd1;
		Write_En = 1'b1;
		#20;
		
		Read_Addr_A = 3'd0;
		Read_Addr_B = 3'd1;
		
		Pre_C = 0;
		ADC = 0;
		SUB = 0;
		SBB = 0;
		#20;
		
		Pre_C = 0;
		ADC = 1'b1;
		SUB = 0;
		SBB = 0;
		#20;
		
		Pre_C = 1'b1;
		ADC = 1'b1;
		SUB = 0;
		SBB = 0;
		#20;
		
		Pre_C = 0;
		ADC = 1'b0;
		SUB = 1'b1;
		SBB = 0;
		#20;
		
		Pre_C = 1'b1;
		ADC = 1'b0;
		SUB = 1'b1;
		SBB = 0;
		#20;
		
		Pre_C = 1'b0;
		ADC = 1'b0;
		SUB = 1'b0;
		SBB = 1'b1;
		#20;
		
		Pre_C = 1'b1;
		ADC = 1'b0;
		SUB = 1'b0;
		SBB = 1'b1;
		#20;
		
		ADC = 1'b0;
		SUB = 1'b0;
		SBB = 1'b0;
		Src_ALU_B = 1;
		imm5 = 5'd10;
		#20;
		$finish;
   end
endmodule
