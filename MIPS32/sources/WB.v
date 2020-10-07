`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2020 19:01:06
// Design Name: 
// Module Name: WB
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


module WB(
    input clk,
    input [31:0] RdData1,
    input [31:0] RdData2,
    input MemtoReg,
    input [31:0] WrB
    );
    
    MUX M3(clk,RdData1,RdData2,MemtoReg,WrB);
    
endmodule
