`timescale 1ns / 1ps

module ALU(
    input clk,
    input [31:0] IN1,
    input [31:0] IN2,
    input [3:0] Operation,
    output Status,
    output [31:0] OUT
    );

    reg zero;
    reg [31:0]ALU_out;
    assign Status = zero;
    assign OUT = ALU_out;
    
    parameter ADD=4'h2,SUB=4'h6,AND=4'h0,OR=4'h1,NOT=4'h5,MUL=4'h3,DIV=4'h4,RS=4'h7,LS=4'h8;
    
    always@(posedge clk ) begin
           case(Operation)
           ADD : begin
                    ALU_out = IN1 + IN2 ;
                    if(ALU_out == 0) zero = 1;
                    else zero = 0;
                 end
           SUB : begin
                    ALU_out = IN1 - IN2 ;
                    if(ALU_out == 0) zero = 1;
                    else zero = 0;
                 end
           AND : begin
                    ALU_out = IN1 & IN2 ;
                    if(ALU_out == 0) zero = 1;
                    else zero = 0;
                 end
           OR : begin
                    ALU_out = IN1 | IN2;
                    if(ALU_out == 0) zero = 1;
                    else zero = 0;
                 end
           NOT : begin
                    ALU_out = ~IN1;
                    if(ALU_out == 0) zero = 1;
                    else zero = 0;
                 end
           MUL : begin
                    ALU_out = IN1 * IN2 ;
                    if(ALU_out == 0) zero = 1;
                    else zero = 0;
                 end
           DIV : begin
                    ALU_out = IN1 / IN2 ;
                    if(ALU_out == 0) zero = 1;
                    else zero = 0;
                 end
           RS : begin
                    ALU_out = IN1>>1 ;
                    if(ALU_out == 0) zero = 1;
                    else zero = 0;
                 end
           LS : begin
                    ALU_out = IN1<<1 ;
                    if(ALU_out == 0) zero = 1;
                    else zero = 0;
                 end
           default : begin 
                        zero = 1;
                        ALU_out = 0;
                     end
           endcase 
    end
endmodule
