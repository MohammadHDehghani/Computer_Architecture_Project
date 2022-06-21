`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:30:53 06/21/2022
// Design Name:   ALU_Control_Unit
// Module Name:   D:/CA_Project/CA_Project/ALU_Control_Unit_Test.v
// Project Name:  CA_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Control_Unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Control_Unit_Test;

	// Inputs
	reg [3:0] func;
	reg rtype;
	reg beq;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	ALU_Control_Unit uut (
		.func(func), 
		.rtype(rtype), 
		.beq(beq), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		func = 4'b0011;
		rtype = 0;
		beq = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		func = 4'b0001;
		rtype = 1;
		beq = 0;
		
		#100;
		
		func = 4'b0010;
		rtype = 0;
		beq = 1;
		
		#100;
		
		func = 4'b0011;
		rtype = 1;
		beq = 1;
		
		#100;
		
		func = 4'b0010;
		rtype = 1;
		beq = 0;
		
		#100;
		
		func = 4'b0011;
		rtype = 0;
		beq = 1;
		
		#100;
		
		func = 4'b0010;
		rtype = 1;
		beq = 0;
		
		#100;
		
		func = 4'b0001;
		rtype = 0;
		beq = 1;
		
		#100;
		func = 4'b0011;
		rtype = 0;
		beq = 0;
	end
      
endmodule

