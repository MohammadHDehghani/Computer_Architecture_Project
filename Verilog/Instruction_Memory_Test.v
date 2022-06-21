`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:06:01 06/21/2022
// Design Name:   Instruction_Memory
// Module Name:   D:/CA_Project/CA_Project/Instruction_Memory_Test.v
// Project Name:  CA_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Instruction_Memory_Test;

	// Inputs
	reg clk;
	reg zero;
	reg branch;
	reg [19:0] imm;

	// Outputs
	wire [19:0] ins;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Memory uut (
		.clk(clk), 
		.zero(zero), 
		.branch(branch), 
		.imm(imm), 
		.ins(ins)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		zero = 0;
		branch = 0;
		imm = 20'b00000000000000000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk = 1;
		zero = 0;
		branch = 0;
		imm = 0;
		
		#100;
		
		clk = 0;
		zero = 0;
		branch = 0;
		imm = 20'b00000000000000000000;
		
		#100;
		
		clk = 1;
		zero = 1;
		branch = 0;
		imm = 20'b00000000000000000000;
		
		#100;
		 
		 clk = 0;
		 zero = 0;
		 branch = 1;
		 imm = 20'b00000000000000000000;
		 
		 #100;
		 
		 clk = 1;
		 zero = 1;
		 branch = 1;
		 imm = 20'b0000000000000001000;
		 
		 #100
		 
		 clk = 0;
		 zero = 0;
		 branch = 0;
		 imm = 20'b00000000000000000000;
		 
		 #100;
	end
      
endmodule

