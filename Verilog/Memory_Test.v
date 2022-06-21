`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:35:54 06/21/2022
// Design Name:   Memory
// Module Name:   D:/CA_Project/CA_Project/Memory_Test.v
// Project Name:  CA_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Memory_Test;

	// Inputs
	reg clk;
	reg [15:0] address;
	reg [15:0] data_to_write;
	reg writeif;
	reg readif;
	reg clear;

	// Outputs
	wire [15:0] output_data;

	// Instantiate the Unit Under Test (UUT)
	Memory uut (
		.clk(clk), 
		.address(address), 
		.data_to_write(data_to_write), 
		.writeif(writeif), 
		.readif(readif), 
		.clear(clear), 
		.output_data(output_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		address = 20'b00000000000000000000;
		data_to_write = 20'b00000000000000000000;
		writeif = 0;
		readif = 0;
		clear = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk = 1;
		address = 20'b00000000000000000001;
		data_to_write = 20'b00000000000000000011;
		writeif = 1;
		readif = 0;
		clear = 0;
		
		#100;
		
		clk = 0;
		address = 20'b00000000000000000011;
		data_to_write = 20'b00000000000000000001;
		writeif = 0;
		readif = 1;
		clear = 0;
		
		#100;
		
		clk = 1;
		address = 20'b00000000000000000011;
		data_to_write = 20'b00000000000000000011;
		writeif = 0;
		readif = 0;
		clear = 1;
		
		#100;
		
		clk = 0;
		address = 20'b00000000000000000101;
		data_to_write = 20'b000000000000000000110;
		writeif = 1;
		readif = 0;
		clear = 0;
		
	end
      
endmodule

