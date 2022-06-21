`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:46 06/20/2022 
// Design Name: 
// Module Name:    CPU 
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
module CPU(clk
    );
	 input clk;
	 
	 wire [19:0] WBData;
	 wire [19:0] ALURes;
	 wire [19:0] MemRes;
	 
	 wire [19:0]ins;
	 wire zero;
	 wire branch;
	 wire [19:0]imm;
	 
	 Instruction_Memory ins_mem(clk, zero, branch, imm, ins);
	 
	 wire lw;
	 wire sw;
	 wire rtype;
	 Control_Unit cu(ins[19:16], branch, lw, sw, rtype);
	 
	 wire [3:0] out;
	 ALU_Control_Unit acu(ins[19:16], rtype, branch, out);
	 
	 wire [3:0] Dest;
	 wire RW;
	 
	 mid1(rtype, lw, ins, Dest, ALURes, MemRes, WBData, RW);
	 
	 wire [3:0] Reg1;
	 wire [3:0] Reg2;
	 wire clear_reg;
	 wire [19:0] out_reg1;
	 wire [19:0] out_reg2;
	 
	 Register_File(clk, RW, Dest, WBData, clear_reg, Reg1, Reg2, out_reg1, out_reg2);

	 ALU(Reg1, Reg2, out, ALURes, zero);
	 
	 wire writeif;
	 wire readif;
	 wire clear_mem;
	 
	 Memory(clk, ALURes, out_reg2, writeif, readif, clear_mem, MemRes);
endmodule
