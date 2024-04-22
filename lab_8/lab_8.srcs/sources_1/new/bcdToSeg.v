`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 12:29:06 PM
// Design Name: 
// Module Name: bcdToSeg
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


module bcdToSeg(x, S);

    input [3:0] x;
    output reg [1:7] S;

always @(*)
begin
    case(x)
        4'b0000: S = 7'b0000001;    //0
        4'b0001: S = 7'b1001111;    //1
        4'b0010: S = 7'b0010010;    //2
        4'b0011: S = 7'b0000110;    //3
        4'b0100: S = 7'b1001100;    //4
        4'b0101: S = 7'b0100100;    //5
        4'b0110: S = 7'b0100000;    //6
        4'b0111: S = 7'b0001111;    //7
        4'b1000: S = 7'b0000000;    //8
        4'b1001: S = 7'b0000100;    //9
        4'b1010: S = 7'b0001000;    //A
        4'b1011: S = 7'b1100000;    //B
        4'b1100: S = 7'b0110001;    //C
        4'b1101: S = 7'b1000010;    //D
        4'b1110: S = 7'b0110000;    //E
        4'b1111: S = 7'b0111000;    //F
    endcase
end
endmodule
