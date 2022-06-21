`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:04:16 06/21/2022
// Design Name:   Register_File
// Module Name:   D:/CA_Project/CA_Project/Register_File_Test.v
// Project Name:  CA_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_File
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_File_Test;

	// Inputs
	reg clk;
	reg RW;
	reg [3:0] Dest;
	reg [19:0] Data;
	reg Reset;
	reg [3:0] Reg1;
	reg [3:0] Reg2;

	// Outputs
	wire [19:0] out_reg1;
	wire [19:0] out_reg2;

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.clk(clk), 
		.RW(RW), 
		.Dest(Dest), 
		.Data(Data), 
		.Reset(Reset), 
		.Reg1(Reg1), 
		.Reg2(Reg2), 
		.out_reg1(out_reg1), 
		.out_reg2(out_reg2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		RW = 0;
		Dest = 4'b0101;
		Data = 20'b00000000000001010110;
		Reset = 0;
		Reg1 = 4'b0110;
		Reg2 = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk = 1;
		RW = 1;
		Dest = 4'b0101;
		Data = 20'b00000000000001010110;
		Reset = 0;
		Reg1 = 4'b0110;
		Reg2 = 4'b0010;
		
		#100;
		
		clk = 0;
		RW = 0;
		Dest = 4'b0101;
		Data = 20'b00000000000001010110;
		Reset = 1;
		Reg1 = 4'b0110;
		Reg2 = 4'b0010;
		
		#100;
		
		clk = 1;
		RW = 1;
		Dest = 4'b0101;
		Data = 20'b00000000000001010110;
		Reset = 0;
		Reg1 = 4'b0110;
		Reg2 = 4'b0010;
		
		#100;
		
		clk = 0;
		RW = 0;
		Dest = 4'b0101;
		Data = 20'b00000000000001010111;
		Reset = 0;
		Reg1 = 4'b0110;
		Reg2 = 4'b0010;
		
		#100;
	end
      
endmodule

