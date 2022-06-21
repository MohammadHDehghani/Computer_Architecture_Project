`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:38 06/20/2022 
// Design Name: 
// Module Name:    ALU_Control_Unit 
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
module ALU_Control_Unit(func, rtype, beq, out
    );
	 input [3:0] func;
	 input rtype;
	 input beq;
	 output reg [3:0] out;
	 
	 always @(*)
	 begin
	 if(rtype == 1)
	 begin
	 if(beq == 1)
	 out = 4'b0010;
	 else
	 out = func;
	 end
	 else
	 out = 4'b0011;
	 end

endmodule