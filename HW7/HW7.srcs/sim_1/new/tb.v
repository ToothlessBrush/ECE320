`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 11:12:27 PM
// Design Name: 
// Module Name: tb
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


module tb(

    );

    reg clk;
    reg reset;
    reg [15:0] data;
    reg s;
    wire [5:0] M;

    top uut(
        .clk(clk),
        .reset(reset),
        .data(data),
        .s(s),
        .M(M)
        );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; 
        data = 16'b0100_1011_1111_0101; //try some input
        s = 0;
        #10; reset = 0;
        #10; s = 1; //start the state machine
        #100; //wait for the state machine to finish
        reset = 1;
        data = 16'b1110_0001_1010_0011; //try another input
        s = 0;
        #10; reset = 0;
        #10; s = 1; //start the state machine
        #100; //wait for the state machine to finish
        $finish; //stop sumulation
    end



endmodule
