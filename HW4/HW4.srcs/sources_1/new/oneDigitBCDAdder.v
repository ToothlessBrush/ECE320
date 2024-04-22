`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2024 10:56:45 PM
// Design Name: 
// Module Name: oneDigitBCDAdder
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


module oneDigitBCDAdder(
    cin, x, y, sum, cout
    );

    input cin;
    input [3:0] x, y;
    
    output [3:0] sum;       
    output cout;

    assign {cout, sum} = x + y + cin > 9 ? 4'd6 + (x + y + cin) : x + y + cin;  //if sum > 9, add 6 to the sum
endmodule
