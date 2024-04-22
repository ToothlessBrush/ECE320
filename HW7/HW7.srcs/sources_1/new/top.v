`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 10:36:06 PM
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input reset,
    input [15:0] data,
    input s,
    output reg [5:0] M
    );

    reg [15:0] R;
    reg [5:0] Sum;
    reg [1:0] C;
    parameter k = 4;

    //states
    parameter s1 = 2'b00;
    parameter s2 = 2'b01;
    parameter s3 = 2'b10;
    parameter s4 = 2'b11;
    reg [1:0] state, next_state;

    //state logic
    always @ (posedge clk or posedge reset)
    begin
        if (reset)
            state <= s1;
        else
            state <= next_state;
    end

    //next state logic
    always @ (state, s, C) begin
        case(state)
            s1: begin
                next_state = s ? s2 : s1;
            end
            s2: begin
                next_state = C == 2'b00 ? s3 : s2;
            end
            s3: begin
                next_state = s4;
            end
            s4: begin
                next_state = s ? s4 : s1;
            end
            default: next_state = s1;
        endcase
    end

    //output logic
    always @(posedge clk) begin
        case (state)
            s1: begin
                Sum <= 0;
                C <= k - 1;
                if (s) begin
                    R <= data;
                end
            end
            s2: begin
                Sum <= Sum + R[15:12];
                R <= {R[11:0], 4'b0};
                if (C != 0) begin
                    C = C - 1;
                end
            end
            s3: begin
                M <= Sum / k;
            end
            s4: begin
            end
        endcase

    end
endmodule
