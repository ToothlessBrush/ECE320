`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 12:31:01 AM
// Design Name: 
// Module Name: HW5_tb
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


module HW5_tb();

    reg w;
    reg clk;
    reg reset;
    
    wire z;
    wire [2:0] state;

    moore UUT (
        .w(w),
        .clk(clk),
        .reset(reset),
        .state(state),
        .z(z)
    );

    always #50 clk = ~clk; //100ns period
    
    initial begin
        clk = 0;
        w = 0;
        reset = 0;
        #100; //grace period
        w = 0'b0; #100;
        w = 1; #100;
        w = 0; #100;
        w = 1; #100;
        w = 0; #100;
        w = 1; #100;
        w = 1; #100;
        w = 0; #100;
        w = 1; reset = 1; #100;
        w = 1; reset = 0; #100;
        w = 0; #100;
        w = 1; #100;
        w = 0; #100;
        w = 1; #100;
        w = 1; #100;
    end
endmodule
