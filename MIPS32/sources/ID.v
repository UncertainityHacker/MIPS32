`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2020 17:21:51
// Design Name: 
// Module Name: ID
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


module ID(
    input clk,
    input [31:0] Instruction,
    input [31:0] WrBack,
    input RegWr,
    output [31:0] RdData1,
    output [31:0] RdData2,
    output [31:0] sign_ext
    );
    
    Registers R1(clk,RegWr,Instruction,WrBack,RdData1,RdData2);
    Sign_ext SE1(clk,Instruction[15:0],sign_ext);
    
endmodule
