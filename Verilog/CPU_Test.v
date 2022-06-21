`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:20:05 06/21/2022
// Design Name:   CPU
// Module Name:   D:/CA_Project/CA_Project/CPU_Test.v
// Project Name:  CA_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_Test;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk = 1;
		
		#100;
		
		clk = 0;
		
		#100;
		
		clk = 1;
		
		#100;
		
		clk = 0;

	end
      
endmodule

