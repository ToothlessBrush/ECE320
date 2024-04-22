`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2024 06:37:27 PM
// Design Name: 
// Module Name: readKeypad
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


module keyPadScanner(
    input clk, reset,
    input [3:0]column,
    output reg [3:0]row,
    output reg [3:0]keys
    );

    reg [2:0]counter;
    reg [1:0]cValue;
    reg [1:0]present, next;

    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;

    initial begin
        counter = 0;
        row = 4'b0000;
        keys = 4'b1101;
        cValue = 0;
        present = S0;
    end

    always @* begin
        case(present)
            S0: if(~column[0] || ~column[1] || ~column[2] || ~column[3]) next = S1; else next = S0;
            S1: if(counter == 4) next = S0; else if(column[cValue]) next = S2; else next = S1;
            S2: if(~column[cValue]) next = S2; else next = S0;
            default: next = S0;
        endcase
    end

    always @(posedge clk, posedge reset) begin
        if(reset) present <= S0;
        else present <= next;
    end

    always @(posedge clk, posedge reset)
    begin
        if(reset)
        begin
            cValue <= 0;
            counter <= 0;
        end
        else
            case(present)
                S0: if(~column[0])cValue <= 0; else if(~column[1])cValue <= 1; 
                    else if(~column[2])cValue <= 2; else if(~column[3])cValue <= 3;
                S1: if(~column[cValue]) counter <= counter + 1;
                S2: if(column[cValue])begin counter <= 0; cValue <= 0;end
            endcase
    end

    always @*
    begin
        case(present)
            S0: begin row = 4'b0000; keys = 4'b1111;end
            S1: begin row = 4'b0000; row[counter] = 1'b1; keys = 4'b1111;end  // set row to 1 to test output column 
            S2: begin row = 4'b0000; keys = (cValue+counter*4);end    // if output column is 1, the pressed key is found, store it
            default: begin row = 4'b0000; keys = 4'b1111;end
        endcase
    end

endmodule
