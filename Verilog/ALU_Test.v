`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:13:34 06/21/2022
// Design Name:   ALU
// Module Name:   D:/CA_Project/CA_Project/ALU_Test.v
// Project Name:  CA_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Test;

	// Inputs
	reg [19:0] in1;
	reg [19:0] in2;
	reg [3:0] func;

	// Outputs
	wire [19:0] ans;
	wire ZF;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.in1(in1), 
		.in2(in2), 
		.func(func), 
		.ans(ans), 
		.ZF(ZF)
	);

	initial begin
		// Initialize Inputs
		in1 = 20'b00000000000000000000;
		in2 = 20'b00000000000000000000;
		func = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in1 = 20'b00000000000000001101;
		in2 = 20'b00000000000000000100;
		func = 4'b0000;
		
		#100;
		
		func = 4'b0001;
		
		#100;
		
		func = 4'b0010;
		
		#100;
		
		func = 4'b0011;
		
		#100;
		
		func = 4'b0100;
		
		#100;
		
		func = 4'b0101;
		
		#100;
		
		func = 4'b0110;
		
		#100;
		
		func = 4'b0111;

	end
      
endmodule

