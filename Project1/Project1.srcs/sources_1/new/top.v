`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2024 12:34:52 AM
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
    input reset, enter, clk,
    input [3:0] inputDigit,
    output [0:7] seg,   // display cathodes
	output [7:0] an    // display anodes (active-low, due to transistor complementing)
    );

    wire [3:0] digit0, digit1, digit2, digit3;
    wire [1:7] S0, S1, S2, S3;

    digitShifing digitShifting(
        .reset(reset),
        .enter(enter),
        .inputDigit(inputDigit),
        .digit0(digit0),
        .digit1(digit1),
        .digit2(digit2),
        .digit3(digit3)
        );

    bcdToSeg bcdToSeg0(
        .x(digit0),
        .S(S0)
        );

    bcdToSeg bcdToSeg1(
        .x(digit1),
        .S(S1)
        );
    
    bcdToSeg bcdToSeg2(
        .x(digit2),
        .S(S2)
        );

    bcdToSeg bcdToSeg3(
        .x(digit3),
        .S(S3)
        );

    sSegDisplay_8 sSegDisplay_8(
        .ck(clk),
        .digit0(S0),
        .digit1(S1),
        .digit2(S2),
        .digit3(S3),
        .digit4(7'b1111111),
        .digit5(7'b1111111),
        .digit6(7'b1111111),
        .digit7(7'b1111111),
        .seg(seg),
        .an(an)
        );
    

endmodule
