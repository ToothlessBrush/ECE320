`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2024 08:19:22 PM
// Design Name: 
// Module Name: hw5_tb
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


module hw5_tb();

    reg clk;
    reg w;
    wire z;

    hw5_top uut(
        .clk(clk),
        .w(w),
        .z(z)
        );

    //switch clock every 50ns
    always #50 clk = ~clk;

    initial
    begin
        clk = 1'b0; //initialize clk to 0
        w = 1'b0; //initialize w to 0
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
    end

endmodule
