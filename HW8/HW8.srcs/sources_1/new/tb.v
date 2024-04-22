`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 12:12:25 AM
// Design Name: 
// Module Name: tb
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


module tb();

wire clk100kHz;
reg clk100MHz;
reg reset;

parameter CLK_PERIOD = 10;

clkgen100khz uut(
    .clk100MHz(clk100MHz),
    .reset(reset),
    .clk100kHz(clk100kHz)
    );

always begin #((CLK_PERIOD/2)); clk100MHz <= ~clk100MHz; end

initial begin
    reset <= 1;
    clk100MHz <= 0;
    #100 reset <= 0;
    #7000 reset <= 1;
    #100 reset <= 0;
    #1000000 $finish;
end


endmodule
