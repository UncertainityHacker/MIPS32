`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2020 15:43:14
// Design Name: 
// Module Name: Adder
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


module Adder(
    input clk,
    input [31:0] IN1,
    input [31:0] IN2,
    output [31:0] OUT
    );
    
    reg [31:0] out;
    assign OUT = out;
    
    always @(posedge clk) out = IN1 + IN2;
    
endmodule
