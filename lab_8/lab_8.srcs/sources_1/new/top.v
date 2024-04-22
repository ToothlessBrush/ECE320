`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 12:07:37 PM
// Design Name: 
// Module Name: top
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


module top(
clk, col, row, reset, Seg, An, key_pressed
    );

    // Inputs
    input clk;
    input [3:0] col;
    input reset;

    // Outputs
    output [0:7] Seg;
    output [7:0] An;
    output [3:0] row;

    wire [3:0] key;
    wire [6:0] sevenSeg;
    wire clkOnekhz;

    clkGen clkGen (
        .clk(clk),
        .clk1khz(clkOnekhz)
    );

    KeyPadScanner KeyPadScanner (
        .clk(clkOnekhz),
        .reset(reset),
        .column(col),
        .row(row),
        .keys(key),
    ); 

    bcdToSeg bcdToSeg (
        .x(key),
        .S(sevenSeg)
    );

    sSegDisplay_8 sSegDisplay_8 (
        .ck(clk),
        .digit0(sevenSeg),
        .digit1(7'b1111111),
        .digit2(7'b1111111),
        .digit3(7'b1111111),
        .digit4(7'b1111111),
        .digit5(7'b1111111),
        .digit6(7'b1111111),
        .digit7(7'b1111111),
        .seg(Seg),
        .an(An)
    );

endmodule
