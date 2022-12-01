`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:11 12/01/2022 
// Design Name: 
// Module Name:    PC_circuit 
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
module PC_circuit(
    input clk,
    input clr,
    input [7:0] disp8,
    input JMP,
    input BRANCH,
    input flag_Rd_PC,
    input flag_label_PC,
    input flag_Rm_PC,
    input [10:0] label11,
    input [15:0] Rd,
    input [15:0] Rm,
    output reg [15:0] Q
    );

   wire [15:0] Rd_out, label_out, Rm_out;
   wire [15:0] disp8_SE;
   wire [15:0] adder_B, adder_Q;
   wire [15:0] next_addr;
   reg [15:0] next_addr_buf;

   multiplexer_2_to_1_16_bit MuxRd (.S(flag_Rd_PC), .I1(Rd), .I0(16'd0), .Y(Rd_out));
   multiplexer_2_to_1_16_bit MuxLabel (.S(flag_label_PC), .I1({Q[15:11], label11}), .I0(16'd0), .Y(label_out));
   multiplexer_2_to_1_16_bit MuxRm (.S(flag_Rm_PC), .I1(Rm), .I0(16'd0), .Y(Rm_out));
   multiplexer_2_to_1_16_bit MuxBranch (.S(BRANCH), .I1(disp8_SE), .I0(16'd1), .Y(adder_B));
   two_comple_adder_16bit TwoComplete(.A(Q) ,.B(adder_B), .C(1'd0), .Y(adder_Q));
   multiplexer_2_to_1_16_bit MuxJMP (.S(JMP), .I1(Rm_out|Rd_out|label_out), .I0(adder_Q), .Y(next_addr));
   sign_extend_8_16 SE (.imm(disp8), .Q(disp8_SE));
   always @(negedge clk) begin
      if (clr) begin
         // reset
         next_addr_buf <= 16'd0;
      end
      else begin
         next_addr_buf <= next_addr;
      end
   end

   always @(posedge clk) begin
      if (clr) begin
         // reset
         Q <= 16'd0;
      end
      else begin
         Q <= next_addr_buf;
      end
   end

endmodule
