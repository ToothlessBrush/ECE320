`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 01:27:40 AM
// Design Name: 
// Module Name: swapTB
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


module swapTB(

    );

    reg clk, reset, w;
    reg [7:0] data;
    wire [7:0] R1, R2;
    wire [1:0] state;

    swap uut(
        .clk100MHz(clk),
        .reset(reset),
        .w(w),
        .data(data),
        .R1(R1),
        .R2(R2),
        .state(state)
        );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        reset = 1;
        w = 0;

        //load data into R1 then R2 next clock cycle
        data = 8'b11110000; //R1 data
        #5 reset = 0;
        #5 data = 8'b00001111; //R2 data
        
        #10 data = 8'b0;
        //swap R1 and R2
        #20 w = 1;
        #6 w = 0;

        #44 //wait for swap to complete
        
        //test reset
        reset = 1;
        #10 reset = 0;
        #20 $finish;
    end

endmodule
