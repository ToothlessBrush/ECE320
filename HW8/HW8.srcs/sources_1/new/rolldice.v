`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 12:36:45 AM
// Design Name: 
// Module Name: rolldice
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


module rolldice(
    input clk100MHz,
    input reset,
    input enable,
    output reg [2:0] dice
    );

    always @(posedge clk100MHz or posedge reset) begin
        if (reset) begin
            dice <= 3'b0;
        end  else begin
            if (enable) begin
                dice <= dice + 1;
                if (dice >= 3'b110) begin
                    dice <= 3'b0;
                end
            end
        end
    end
endmodule
