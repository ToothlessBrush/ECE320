`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 01:19:33 AM
// Design Name: 
// Module Name: swap
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


module swap(
    input clk100MHz, //100MHz clock
    input reset, //reset
    input w, //write enable
    input [7:0] data, //input data
    output reg [7:0] R1, R2, //registers
    output reg [1:0] state
    );

    //define states
    reg [1:0] next;
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

    reg w_prev;
    reg [7:0] temp;

    //state logic
    always @(posedge clk100MHz or posedge reset) begin
        if (reset) begin
            state <= S0;
            w_prev <= 1'b0;
        end else begin
            state <= next;
            w_prev <= w;
        end
    end

    //next state logic
    always @(*) begin
        case (state)
            S0: next = S1;
            S1: next = S2;
            S2: begin
                if (w && !w_prev) begin //rising edge of w
                    next = S3;
                end else begin
                    next = S2;
                end
            end
            S3: next = S2;
            default next = S0;
        endcase
    end

    //output logic
    always @(clk100MHz) begin
        if (reset) begin
            R1 <= 8'b0;
            R2 <= 8'b0;
        end else begin
        case (state)
            S0: begin //input R1 data
                R1 <= data;
            end 
            S1: begin //input R2 data
                R2 <= data;
            end
            S2: begin //do nothing
            end
            S3: begin //swap R1 and R2
                temp = R1;
                R1 = R2;
                R2 = temp;
                
            end
        endcase
        end
    end

endmodule