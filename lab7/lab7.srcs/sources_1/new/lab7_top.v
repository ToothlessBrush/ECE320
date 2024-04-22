    `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 12:31:15 PM
// Design Name: 
// Module Name: lab7_top
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


module lab7_top(
    clk, ck, w, rst, seg, an
    );

    input clk; //input clock
    input ck; //100MHz system clock
    input w; //input w
    input rst; //input reset
    output [0:7] seg; // display segments
    output [7:0] an; // display anodes

    wire [4:0] shiftReg; //shift register
    wire [3:0] count; //count
    wire even; //even
    wire [0:6] digit0, digit2, digit3, digit4, digit5, digit6, digit7; // 8 digit number to be displayed
    wire [0:6] digit1 = 7'b1111111;
    

    shiftReg shiftReg1(clk, w, rst, shiftReg, count, even); //shift register module

    //shift register display
    BCDConvert BCDConvert1({3'b000, shiftReg[0]}, digit7);
    BCDConvert BCDConvert2({3'b000, shiftReg[1]}, digit6);
    BCDConvert BCDConvert3({3'b000, shiftReg[2]}, digit5);
    BCDConvert BCDConvert4({3'b000, shiftReg[3]}, digit4);
    BCDConvert BCDConvert5({3'b000, shiftReg[4]}, digit3);

    //count display
    BCDConvert BCDConvert6(count, digit2);
    BCDConvert BCDConvert8({3'b000, even}, digit0);

    //7 segment display
    sSegDisplay_8 sSegDisplay_81(ck, digit0, digit1, digit2, digit3, digit4, digit5, digit6, digit7, seg, an);


endmodule
