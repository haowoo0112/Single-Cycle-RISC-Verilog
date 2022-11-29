`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:29 11/29/2022 
// Design Name: 
// Module Name:    multiplexer_8_to_1_16_bit 
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
module multiplexer_8_to_1_16_bit(
    input S2,
    input S1,
    input S0,
    input [15:0] I0,
    input [15:0] I1,
    input [15:0] I2,
    input [15:0] I3,
    input [15:0] I4,
    input [15:0] I5,
    input [15:0] I6,
    input [15:0] I7,
    output reg [15:0] Y
    );
   always @(*) begin
      case({S2, S1, S0})
         3'd0: Y = I0;
         3'd1: Y = I1;
         3'd2: Y = I2;
         3'd3: Y = I3;
         3'd4: Y = I4;
         3'd5: Y = I5;
         3'd6: Y = I6;
         3'd7: Y = I7;
      endcase
   end

endmodule
