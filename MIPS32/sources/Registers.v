`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2020 16:22:14
// Design Name: 
// Module Name: Registers
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


module Registers(
    input clk,
    input RegWrite,
    input [31:0] Instruction,
    input [31:0] WrBack,
    output [31:0] Data1,
    output [31:0] Data2
    );
    
    reg [31:0] Rs [0:31];
    reg [31:0] d1,d2;
    assign Data1 = d1;
    assign Data2 = d2;
    
    always @ (posedge clk) begin
        if(RegWrite == 1) begin
            d1 = Rs[Instruction[25:21]];
            d2 = Rs[Instruction[20:16]];
            Rs[Instruction[15:11]] = WrBack;
        end
        else begin
            d1 = Rs[Instruction[25:21]];
            d2 = Rs[Instruction[20:16]];
        end
    end
endmodule
