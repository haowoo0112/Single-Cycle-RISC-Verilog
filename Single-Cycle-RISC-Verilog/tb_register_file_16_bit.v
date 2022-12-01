// Verilog test fixture created from schematic C:\Users\ib701\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\register_file_16_bit.sch - Tue Oct 18 17:11:02 2022

`timescale 1ns / 1ps

module register_file_16_bit_register_file_16_bit_sch_tb();

// Inputs
   reg Write_En;
   reg [2:0] Write_Addr;
   reg clk;
   reg [2:0] Read_Addr_A;
   reg [2:0] Read_Addr_B;
   reg [15:0] Write_Data;
   reg clr;

// Output
   wire [15:0] OutA;
   wire [15:0] OutB;
	integer x;
// Bidirs

// Instantiate the UUT
   register_file_16_bit UUT (
		.Write_En(Write_En), 
		.Write_Addr(Write_Addr), 
		.clk(clk), 
		.Read_Addr_A(Read_Addr_A), 
		.Read_Addr_B(Read_Addr_B), 
		.OutA(OutA), 
		.OutB(OutB), 
		.Write_Data(Write_Data), 
		.clr(clr)
   );
// Initialize Inputs
   always
		#10 clk = ~clk;
   initial begin
		clk = 0;
		Write_En = 0;
		Write_Data[15:0] = 0;
		Read_Addr_A[2:0] = 0;
		Read_Addr_B[2:0] = 0;
		clr = 1;
		#100;
		clr = 0;
		
		Write_Addr[2:0] = 0;
		Write_Data[15:0] = 16'h12;
		Write_En = 1;
		#20;
		
		Write_Addr[2:0] = 1;
		Write_Data[15:0] = 16'h34;
		Write_En = 1;
		#20;
		
		Write_Addr[2:0] = 2;
		Write_Data[15:0] = 16'h56;
		Write_En = 1;
		#20;
		
		Write_Addr[2:0] = 3;
		Write_Data[15:0] = 16'h78;
		Write_En = 1;
		#20;
		
		Write_Addr[2:0] = 4;
		Write_Data[15:0] = 16'h9A;
		Write_En = 1;
		#20;
		
		Write_Addr[2:0] = 5;
		Write_Data[15:0] = 16'hBC;
		Write_En = 1;
		#20;
		
		Write_Addr[2:0] = 6;
		Write_Data[15:0] = 16'hDE;
		Write_En = 1;
		#20;
		
		Write_Addr[2:0] = 7;
		Write_Data[15:0] = 16'hF0;
		Write_En = 1;
		#20;
		
		for(x = 1 ; x < 8 ; x = x + 1)begin
			Read_Addr_A[2:0] = x;
			#20;
		end
		for(x = 0 ; x < 8 ; x = x + 1)begin
			Read_Addr_B[2:0] = x;
			#20;
		end
		$finish;
	end
endmodule
