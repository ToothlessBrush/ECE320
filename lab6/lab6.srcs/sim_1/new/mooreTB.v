`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 11:57:22 AM
// Design Name: 
// Module Name: mooreTB
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


module mooreTB();

    reg clk;
    reg w;
    reg reset;
    wire [2:0] state;
    wire z;

    moore uut(
        .w(w),
        .clk(clk),
        .reset(reset),
        .state(state),
        .z(z)
        );

    //switch clock every 50ns
    always #50 clk = ~clk;

    initial
    begin
        clk = 1'b0; //initialize clk to 0
        w = 1'b0; //initialize w to 0
        reset = 1'b0; //initialize reset to 1
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b1; reset = 1'b1; #100;
        w = 1'b0; reset = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
        w = 1'b1; #100;
        w = 1'b0; #100;
    end

endmodule

