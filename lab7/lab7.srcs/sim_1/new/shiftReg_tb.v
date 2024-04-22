`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2024 05:09:25 PM
// Design Name: 
// Module Name: shiftReg_tb
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

module shiftReg_tb ();

    // Signals
    reg clk;
    reg w;
    reg rst;
    wire [4:0] shiftReg;
    wire [3:0] count;
    wire even;

    // Instantiate the module
    shiftReg dut (
        .clk(clk),
        .w(w),
        .rst(rst),
        .shiftReg(shiftReg),
        .count(count),
        .even(even)
    );

    // Clock generation
    always begin #5 
        clk = ~clk;
    end

    initial begin
        clk = 0;
        w = 0;
        rst = 0; #10;
        w = 1; #10;
        w = 0; #10;
        w = 0; #10;
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;
        w = 1; #10;
        w = 0; #10;
        w = 1; #10;
        w = 1; #10;
        w = 1; #10;
        w = 1; rst = 1; #10;
        w = 0; rst = 0; #10;
        w = 1; #10;
        w = 0; #10;
    end

endmodule

        
