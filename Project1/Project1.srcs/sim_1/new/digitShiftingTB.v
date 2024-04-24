`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 11:06:06 PM
// Design Name: 
// Module Name: digitShiftingTB
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


module digitShiftingTB(

    );

    reg reset, enter;
    reg [3:0] inputDigit;
    wire [3:0] digit0, digit1, digit2, digit3;

    digitShifing digitShifing0(
        .reset(reset),
        .enter(enter),
        .inputDigit(inputDigit),
        .digit0(digit0),
        .digit1(digit1),
        .digit2(digit2),
        .digit3(digit3)
        );

    //1111 is blank digit
    //1110 is - sign

    initial begin
        reset = 0;
        enter = 0;
        inputDigit = 4'b0000;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0001;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0010;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0011;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0000; //test 3 0's in a row
        #10 enter = 1; #10 enter = 0;
        #10 reset = 1; #10 reset = 0;
        inputDigit = 4'b0000;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0000;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0101;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0000; //test 2 0's in a row
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0000;
        #10 enter = 1; #10 enter = 0;
        #10 reset = 1; #10 reset = 0;
        inputDigit = 4'b0110;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0111;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b0000;
        #10 enter = 1; #10 enter = 0;
        inputDigit = 4'b1000;
        #10 enter = 1; #10 enter = 0;
        #10 reset = 1; #10 reset = 0;
        #10 $finish;
    end


endmodule
