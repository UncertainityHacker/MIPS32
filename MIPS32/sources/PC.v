`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2020 16:00:38
// Design Name: 
// Module Name: PC
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


module PC(
    input clk,
    input [31:0] IN,
    output [31:0] OUT
    );
    
    reg [31:0] next_inst_add;
    reg [31:0] out;
    assign OUT = out;
    
    always @ (posedge clk) begin
        next_inst_add = IN;
        out = next_inst_add;
    end
    
endmodule
