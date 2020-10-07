`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2020 16:00:38
// Design Name: 
// Module Name: Intruction_Mem
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


module Instruction_Mem(
    input clk,
    input [16:0] Add,
    output [31:0] OUT
    );
    
    reg [31:0] inst_mem [0:65536];
    
    reg [31:0] out;
    assign OUT = out;
    
    always @ (posedge clk) out = inst_mem[Add];
    
endmodule
