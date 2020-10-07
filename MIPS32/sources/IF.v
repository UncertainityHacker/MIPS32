`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2020 17:05:58
// Design Name: 
// Module Name: IF
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


module IF(
    input clk,
    input [31:0]Branch,
    input PCSrc,
    output [31:0] NextAdd,
    output [31:0] Instruction
    );
    
    wire [31:0] w1,w2,w3;
    assign NextAdd = w1;
    
    PC pc1(clk, w2 ,w3);
    MUX M1(clk,w1,Branch,PCSrc,w2);
    Adder Add1(clk,w3,32'h4,w1);
    Instruction_Mem IM1(clk,w3,Instruction);
    
endmodule
