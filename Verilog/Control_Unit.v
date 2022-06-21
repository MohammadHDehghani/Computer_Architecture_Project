`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:21 06/20/2022 
// Design Name: 
// Module Name:    Control_Unit 
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
module Control_Unit(opcode, beq, lw, sw, rtype
    );
	 input [3:0] opcode;
	 output reg beq;
	 output reg lw;
	 output reg sw;
	 output reg rtype;
	 
	 always @(*)
	 begin
	 case(opcode)
	 4'b0000: 
	 begin
	 rtype = 1;
	 beq = 0;
	 lw = 0;
	 sw = 0;
	 end
	 4'b0001:
	 begin
	 sw = 1;
	 beq = 0;
	 lw = 0;
	 rtype = 0;
	 end
	 4'b0010:
	 begin
	 lw = 1;
	 sw = 0;
	 rtype = 0;
	 beq = 0;
	 end
	 4'b0011:
	 begin
	 beq = 1;
	 rtype = 0;
	 sw = 0;
	 lw = 0;
	 end
	 default: 
	 begin
	 rtype = 0;
	 lw = 0;
	 sw = 0;
	 beq = 0;
	 end
	 endcase
	 end
	 
endmodule