`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2024 11:24:30 PM
// Design Name: 
// Module Name: twoDigitBCDAdder
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


module twoDigitBCDAdder(
    x, y, clk, seg, an
    );

    input clk;
    input [7:0] x, y;

    wire [7:0] sum;
    wire cout;
    wire coutMiddle;

    wire [1:7] digit1, digit2, digit3, digit4, digit5, digit6, digit7;

    output [0:7] seg;
    output [7:0] an;

    oneDigitBCDAdder firstDigit (
        .cin(1'b0), 
        .x(x[3:0]), 
        .y(y[3:0]), 
        .sum(sum[3:0]), 
        .cout(coutMiddle)
        );

    oneDigitBCDAdder secondDigit (
        .cin(coutMiddle), 
        .x(x[7:4]), 
        .y(y[7:4]), 
        .sum(sum[7:4]), 
        .cout(cout)
        );
    

    //displat on the 7-segment display
    dataflow firstDigitDisplay (
        .x(x[3:0]), 
        .S(digit4[1:7])
        );

    dataflow secondDigitDisplay (
        .x(x[7:4]), 
        .S(digit3[1:7])
        );

    dataflow thirdDigitDisplay (
        .x(y[3:0]), 
        .S(digit2[1:7])
        );

    dataflow fourthDigitDisplay (
        .x(y[7:4]), 
        .S(digit1[1:7])
        );

    dataflow fifthDigitDisplay (
        .x(sum[3:0]), 
        .S(digit7[1:7])
        );
    
    dataflow sixthDigitDisplay (
        .x(sum[7:4]), 
        .S(digit6[1:7])
        );

    dataflow seventhDigitDisplay (
        .x(cout),
        .S(digit5[1:7])
        );

    sSegDisplay_8 display (
        .ck(clk), 
        .digit0(digit7), 
        .digit1(digit6), 
        .digit2(digit5), 
        .digit3(7'b1111111), 
        .digit4(digit4), 
        .digit5(digit3), 
        .digit6(digit2), 
        .digit7(digit1), 
        .seg(seg), 
        .an(an)
    );
    
endmodule
