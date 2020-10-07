`timescale 1ns / 1ps

module DataPath_NonPipelined(
    input clk,
    input ALUSrc,
    input [1:0]ALUOp,
    input MemtoReg,
    input MemRd,
    input MemWr,
    input RegWr,
    input PCSrc,
    output [5:0] Instruction
    );
    
    wire [31:0]branch,NextAdd,instruction,RdData1,RdData2,sign_ext,WrBack,data,RData;
    wire zero;
    assign Instruction = instruction[31:26];
    
    IF if1(clk,branch,PCSrc,NextAdd,instruction);
    ID id1(clk,instruction,WrBack,RegWr,RdData1,RdData2,sign_ext);
    Exe ex1(clk,NextAdd,RdData1,RdData2,sign_ext,ALUSrc,ALUOp,branch,zero,data);
    Mem mem1(clk,data,RdData2,MemRd,MemWr,RData);
    WB wb1(clk,RData,data,MemtoReg,WrBack);
    
endmodule
