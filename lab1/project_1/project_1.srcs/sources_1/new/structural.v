`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2024 11:11:12 AM
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
A, B, C, D, e, f, g
    );
    input A, B, C, D;
    output e, f, g;
    wire g1, g2, g3, g4, g5, g6, g7, g8, f1, f2 ,f3, f4, f5, f6;
    
    not n1 (notA, A);
    not n2 (notB, B);
    not n3 (notC, C);
    not n4 (notD, D);
    
    //output g 
    and a1 (g1, notA, B, notC, notD);
    and a2 (g2, A, notB, notC, notD);
    and a3 (g3, notA, notB, notC, D);
    and a4 (g4, A, B, notC, D);
    and a5 (g5, notA, B, C, D);
    and a6 (g6, A, notB, C, D);
    and a7 (g7, notA, notB, C, notD);
    and a8 (g8, A, B, C, notD);
    or o1 (g, g1, g2, g3, g4, g5, g6, g7, g8);
    
    //output f 
    and a9 (f1, A, notC, notD);
    and a10 (f2, notA, B, notD);
    and a11 (f3, notA, notC, D);
    and a12 (f4, notB, C, notD);
    and a13 (f5, notB, notC, D);
    and a14 (f6, notA, notB, C);
    or o2 (f, f1, f2, f3, f4, f5, f6);
    
    //output e 
    and a15 (e, notA, notB, notC, notD);
    
endmodule
