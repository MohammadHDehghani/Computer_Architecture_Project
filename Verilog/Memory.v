`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:17 06/21/2022 
// Design Name: 
// Module Name:    Memory 
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
module Memory(clk, address, data_to_write, writeif, readif, clear, output_data
    );
	 integer i;
	 input clk;
	 input [15:0] address;
 	 input writeif;
 	 input readif;
	 input clear;
	 input [15:0] data_to_write;
	 output reg[15:0] output_data;
	 reg [19:0] mem [99:0];	 
	 always @*
	 begin
	 if(writeif == 1)
	 mem[address]=data_to_write;
	 if(readif == 1)
	 output_data=mem[address];
	 if(clear == 1)
	 begin
	 for(i = 0; i < 100; i = i + 1)
	 begin
	 mem[i] = 0;
	 end
	 end
	 end  
	 
endmodule
