`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:19:47 06/20/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(in1, in2, func, ans, ZF
    );
	 input [19:0] in1;
	 input [19:0] in2;
	 input [3:0] func;
	 output reg [19:0] ans;
	 output reg ZF;
	 
	 always @(*)
	 begin
	 case(func)
		4'b0000: ans = in1 & in2; // AND
		4'b0001: ans = in1 | in2; // OR
		4'b0010: ans = in1 ^ in2; // XOR
		4'b0011: ans = in1 + in2; // ADD
		4'b0100: ans = in1 - in2; // SUB
		4'b0101: ans = in1 * in2; // MULT
		4'b0110: ans = in1 / in2; // DIV
		4'b0111: ans = in1 % in2; // REM
		
		default: ans = 0;
	endcase
	
	if(ans == 4'h0000)
		ZF = 1;
	else
		ZF = 0;
	end

endmodule