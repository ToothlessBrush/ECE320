`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2024 12:35:08 PM
// Design Name: 
// Module Name: lab3_top
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


module lab3_top(
    clk, x, seg, an
    );

    input clk;
    input [3:0] x;

    output [0:7] seg;
    output [7:0] an;

    wire [7:1] S;

    dataflow bcdToSeg (x, S);
    sSegDisplay_8 segmentDisplay (clk, S, 7'b1111111, 7'b1111111, 7'b1111111, 7'b1111111, 7'b1111111, 7'b1111111, 7'b1111111, seg, an);

endmodule