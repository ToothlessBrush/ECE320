`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2024 11:25:32 AM
// Design Name: 
// Module Name: structural_sim
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


module dataflow_sim();
//test bench does not have its own inputs or outputs
// Inputs to the Device Under Test (DUT) are reg type
// Inputs
reg A, B, C, D;
// Outputs from the DUT are wire type
wire e, f, g;
// Instantiate the module dataflow
dataflow UUT (A, B, C, D, e, f, g);
// Initialize Inputs
initial
begin

{A, B, C, D}=0; #100;
{A, B, C, D}=1; #100;
{A, B, C, D}=2; #100;
{A, B, C, D}=3; #100;
{A, B, C, D}=4; #100;
{A, B, C, D}=5; #100;
{A, B, C, D}=6; #100;
{A, B, C, D}=7; #100;
{A, B, C, D}=8; #100;
{A, B, C, D}=9; #100;
{A, B, C, D}=10; #100;
{A, B, C, D}=11; #100;
{A, B, C, D}=12; #100;
{A, B, C, D}=13; #100;
{A, B, C, D}=14; #100;
{A, B, C, D}=15; #100;

end 
endmodule