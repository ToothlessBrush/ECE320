`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 12:12:39 PM
// Design Name: 
// Module Name: BCDConvert
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


module BCDConvert(x, S);

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
        default: S = 7'b1111111;    //10-15
    endcase
end
endmodule

