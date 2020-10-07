`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2020 17:31:16
// Design Name: 
// Module Name: Exe
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


module Exe(
    input clk,
    input [31:0] prev_PC,
    input [31:0] RdData1,
    input [31:0] RdData2,
    input [31:0] sign_ext,
    input ALUSrc,
    input ALUop,
    output [31:0] PC,
    output zero_flag,
    output [31:0] Data
    );
    
    wire [31:0]w1,w3;
    wire [3:0]w2;
    
    ALU A2(clk,RdData1,w1,w2,zero_flag,Data);
    MUX M2(clk,RdData2,sign_ext,ALUSrc,w1);
    ALU_Control AC(clk,sign_ext[5:0],ALUop,w2);
    Shift_L SL1(clk,sign_ext,w3);
    Adder Add2(clk,w3,prev_PC,PC);
    
endmodule
