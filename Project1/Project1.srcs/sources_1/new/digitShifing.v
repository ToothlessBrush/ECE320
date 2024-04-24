`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 10:44:29 PM
// Design Name: 
// Module Name: digitShifing
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


module digitShifing(
    input reset, enter,
    input [3:0] inputDigit,
    output reg [3:0] digit0, digit1, digit2, digit3 //cant use arrays I guess to Ill switch to individual definitions since verilog is stupid
    );

    //1111 is blank digit
    //1110 is - sign

    parameter BLANK = 4'b1111;

    initial begin
        digit0 = 4'b0000;
        digit1 = BLANK;
        digit2 = BLANK;
        digit3 = BLANK;
    end

    // at the positive edge of enter signal, the digits are shifted to the left. if the digit is 0 and all the digits are 0 then dont shift.
    always @(posedge enter or posedge reset) begin
        if(reset) begin 
            digit0 = 4'b0000;
            digit1 = BLANK;
            digit2 = BLANK;
            digit3 = BLANK;
        end
        else if(enter) begin
            if (inputDigit <= 4'b1001) begin //if the input is greater than 9 then dont take input
                if (digit3 == BLANK) begin //dont take input if the left most digit isnt blank since that would mean the number is full
                    if (!(digit0 == 4'b0000 && digit1 == BLANK && digit2 == BLANK && digit3 == BLANK)) begin //shift the digits to the left if the digits are not 0
                        digit3 = digit2;
                        digit2 = digit1;
                        digit1 = digit0;
                        digit0 = inputDigit;
                    end else begin //if the digits are 0 and the input is 0 then dont shift
                        digit0 = inputDigit;
                    end
                end
            end

            //this isnt needed I missunderstood the requirements of the project and didnt know we stop when full
            // // clear left most 0's wish I could use a for loop but since verilog cant use arrays for paramters I cant index and I have to do this
            // // it works for the 4 digits I suppose but woudnt scale well but I guess that doesnt matter for this project (sorry for the rant)
            // if(digit1 == 4'b0000 && (digit2 == 4'b0000 || digit2 == BLANK) && (digit3 == 4'b0000 || digit3 == BLANK)) begin //check 3rd left most
            //     digit1 = BLANK;
            //     digit2 = BLANK;
            //     digit3 = BLANK;
            // end 
            // if (digit2 == 4'b0000 && (digit3 == 4'b0000 || digit3 == BLANK)) begin //check 2nd left most
            //     digit2 = BLANK;
            //     digit3 = BLANK;
            // end 
            // if (digit3 == 4'b0000) begin //check left most
            //     digit3 = BLANK;
            // end
        end
        
        
    end


endmodule
