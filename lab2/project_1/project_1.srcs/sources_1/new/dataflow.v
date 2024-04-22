`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2024 12:10:35 PM
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


module dataflow(x, S);
    
    input [3:0] x;
    output [7:1] S;
    
    assign S[1] = ~(x[3] | x[1] | (x[2] & x[0]) | (~x[2] & ~x[1] & ~x[0]));
    assign S[2] = ~(x[3] | ~x[2] | (~x[1] & ~x[0]) | (x[1] & x[0]));
    assign S[3] = ~(~x[1] | x[0] | x[2] | x[3]);
    assign S[4] = ~(x[3] | (x[1] & ~x[0]) | (x[2] & ~x[1] & x[0]) | (~x[2] & ~x[1] & ~x[0]) | (~x[3] & ~x[2] & x[1]));
    assign S[5] = ~((~x[2] & ~x[1] & ~x[0]) | ( x[1] & ~x[0]));
    assign S[6] = ~(x[3] | (~x[1] & ~x[0]) | (x[2] & ~x[1]) | (x[2] & x[1] & ~x[0]));
    assign S[7] = ~(x[3] | (x[2] & ~x[1]) | (x[1] & ~x[0]) | (~x[2] & x[1] & x[0]));
    
endmodule
