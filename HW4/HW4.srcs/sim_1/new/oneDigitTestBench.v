`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2024 10:59:59 PM
// Design Name: 
// Module Name: oneDigitTestBench
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


module oneDigitTestBench;

reg [3:0] x, y;
reg cin;
wire [3:0] sum;
wire cout;

oneDigitBCDAdder UUT (
    .cin(cin), 
    .x(x), 
    .y(y), 
    .sum(sum), 
    .cout(cout)
    );

    initial begin
        x = 4'd0; y = 4'd0; cin = 1'b0; #100;
        x = 4'd1; y = 4'd1; cin = 1'b0; #100;
        x = 4'd8; y = 4'd9; cin = 1'b1; #100;
        x = 4'd2; y = 4'd1; cin = 1'b0; #100;
        x = 4'd9; y = 4'd4; cin = 1'b0; #100;
        x = 4'd1; y = 4'd2; cin = 1'b1; #100;
        x = 4'd3; y = 4'd6; cin = 1'b0; #100;
        x = 4'd4; y = 4'd6; cin = 1'b0; #100;
    end
    
endmodule
