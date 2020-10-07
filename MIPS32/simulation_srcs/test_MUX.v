`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2020 15:37:05
// Design Name: 
// Module Name: test_MUX
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


module test_MUX();
    
    reg clk =1;
    reg [31:0]in1,in2;
    reg sel;
    wire [31:0] out;
    
    always #10 clk =~clk;
    MUX m1(clk,in1,in2,sel,out);
    
    initial begin
        in1=32'h08;in2=32'h50;sel = 0;
        #20 in1=32'h08;in2=32'h50;sel = 1;
        #20 in1=32'h098;in2=32'h550;sel = 0;
        #20 in1=32'h708;in2=32'h050;sel = 1;
        #20 in1=32'h0708;in2=32'h0650;sel = 0;
        #20 in1=32'h008;in2=32'h005;sel = 1;
    end

endmodule
