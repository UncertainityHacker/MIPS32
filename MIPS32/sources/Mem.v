`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2020 18:56:39
// Design Name: 
// Module Name: Mem
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


module Mem(
    input clk,
    input [31:0] Address,
    input [31:0] WrData,
    input MemRd,
    input MemWr,
    output [31:0] RdData
    );
    
    Data_Mem DM1(clk,MemRd,MemWr,Address,WrData,RdData);
    
endmodule
