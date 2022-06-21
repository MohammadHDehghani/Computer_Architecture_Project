`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:47:19 06/21/2022
// Design Name:   mid1
// Module Name:   D:/CA_Project/CA_Project/mid1_Test.v
// Project Name:  CA_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mid1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mid1_Test;

	// Inputs
	reg rtype;
	reg lw;
	reg [19:0] ins;
	reg [19:0] ALURes;
	reg [19:0] MemRes;

	// Outputs
	wire [3:0] Dest;
	wire [19:0] WBData;
	wire RW;

	// Instantiate the Unit Under Test (UUT)
	mid1 uut (
		.rtype(rtype), 
		.lw(lw), 
		.ins(ins), 
		.Dest(Dest), 
		.ALURes(ALURes), 
		.MemRes(MemRes), 
		.WBData(WBData), 
		.RW(RW)
	);

	initial begin
		// Initialize Inputs
		rtype = 1;
		lw = 0;
		ins = 20'b0000110001010110;
		ALURes = 20'b00000000000000000011;
		MemRes = 20'b00000000000000000001;

		// Wait 100 ns for global reset to finish
		#500;
        
		// Add stimulus here
		rtype = 0;
		lw = 1;
		ins = 20'b0000110001010110;
		ALURes = 20'b00000000000000000011;
		MemRes = 20'b00000000000000000001;
		
		#100;

	end
      
endmodule

