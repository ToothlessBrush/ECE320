`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2024 12:23:00 AM
// Design Name: 
// Module Name: moore
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



module lab6_top(
    w, switchClk, ck, reset, Seg, an
    );

input w;
input switchClk;
input reset;
input ck;

wire [2:0] state;
wire z;
wire [1:7] segState, segOut;

output [0:7] Seg;
output [7:0] an;

moore moore(
    .w(w), 
    .clk(switchClk), 
    .reset(reset), 
    .state(state), 
    .z(z)
);

//convert to bcd
BCDConvert convertState(
    .x({1'b0, state}),
    .S(segState)
);

BCDConvert convertOut(
    .x({3'b000, z}),
    .S(segOut)
);

//7-segment display
sSegDisplay_8 segmentDisplay(
    .ck(ck),
    .digit0(segOut),
    .digit1(0'b1111111),
    .digit2(0'b1111111),
    .digit3(0'b1111111),
    .digit4(0'b1111111),
    .digit5(0'b1111111),
    .digit6(0'b1111111),
    .digit7(segState),
    .seg(Seg),
    .an(an)
);

endmodule