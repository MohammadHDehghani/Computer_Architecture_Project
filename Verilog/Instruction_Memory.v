`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:40 06/20/2022 
// Design Name: 
// Module Name:    Instruction_Memory 
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
module Instruction_Memory(clk, zero, branch, imm, ins
    );
	 input clk;
	 input zero;
	 input branch;
	 input [19:0] imm;
	 output reg [19:0] ins;
	 
	 reg branch_taken;
	 reg [19:0] instructions [19:0];
	 assign input_counter = 0;
	 reg [19:0] output_counter;
	 
	 always @(*)
    begin
    branch_taken= zero && branch;
    if(branch_taken == 0)
    begin
	    output_counter = input_counter;
	    output_counter = output_counter + 4;
	    ins = instructions[output_counter];
    end
    else
    begin
	    output_counter = input_counter;
	    output_counter = output_counter+4+(imm);
	    ins = instructions[output_counter];
    end
    end
endmodule