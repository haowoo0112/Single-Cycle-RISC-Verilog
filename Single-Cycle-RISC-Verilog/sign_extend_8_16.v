`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:22 12/01/2022 
// Design Name: 
// Module Name:    sign_extend_8_16 
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
module sign_extend_8_16(
    input [7:0] imm,
    output [15:0] Q
    );

	assign Q = {{8{imm[7]}}, imm};

endmodule
