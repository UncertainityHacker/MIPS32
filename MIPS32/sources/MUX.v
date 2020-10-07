`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kush Mishra 
// 
// Create Date: 28.09.2020 15:32:42
// Design Name: 
// Module Name: MUX
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


module MUX(
    input clk,
    input [31:0] IN1,
    input [31:0] IN2,
    input Sel,
    output [31:0] OUT
    );
    
    reg [31:0]out;
    assign OUT = out;
    
    always @ (posedge clk) out = Sel?IN2:IN1; 
    
endmodule
