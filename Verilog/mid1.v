`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:24 06/21/2022 
// Design Name: 
// Module Name:    mid1 
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
module mid1(rtype, lw, ins, Dest, ALURes, MemRes, WBData, RW
    );
	 input rtype;
	 input lw;
	 input [19:0] ins;
	 output reg [3:0] Dest;
	 input [19:0] ALURes;
	 input [19:0] MemRes;
	 output reg [19:0] WBData;
	 output reg RW;
	 
	 always @(*)
	 begin
	 RW = lw || rtype;
	 if(lw)
	 WBData = MemRes;
	 else
	 WBData = ALURes;
	 
	 if(rtype == 1)
	 Dest = ins[7:4];
	 else
	 Dest = ins[11:8];
	 end

endmodule
