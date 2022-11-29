`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:51 11/29/2022 
// Design Name: 
// Module Name:    decoder_3_to_8_en 
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
module decoder_3_to_8_en(
    input x0,
    input x1,
    input x2,
    input en,
    output reg Y0,
    output reg Y1,
    output reg Y2,
    output reg Y3,
    output reg Y4,
    output reg  Y5,
    output reg Y6,
    output reg Y7
    );
	 
   always@(*)begin
      Y0 = en & ~x0 & ~x1 & ~x2;
      Y1 = en & x0 & ~x1 & ~x2;
      Y2 = en & ~x0 & x1 & ~x2;
      Y3 = en & x0 & x1 & ~x2;
      Y4 = en & ~x0 & ~x1 & x2;
      Y5 = en & x0 & ~x1 & x2;
		Y6 = en & ~x0 & x1 & x2;
		Y7 = en & x0 & x1 & x2;
	end


endmodule
