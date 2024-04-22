`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 11:56:10 PM
// Design Name: 
// Module Name: lab4_top
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


module lab4_top(
    input D,
    input clock,
    input ResetH,
    input ResetL,
    output Q1, Q2, Q3, Q4, Q5
    );

    Dff UUT1 (
        .D(D),
        .Clk(clock),
        .Q(Q1)
    );

    Dff_sync_reset UUT2 (
        .D(D),
        .Clk(clock),
        .Reset(ResetH),
        .Q(Q2)
    );

    Dff_sync_reset_low UUT3 (
        .D(D),
        .Clk(clock),
        .Reset(ResetL),
        .Q(Q3)
    );

    Dff_async_reset UUT4 (
        .D(D),
        .Clk(clock),
        .Reset(ResetH),
        .Q(Q4)
    );

    Dff_async_reset_low UUT5 (
        .D(D),
        .Clk(clock),
        .Reset(ResetL),
        .Q(Q5)
    );
endmodule
