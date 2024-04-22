`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2024 11:46:30 AM
// Design Name: 
// Module Name: clkGen
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

// Clock generator module convert the 100Mhz clock to 1khz clock
module clkGen(
    input clk, //input clock
    output reg clk1khz //output 1khz clock
    );

    // Define parameters
    parameter n = 1_000; // Clock frequency in Hz
    parameter logn = 10; // Clock divider number of bits you need for counter rounded up from 9.965

    // Define registers
    reg [logn-1:0] counter;

    // Clock generation 
    always @(posedge clk) begin
        if (counter == (n/2) - 1) begin //every half period of 1khz clock flip the 1khz clock
            counter <= 0;
            clk1khz <= ~clk1khz;
        end else begin
            counter <= counter + 1;
        end
    end

endmodule
