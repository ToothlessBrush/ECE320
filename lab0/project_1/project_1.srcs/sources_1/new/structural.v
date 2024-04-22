`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2024 11:24:54 AM
// Design Name: 
// Module Name: structural
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


module structural(
    x1, x2, x3, x4, g1, g2, g3, g4
    );
    input x1, x2, x3, x4;
    output g1, g2, g3, g4;
    
    assign g1 = x1;
    xor A1(g2, x1, x2),
        A2(g3, x2, x3),
        A3(g4, x3, x4);
        
endmodule
