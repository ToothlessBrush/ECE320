`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 11:42:48 AM
// Design Name: 
// Module Name: shiftReg
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


module shiftReg(
    input clk,
    input w,
    input rst,
    output reg [4:0] shiftReg,
    output reg [3:0] count,
    output reg even = 1'b0
    );

    always @(posedge clk or posedge rst)
    begin
        if(rst || count >= 5) begin
            shiftReg <= 5'b00000;
            count <= 4'b0000;
            even <= 1'b0;
        end
        else begin
            if (w == 1'b1)
                even <= ~even;
            shiftReg <= {shiftReg[3:0], w};
            count <= count + 1;
        end
    end

endmodule
