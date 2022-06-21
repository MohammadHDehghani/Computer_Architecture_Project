`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:25:57 06/21/2022
// Design Name:   Control_Unit
// Module Name:   D:/CA_Project/CA_Project/Control_Unit_Test.v
// Project Name:  CA_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control_Unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Control_Unit_Test;

	// Inputs
	reg [3:0] opcode;

	// Outputs
	wire beq;
	wire lw;
	wire sw;
	wire rtype;

	// Instantiate the Unit Under Test (UUT)
	Control_Unit uut (
		.opcode(opcode), 
		.beq(beq), 
		.lw(lw), 
		.sw(sw), 
		.rtype(rtype)
	);

	initial begin
		// Initialize Inputs
		opcode = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		opcode = 4'b0001;
		
		#100;
		
		opcode = 4'b0010;
		
		#100;
		
		opcode = 4'b0011;
		
		#100;
		
		opcode = 4'b0100;
		
		#100;
		
		opcode = 4'b0101;
		
		#100;
		
		opcode = 4'b0110;
		
		#100;
		
		opcode = 4'b0111;
	end
      
endmodule

