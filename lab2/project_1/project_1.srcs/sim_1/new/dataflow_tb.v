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
reg [3:0] x;
// Outputs from the DUT are wire type
wire [1:7] S;
// Instantiate the module dataflow
dataflow UUT (x, S);
// Initialize Inputs
initial
    begin

    x=0; #100;
    x=1; #100;
    x=2; #100;
    x=3; #100;
    x=4; #100;
    x=5; #100;
    x=6; #100;
    x=7; #100;
    x=8; #100;
    x=9; #100;
    x=10; #100;
    x=11; #100;
    x=12; #100;
    x=13; #100;
    x=14; #100;
    x=15; #100;
    
    end 
endmodule