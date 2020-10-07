`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kush Mishra
// 
// Design Name: MIPS32_NonPipelined
// Module Name: MIPS32_withoutPipeline
// Project Name: MIPS32
//////////////////////////////////////////////////////////////////////////////////


module MIPS32_withoutPipeline(
    input clk
    );
    
    ControlPath_NonPipelined CP(clk,Instruction,ALUSrc,ALUOp,MemtoReg,MemRd,MemWr,RegWr,PCSrc);
    DataPath_NonPipelined DP(clk,ALUSrc,ALUOp,MemtoReg,MemRd,MemWr,RegWr,PCSrc,Instruction);
    
endmodule
    