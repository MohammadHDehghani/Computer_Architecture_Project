`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:43 06/20/2022 
// Design Name: 
// Module Name:    Register_File 
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
module Register_File(clk, RW, Dest, Data, Reset, Reg1, Reg2, out_reg1, out_reg2
    );
	 input clk;
	 input RW;
	 input [3:0] Dest;
	 input [19:0] Data;
	 input Reset;
	 input [3:0] Reg1;
	 input [3:0] Reg2;
	 output reg [19:0] out_reg1;
	 output reg [19:0] out_reg2;
	 
	 reg [19:0] R0;
	 reg [19:0] R1;
	 reg [19:0] R2;
	 reg [19:0] R3;
	 reg [19:0] R4;
	 reg [19:0] R5;
	 reg [19:0] R6;
	 reg [19:0] R7;
	 
	 always @(*)
	 begin
	 if(RW == 1)
	 begin
	 case(Dest)
	 4'b0000: R0 = Data;
	 4'b0001: R1 = Data;
	 4'b0010: R2 = Data;
	 4'b0011: R3 = Data;
	 4'b0100: R4 = Data;
	 4'b0101: R5 = Data;
	 4'b0110: R6 = Data;
	 4'b0111: R7 = Data;
	 default: R0 = 4'b0000;
	 endcase
	 case(Reg1)
	 4'b0000: out_reg1 = R0;
	 4'b0001: out_reg1 = R1;
	 4'b0010: out_reg1 = R2;
	 4'b0011: out_reg1 = R3;
	 4'b0100: out_reg1 = R4;
	 4'b0101: out_reg1 = R5;
	 4'b0110: out_reg1 = R6;
	 4'b0111: out_reg1 = R7;
	 default: out_reg1 = 4'b0000;
	 endcase
	 case(Reg2)
	 4'b0000: out_reg2 = R0;
	 4'b0001: out_reg2 = R1;
	 4'b0010: out_reg2 = R2;
	 4'b0011: out_reg2 = R3;
	 4'b0100: out_reg2 = R4;
	 4'b0101: out_reg2 = R5;
	 4'b0110: out_reg2 = R6;
	 4'b0111: out_reg2 = R7;
	 default: out_reg2 = 4'b0000;
	 endcase
	 end
	 end
endmodule