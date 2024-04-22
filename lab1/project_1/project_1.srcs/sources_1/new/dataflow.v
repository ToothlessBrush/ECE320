`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2024 12:07:09 PM
// Design Name: 
// Module Name: dataflow
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


module dataflow(
A, B, C, D, e, f, g
    );
    input A, B, C, D;
    output e, f, g;
    
    assign g = (~A & B & ~C & ~D) | (A & ~B & ~C & ~D) | (~A & ~B & ~C & D) | (A & B & ~C & D) | (~A & B & C & D) | (A & ~B & C & D) | (~A & ~B & C & ~D) | (A & B & C & ~D);
    assign f = (A & ~C & ~D) | (~A & B & ~D) | (~A & ~C & D) | (~B & C & ~D) | (~B & ~C & D) | (~A & ~B & C);
    assign e = (~A & ~B & ~C & ~D);
endmodule
