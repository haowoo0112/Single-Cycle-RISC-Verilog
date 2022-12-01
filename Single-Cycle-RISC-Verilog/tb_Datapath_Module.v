// Verilog test fixture created from schematic C:\Users\ib701\Desktop\Single-Cycle-RISC-Schematic\Single-Cycle-RISC-Schematic\Datapath_Module.sch - Tue Oct 04 11:29:57 2022

`timescale 1ns / 1ps

module Datapath_Module_Datapath_Module_sch_tb();
	parameter clk_period = 20;
	parameter delay_factor = 2;
// Inputs
   reg clk;
   reg flag_HLT;
   reg test_normal;
   reg ext_instr_we;
   reg [15:0] ext_instr_data;
   reg clr;
   reg Src_Read_B;
   reg ADC;
   reg SUB;
   reg SBB;
   reg JMP;
   reg flag_label_PC;
   reg flag_Rm_PC;
   reg flag_Rd_PC;
   reg BRANCH;
   reg Src_ALU_B;
   reg [15:0] ext_instr_addr;
   reg [15:0] ext_data_addr;
   reg [15:0] ext_data_data;
   reg ext_data_write_en;
   reg data_write_en;
   reg flag_mem_RF;
   reg flag_ALU_RF;
   reg flag_Rm_RF;
   reg flag_PC_RF;
   reg RF_write_en;
   reg LHI;
   reg LLI;
	reg flag_OutR;

// Output
   wire [15:0] mem_instr_out;
   wire Pre_C;
   wire Pre_V;
   wire Pre_Z;
   wire Pre_N;
	wire [15:0] OutR;

// Bidirs

// Instantiate the UUT
   Datapath_Module UUT (
		.clk(clk), 
		.flag_HLT(flag_HLT), 
		.test_normal(test_normal), 
		.ext_instr_we(ext_instr_we), 
		.ext_instr_data(ext_instr_data), 
		.mem_instr_out(mem_instr_out), 
		.clr(clr), 
		.Src_Read_B(Src_Read_B), 
		.Pre_C(Pre_C), 
		.ADC(ADC), 
		.SUB(SUB), 
		.SBB(SBB), 
		.JMP(JMP), 
		.flag_label_PC(flag_label_PC), 
		.flag_Rm_PC(flag_Rm_PC), 
		.flag_Rd_PC(flag_Rd_PC), 
		.BRANCH(BRANCH), 
		.Src_ALU_B(Src_ALU_B), 
		.ext_instr_addr(ext_instr_addr), 
		.ext_data_addr(ext_data_addr), 
		.ext_data_data(ext_data_data), 
		.ext_data_write_en(ext_data_write_en), 
		.data_write_en(data_write_en), 
		.Pre_V(Pre_V), 
		.Pre_Z(Pre_Z), 
		.Pre_N(Pre_N), 
		.flag_mem_RF(flag_mem_RF), 
		.flag_ALU_RF(flag_ALU_RF), 
		.flag_Rm_RF(flag_Rm_RF), 
		.flag_PC_RF(flag_PC_RF), 
		.RF_write_en(RF_write_en), 
		.LHI(LHI), 
		.LLI(LLI),
		.flag_OutR(flag_OutR),
		.OutR(OutR)
   );
// Initialize Inputs
	always begin
		#(clk_period/2) clk <= 1'b0;
		#(clk_period/2) clk <= 1'b1;
	end
	initial
		$monitor ( $realtime , "ns %h %h %h %h %h %h %h %h \n" ,
		clk, clr, ext_instr_we, test_normal, ext_instr_addr,
		ext_instr_data, mem_instr_out, OutR ) ;
	initial begin
		reset_mode();
		
		flag_HLT = 1'b1;
		#160;
		//test_LHI();
		//test_LLI();
		//test_LDR();
		//test_STR();
		//test_ADD();
		//test_SUB();
		//test_ADDI();
		//test_SUBI();
		//test_BRANCH();
		//test_JMP();
		//test_JAL1();
		test_JAL2();
		//test_JR();
		//test_HLT();
		
		#30;
		$finish;
	end

	task test_HLT;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b11100_0000_00000_01);//HLT
		write_data_mem(16'h0, 16'h0012);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_HLT();
		#20;
	end
	endtask

	task test_JR;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b10011_001_00000000);//JR
		write_data_mem(16'h0, 16'h0012);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_JR();
		#20;
	end
	endtask

	task test_JAL2;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b10010_010_001_000_00);//JAL2
		write_instr_mem(16'h12, 16'b11100_000_010_000_00);//Out
		write_data_mem(16'h0, 16'h0012);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_JAL2();
		#20;
		instr_OutR();
		#20;
	end
	endtask

	task test_JAL1;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b10001_010_00000111);//JAL1
		write_instr_mem(16'h8, 16'b11100_000_010_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_JAL1();
		#20;
		instr_OutR();
		#20;
	end
	endtask

	task test_JMP;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b10000_00000001000);//JMP
		write_instr_mem(16'h8, 16'b11100_000_001_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_JMP();
		#20;
		instr_OutR();
		#20;
	end
	endtask

	task test_BRANCH;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b1100_1110_00000111);//BRANCH
		write_instr_mem(16'h8, 16'b11100_000_001_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_BRANCH();
		#20;
		instr_OutR();
		#20;
	end
	endtask

	task test_SUBI;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b11100_000_001_000_00);//Out
		write_instr_mem(16'h2, 16'b01000_010_001_00111);//SUBI
		write_instr_mem(16'h3, 16'b11100_000_010_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
		instr_SUBI();
		#20;
		instr_OutR();
		#20;
	end
	endtask

	task test_ADDI;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b11100_000_001_000_00);//Out
		write_instr_mem(16'h2, 16'b00111_010_001_00111);//ADDI
		write_instr_mem(16'h3, 16'b11100_000_010_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
		instr_ADDI();
		#20;
		instr_OutR();
		#20;
	end
	endtask

	task test_SUB;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b11100_000_001_000_00);//Out
		write_instr_mem(16'h2, 16'b00011_010_000_00001);//LDR
		write_instr_mem(16'h3, 16'b11100_000_010_000_00);//Out
		write_instr_mem(16'h4, 16'b00000_011_010_001_10);//SUB
		write_instr_mem(16'h5, 16'b11100_000_011_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		write_data_mem(16'h1, 16'h4321);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
		instr_SUB();
		#20;
		instr_OutR();
		#20;
	end
	endtask

 	task test_ADD;
	begin
   	write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b11100_000_001_000_00);//Out
		write_instr_mem(16'h2, 16'b00011_010_000_00001);//LDR
		write_instr_mem(16'h3, 16'b11100_000_010_000_00);//Out
		write_instr_mem(16'h4, 16'b00000_011_001_010_00);//ADD
		write_instr_mem(16'h5, 16'b11100_000_011_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		write_data_mem(16'h1, 16'h4321);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
		instr_ADD();
		#20;
		instr_OutR();
		#20;
	end
	endtask
	
	task test_STR;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b11100_000_001_000_00);//Out
		write_instr_mem(16'h2, 16'b00101_001_000_00001);//STR
		write_instr_mem(16'h3, 16'b00011_010_000_00001);//LDR
		write_instr_mem(16'h4, 16'b11100_000_010_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
		instr_STR();
		#20;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
	end
	endtask
	
	task test_LDR;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b11100_000_001_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
	end
	endtask
	
	task test_LLI;
	begin
		write_instr_mem(16'h0, 16'b00001_001_01010110);//LLI
		write_instr_mem(16'h1, 16'b11100_000_001_000_00);//Out
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LLI();
		#20;
		instr_OutR();
		#20;
	end
	endtask
	
	task test_LHI;
	begin
		write_instr_mem(16'h0, 16'b00011_001_000_00000);//LDR
		write_instr_mem(16'h1, 16'b11100_000_001_000_00);//Out
		write_instr_mem(16'h2, 16'b00001_001_01010110);//LHI
		write_instr_mem(16'h3, 16'b11100_000_001_000_00);//Out
		write_data_mem(16'h0, 16'h1234);
		#20;
		ext_instr_we = 1'b0;
		test_normal = 1'b0;
		clr = 1;
		#20;
		clr = 0;
		instr_LDR();
		#20;
		instr_OutR();
		#20;
		instr_LHI();
		#20;
		instr_OutR();
		#20;
	end
	endtask
	
	task write_data_mem;
	input [15:0] addr, data;
	begin
		test_normal = 1'b1;
		ext_data_write_en = 1'b1; 
		ext_data_addr = addr;
		ext_data_data = data;
		#20;
	end
	endtask
	
	task write_instr_mem;
	input [15:0] addr, data;
	begin
		test_normal = 1'b1;
		ext_instr_we = 1'b1; 
		ext_instr_addr = addr;
		ext_instr_data = data;
		#20;
	end
	endtask
	
	task reset_mode;
	begin	
		
		flag_HLT = 0;
		clr = 0;
		
		test_normal = 1'b1;
		ext_instr_addr = 0;
		ext_instr_we = 0;
		ext_instr_data = 0;
		
		ext_data_addr = 0;
		ext_data_data = 0;
		ext_data_write_en = 0;
		
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 0;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 0;
	end
	endtask

	task instr_LHI;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 0;
		Src_Read_B = 1'b1;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 1'b1;
		LLI = 0;
		RF_write_en = 1'b1;
		flag_OutR = 0;
	end
	endtask

	task instr_LLI;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 0;
		Src_Read_B = 1'b0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 1'b0;
		LLI = 1'b1;
		RF_write_en = 1'b1;
		flag_OutR = 0;
	end
	endtask

	task instr_LDR;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 1'b1;
		Src_Read_B = 1'b0;
		
		flag_mem_RF = 1;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 1'b0;
		LLI = 1'b0;
		RF_write_en = 1'b1;
		flag_OutR = 0;
	end
	endtask

	task instr_OutR;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 0;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 0;
		flag_OutR = 1;
	end
	endtask

	task instr_STR;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 1;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 1;
		Src_Read_B = 1;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 0;
		flag_OutR = 0;
	end
	endtask

	task instr_ADD;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 0;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 1;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 1;
		flag_OutR = 0;
	end
	endtask

	task instr_SUB;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 1;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 0;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 1;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 1;
		flag_OutR = 0;
	end
	endtask

	task instr_ADDI;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 1;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 1;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 1;
		flag_OutR = 0;
	end
	endtask

	task instr_SUBI;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 1;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 1;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 1;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 1;
		flag_OutR = 0;
	end
	endtask

	task instr_BRANCH;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 1;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 0;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 0;
		flag_OutR = 0;
	end
	endtask

	task instr_JMP;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 1;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 1;
		Src_ALU_B = 0;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 0;
		flag_OutR = 0;
	end
	endtask

	task instr_JAL1;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 1;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 0;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 1;
		LHI = 0;
		LLI = 0;
		RF_write_en = 1;
		flag_OutR = 0;
	end
	endtask

	task instr_JAL2;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 1;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 1;
		Src_ALU_B = 0;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 1;
		LHI = 0;
		LLI = 0;
		RF_write_en = 1;
		flag_OutR = 0;
	end
	endtask

	task instr_JR;
	begin
		flag_HLT = 1'b1;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 1;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 1;
		Src_ALU_B = 0;
		Src_Read_B = 1;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 0;
		flag_OutR = 0;
	end
	endtask

	task instr_HLT;
	begin
		flag_HLT = 1'b0;
		
		test_normal = 1'b0;
		data_write_en = 0;
		
		flag_label_PC = 0;
		flag_Rm_PC = 0;
		flag_Rd_PC = 0;
		BRANCH = 0;
		
		ADC = 0;
		SUB = 0;
		SBB = 0;
		JMP = 0;
		Src_ALU_B = 0;
		Src_Read_B = 0;
		
		flag_mem_RF = 0;
		flag_ALU_RF = 0;
		flag_Rm_RF = 0;
		flag_PC_RF = 0;
		LHI = 0;
		LLI = 0;
		RF_write_en = 0;
		flag_OutR = 0;
	end
	endtask
	
endmodule
