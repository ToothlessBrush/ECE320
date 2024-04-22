`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2024 11:53:01 PM
// Design Name: 
// Module Name: clkgen100khz
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


module clkgen100khz(
    clk100MHz, // input 100MHz clock
    reset, // input reset
    clk100kHz // output 100kHz clock
    );

    input clk100MHz;
    input reset;
    output reg clk100kHz = 0;

    parameter n = 100_000_000 / 100_000; // 100MHz / 100kHz
    parameter log2n = $clog2(n); // log2(n)

    reg [log2n-1:0] counter;

    
    always @(posedge clk100MHz or posedge reset) begin
        if (reset) begin
            counter <= 0;
            clk100kHz <= 0;
        end else begin
            if (counter == (n/2)-1) begin
                counter <= 0;
                clk100kHz <= ~clk100kHz;
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule
