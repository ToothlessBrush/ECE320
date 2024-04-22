`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2024 08:11:38 PM
// Design Name: 
// Module Name: hw5_top
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


module hw5_top(
    input clk,
    input w,
    output reg z
    );

    reg [3:0] shiftReg;

    always @(posedge clk)
    begin
        shiftReg <= {shiftReg[2:0], w}; //next state is the current state shifted left by 1 bit with the input bit w in the LSB
    end

    always @(*) //always check if the value of shiftReg is 1010 or 1101 for sequence detection
    begin
        if(shiftReg == 4'b1010 || shiftReg == 4'b1101)
            z = 1'b1;
        else
            z = 1'b0;
    end

endmodule
