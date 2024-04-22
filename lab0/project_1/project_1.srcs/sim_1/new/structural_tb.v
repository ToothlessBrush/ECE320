`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2024 11:32:04 AM
// Design Name: 
// Module Name: example3_tb
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


module structual_tb();

//inputs 
reg x1, x2, x3, x4;

//output 
wire g1, g2, g3, g4;

structural UUT (x1, x2, x3, x4, g1, g2, g3, g4);

initial 
begin
{x1, x2, x3, x4}=0; #100;
{x1, x2, x3, x4}=1; #100;
{x1, x2, x3, x4}=2; #100;
{x1, x2, x3, x4}=3; #100;
{x1, x2, x3, x4}=4; #100;
{x1, x2, x3, x4}=5; #100;
{x1, x2, x3, x4}=6; #100;
{x1, x2, x3, x4}=7; #100;
{x1, x2, x3, x4}=8; #100;
{x1, x2, x3, x4}=9; #100;
{x1, x2, x3, x4}=10; #100;
{x1, x2, x3, x4}=11; #100;
{x1, x2, x3, x4}=12; #100;
{x1, x2, x3, x4}=13; #100;
{x1, x2, x3, x4}=14; #100;
{x1, x2, x3, x4}=15; #100;

end
endmodule
