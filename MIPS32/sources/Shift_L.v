`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2020 17:42:43
// Design Name: 
// Module Name: Shift_L
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


module Shift_L(
    input clk,
    input [31:0] IN,
    output [31:0] OUT
    );
    
    reg [31:0]out;
    assign OUT = out;
    
    always @ (posedge clk) out = IN<<2;
    
endmodule
