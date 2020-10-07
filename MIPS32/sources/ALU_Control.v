`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2020 20:38:18
// Design Name: 
// Module Name: ALU_Control
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


module ALU_Control(
    input clk,
    input [5:0] Inst,
    input [1:0] ALUop,
    output [3:0] ALUcont
    );
    
    parameter LW=00,SW=00,BE=01,R=10;
    parameter ADD=100000, SUB=100010, AND=100100, OR=100101, MUL=100110, DIV=011011;   
    reg [3:0]cont;
    
    assign ALUcont = cont;
     
    always @ (posedge clk) begin
        case(ALUop)
            LW : cont = 0010;
            SW : cont = 0010;
            BE : cont = 0110;
            R : begin
                    case(Inst)
                        ADD : cont = 4'h2;
                        SUB : cont = 4'h6;
                        AND : cont = 4'h0;
                        OR  : cont = 4'h1;
                        MUL : cont = 4'h3;
                        DIV : cont = 4'h4;
                        default : cont = 4'h0;
                    endcase
                end
        endcase        
    end
    
endmodule
