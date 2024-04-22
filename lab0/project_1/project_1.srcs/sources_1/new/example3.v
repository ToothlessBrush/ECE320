`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2024 11:11:05 AM
// Design Name: 
// Module Name: example3
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


module example3(
    x1, x2, x3, x4, g1, g2, g3, g4
    );
    input x1, x2, x3, x4;
    output g1, g2, g3, g4;
    
    assign g1 = x1;
    assign g2 = x1 ^ x2;
    assign g3 = x2 ^ x3;
    assign g4 = x3 ^ x4;
endmodule
