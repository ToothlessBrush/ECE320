`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 11:15:47 PM
// Design Name: 
// Module Name: lab4_tb
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


module lab4_tb ();
    
    reg D;
    reg Clk;
    reg ResetH, ResetL;
    wire Q1, Q2, Q3, Q4, Q5;

    Dff UUT1 (
        .D(D),
        .Clk(Clk),
        .Q(Q1)
    );

    Dff_sync_reset UUT2 (
        .D(D),
        .Clk(Clk),
        .Reset(ResetH),
        .Q(Q2)
    );

    Dff_sync_reset_low UUT3 (
        .D(D),
        .Clk(Clk),
        .Reset(ResetL),
        .Q(Q3)
    );

    Dff_async_reset UUT4 (
        .D(D),
        .Clk(Clk),
        .Reset(ResetH),
        .Q(Q4)
    );

    Dff_async_reset_low UUT5 (
        .D(D),
        .Clk(Clk),
        .Reset(ResetL),
        .Q(Q5)
    );

    initial Clk = 0;
    always #50 Clk = ~Clk;

    initial begin
        ResetH = 1'b0; ResetL = 1'b0; #200;
        ResetH = 1'b1; ResetL = 1'b1; #560;
        ResetH = 1'b0; ResetL = 1'b0;
    end

    initial begin
        D = 1'b1; #80;
        D = 1'b0; #100;
        D = 1'b1; #200;
        D = 1'b1; #100;
        D = 1'b1; #100;
        D = 1'b1; #100;
    end

endmodule
