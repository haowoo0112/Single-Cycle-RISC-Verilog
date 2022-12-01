`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:02 12/01/2022 
// Design Name: 
// Module Name:    D_flip_flop_16_bit 
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
module D_flip_flop_16_bit(
    input clk,
    input [15:0] D,
    input LOAD,
    input clr,
    output reg [15:0] Q
    );
	
	always @(posedge clk or clr) begin
		if (clr) begin
			// reset
			Q <= 16'd0;
		end
		else begin
			if(LOAD)
				Q <= D;
		end
	end

endmodule
