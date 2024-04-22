`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2024 11:26:58 PM
// Design Name: 
// Module Name: twoDigitTestBench
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


module twoDigitTestBench;

reg [7:0] x, y;
reg cin;
wire [7:0] sum;
wire cout;
wire coutMiddle;

oneDigitBCDAdder firstDigit (
    .cin(1'b0), 
    .x(x[3:0]), 
    .y(y[3:0]), 
    .sum(sum[3:0]), 
    .cout(coutMiddle)
    );

oneDigitBCDAdder secondDigit (
    .cin(coutMiddle), 
    .x(x[7:4]), 
    .y(y[7:4]), 
    .sum(sum[7:4]), 
    .cout(cout)
    );

    initial begin
        x = 8'b0010_0101; y = 8'b1001_1000; cin = 1'b0; #100;
        x = 8'b0100_1001; y = 8'b0111_0111; cin = 1'b0; #100;
        x = 8'b1001_0110; y = 8'b0100_0101; cin = 1'b1; #100;
        x = 8'b0001_0101; y = 8'b0010_1001; cin = 1'b0; #100;
        x = 8'b0011_0111; y = 8'b0010_0001; cin = 1'b0; #100;
        x = 8'b0111_0000; y = 8'b1000_0011; cin = 1'b1; #100;
        x = 8'b0001_0110; y = 8'b1001_0011; cin = 1'b0; #100;
        x = 8'b1001_1001; y = 8'b1001_1001; cin = 1'b1; #100;
    end
endmodule
