`timescale 1ns / 1ps

module test_ALU();

    reg clk=0,reset=0;
    reg [31:0] in1,in2,op;
    wire[31:0] out;
    wire flag;
    
    parameter ADD=32'h0,SUB=32'h1,AND=32'h2,OR=32'h3,NOT=32'h4,MUL=32'h5,DIV=32'h6,RS=32'h7,LS=32'h8; 
    
    ALU A1(clk,reset,in1,in2,op,flag,out);
    
    always #10 clk = ~clk;
    
    initial begin
        
        reset = 1;
        #10 reset = 0; in1 = 32'h5; in2 = 32'h2; op = ADD;
        #20 reset = 0; in1 = 32'h5; in2 = 32'h2; op = SUB;
        #20 reset = 0; in1 = 32'h5; in2 = 32'h2; op = AND;
        #20 reset = 0; in1 = 32'h5; in2 = 32'h2; op = OR;
        #20 reset = 0; in1 = 32'h5; in2 = 32'h2; op = MUL;
        #20 reset = 0; in1 = 32'h5; in2 = 32'h2; op = DIV;
        #20 reset = 0; in1 = 32'h5; op = RS;
        #20 reset = 0; in1 = 32'h5; op = LS;
        
    end

endmodule
