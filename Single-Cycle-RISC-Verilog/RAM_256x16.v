`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:18 12/01/2022 
// Design Name: 
// Module Name:    RAM_256x16 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RAM_256x16(
    input [7:0] Addr,
    input Write_En,
    input clk,
    input [15:0] D,
    output [15:0] O
    );
	
	reg [15:0] mem[255:0];

	always @(posedge clk) begin
		if(Write_En)
			mem[Addr] <= D;
	end

	assign O = mem[Addr];

endmodule
