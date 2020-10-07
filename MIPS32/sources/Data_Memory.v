`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Kush Mishra
// 
// Create Date: 28.09.2020 21:01:25
// Design Name: 
// Module Name: Data_Mem
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


module Data_Mem(
    input clk,
    input MemRd,
    input MemWr,
    input [31:0] Add,
    input [31:0] WrData,
    output [31:0] RdData
    );
    
    reg [31:0] mem [0:65536];
    reg [31:0] out;
    assign RdData = out;
    
    always @ (posedge clk) begin
        if(MemWr == 1 && MemRd == 0) mem[Add]=WrData;
        else if (MemWr == 0 && MemRd == 1) out = mem[Add];
        else out = 0;
    end
    
endmodule
