`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:19 12/01/2022 
// Design Name: 
// Module Name:    multiplexer_2_to_1 
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
module multiplexer_2_to_1(
    input S,
    input I0,
    input I1,
    output Y
    );
	
	assign Y = S ? I1 : I0;

endmodule
