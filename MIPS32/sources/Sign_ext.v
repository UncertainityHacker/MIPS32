`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2020 19:59:16
// Design Name: 
// Module Name: Sign_ext
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


module Sign_ext(
    input clk,
    input [15:0] Instruction,
    output [31:0] Out
    );
    
    reg [31:0] out;
    assign Out = out;
    
    always @ (posedge clk) begin
        if(Instruction[15]==0) out = {16'h0000, Instruction};
        else out = {16'h1111, Instruction};
    end
    
endmodule
