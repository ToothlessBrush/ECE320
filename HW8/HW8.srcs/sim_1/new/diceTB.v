`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 12:40:57 AM
// Design Name: 
// Module Name: diceTB
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


module diceTB();

reg clk100MHz;
reg reset;
reg enable;
wire [2:0] dice;

rolldice uut(
    .clk100MHz(clk100MHz),
    .reset(reset),
    .enable(enable),
    .dice(dice)
    );

always begin #5 clk100MHz <= ~clk100MHz; end

initial begin
    clk100MHz = 0;
    reset = 1;
    enable = 0;
    #5 reset = 0;
    #5 enable = 1;
    #50 enable = 0;
    #5 reset = 1;
    #5 reset = 0;
    #5 enable = 1;
    #50 $finish;
end

endmodule
