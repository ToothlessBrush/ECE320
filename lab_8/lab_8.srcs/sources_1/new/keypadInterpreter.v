`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 12:18:38 PM
// Design Name: 
// Module Name: keypadInterpreter
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


module keypadInterpreter(
    col, row, reset, key_pressed, key
    );

    input [3:0] col;
    input [3:0] row;
    input reset;
    input key_pressed;

    output reg [3:0] key;

    always @(posedge key_pressed or posedge reset) begin
        if (reset) begin
            key <= 4'b0000;
        end
        else begin
            case ({row, col})
                8'b1110_0001: key <= 4'b0001; //1
                8'b1110_0010: key <= 4'b0010; //2
                8'b1110_0100: key <= 4'b0011; //3
                8'b1110_1000: key <= 4'b1010; //A
                8'b1101_0001: key <= 4'b0100; //4
                8'b1101_0010: key <= 4'b0101; //5
                8'b1101_0100: key <= 4'b0110; //6
                8'b1101_1000: key <= 4'b1011; //B
                8'b1011_0001: key <= 4'b0111; //7
                8'b1011_0010: key <= 4'b1000; //8
                8'b1011_0100: key <= 4'b1001; //9
                8'b1011_1000: key <= 4'b1100; //C
                8'b0111_0001: key <= 4'b1110; //* //E
                8'b0111_0010: key <= 4'b0000; //0   
                8'b0111_0100: key <= 4'b1111; //# //F
                8'b0111_1000: key <= 4'b1101; //D
                default: key <= 4'b0000;
            endcase
        end
    end

endmodule
