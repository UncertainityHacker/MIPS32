`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2020 21:26:18
// Design Name: 
// Module Name: ControlPath_NonPipelined
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ControlPath_NonPipelined(
    input clk,
    input [5:0] Instruction,
    output reg ALUSrc,
    output reg [1:0]ALUOp,
    output reg MemtoReg,
    output reg MemRd,
    output reg MemWr,
    output reg RegWr,
    output reg PCSrc
    );
    
    parameter R=6'h00,LW=6'h20,SW=6'h28,BE=6'h04;
    
    always @ (posedge clk) begin
        
        case(Instruction)
            R : begin
                    ALUSrc = 0;      ALUOp = 2'b10;
                    MemtoReg = 0;    MemRd = 0;
                    MemWr = 0;       RegWr = 1;
                    PCSrc = 0;
                end
            LW : begin
                    ALUSrc = 1;      ALUOp = 2'b00;
                    MemtoReg = 1'bx; MemRd = 0;
                    MemWr = 1;       RegWr = 0;
                    PCSrc = 0;
                end
            SW : begin
                    ALUSrc = 1;      ALUOp = 2'b00;
                    MemtoReg = 1;    MemRd = 1;
                    MemWr = 0;       RegWr = 1;
                    PCSrc = 0;
                end
            BE : begin
                    ALUSrc = 0;      ALUOp = 2'b01;
                    MemtoReg = 1'bx; MemRd = 0;
                    MemWr = 0;       RegWr = 0;
                    PCSrc = 1;
                end
        endcase
    end
    
endmodule
