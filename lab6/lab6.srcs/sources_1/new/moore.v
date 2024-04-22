`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 12:02:24 PM
// Design Name: 
// Module Name: moore
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


module moore(
    w, clk, reset, state, z
    );
    
    input w;
    input clk;
    input reset;
    output reg [2:0] state;
    
    reg [2:0] next;
    
    output reg z;

    parameter s0 = 3'b000;
    parameter s1 = 3'b001;
    parameter s2 = 3'b010;
    parameter s3 = 3'b011;
    parameter s4 = 3'b100;

    //state table for 1010 sequence

    always @(w, state) begin
        case(state)
            s0: if(!w) next = s0; else next = s1;
            s1: if(!w) next = s2; else next = s1;
            s2: if(!w) next = s0; else next = s3;
            s3: if(!w) next = s4; else next = s1;
            s4: if(!w) next = s0; else next = s1;
            default: next = s0;
        endcase
    end

    always @(posedge clk, posedge reset) begin
        if(reset) 
            state <= s0;
        else 
            state <= next;
    end

    always @ (state)
        begin
            if (state == s4)
                z = 1'b1;
            else
                z = 1'b0;
        end

endmodule
