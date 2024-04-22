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


module KeyPadScanner (
    clk,         // Clock input
    reset,       // Reset input
    col,   // Column input
    row,   // Row output
    key_pressed  // Key press output

);

// Define inputs and outputs
input clk;
input reset;
input [3:0] col;
output reg [3:0] row;
output reg key_pressed;

// Define parameters
parameter debounce_time = 1000; // 12ms debounce time
parameter logn = 10;
parameter num_rows = 4;

// Define state constants
parameter IDLE = 2'b00;
parameter SCAN = 2'b01;
parameter BOUNCE = 2'b10;

reg [1:0] state = IDLE;
reg [1:0] next;
reg [logn-1:0] bounce_timer;
reg [3:0] next_row = 4'b1110; //initial next row is 1110

// Define state transition logic
always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= IDLE;
    end
    else begin
        state <= next;
    end
end

//state transition logic and output logic
always @(posedge clk) begin
    case (state)
        IDLE: begin
            // Ground all rows and check if columns are non-zero
            row <= 4'b0000;
            key_pressed <= 0;
            if (col != 4'b1111) begin
                // Columns are not non-zero, move to SCAN state
                next <= SCAN;
            end
        end
        SCAN: begin
            // Shift to next row and check for key press
            row <= next_row;
            if (bounce_timer < 1200) begin // Wait for debounce time 12ms
                // Wait for debounce time
                bounce_timer <= bounce_timer + 1;
            end else begin
                // Wait for debounce time
                next <= BOUNCE;
                bounce_timer <= 0; //reset debounce timer
            end
        end
        BOUNCE: begin
            // Check for key press after debounce time
            if (col != 4'b1111) begin
                // Key pressed, set key_pressed and move back to IDLE state
                key_pressed <= 1;
                next <= IDLE; 
            end
            next_row <= {next_row[2:0], next_row[3]}; //shift to next row 1110 1101 1011 0111
            if (next_row == 4'b1110) begin
                // All rows scanned, reset to IDLE state
                next <= IDLE;
            end else begin
                // Move to next row
                next <= SCAN;
            end
        end
    endcase
end

// // Define parameters
// parameter debounce_time = 1000; // 12ms debounce time

// // Define state constants
// parameter IDLE = 2'b00;
// parameter SCAN = 2'b01;
// parameter BOUNCE = 2'b10;

// // Define registers
// reg [2:0] bounce_timer;
// reg [3:0] next_row = 4'b1110; //initial next row is 1110
// reg [1:0] state, next;

// // Define state transition logic
// always @(posedge clk or posedge reset) begin
//     if (reset) begin
//         state <= IDLE;
//     end
//     else begin
//         state <= next;
//     end
// end

// // Define state transition logic
// always @(state, col, bounce_timer, next_row) begin
//     case (state)
//         IDLE: begin
//             next <= col == 4'b1111 ? IDLE : SCAN;
//         end
//         SCAN: begin
//             next <= bounce_timer >= 1000 ? BOUNCE : SCAN; //1200 is 12ms since the period is .01ms
//         end
//         BOUNCE: begin
//             next <= col == 4'b1111
//             ? next_row == 4'b1111 
//                     ? IDLE 
//                     : SCAN 
//                 : SCAN;
//         end
//     endcase
// end

// // Define state output logic
// always @(posedge clk) begin
//     case (state)
//         IDLE: begin //here is were we ground all rows and check if columns are non-zero
//             row <= 4'b0000;
//             next_row <= 4'b1110;
//             key_pressed <= 0;
//         end
//         SCAN: begin //here is were we shift to the next row and wait for debounce time (time it takes button signal to stabilize)
//             row <= next_row;
//             if (bounce_timer < 1000) begin
//                 bounce_timer <= bounce_timer + 1;
//             end
//         end
//         BOUNCE: begin //here is were we check if a button in the row is pressed
//             next_row <= next_row << 1; //1110, 1101, 1011, 0111
//             bounce_timer <= 0; //reset debounce timer
//             key_pressed <= col != 4'b1111;
//         end
//     endcase
// end

// always @(posedge clk) begin
//     case (state)
//         IDLE: begin
//             // Ground all rows and check if columns are non-zero
//             row <= 4'b0000;
//             if (col != 4'b1111) begin
//                 // Columns are not non-zero, move to SCAN state
//                 next_row <= 4'b1110;
//                 state <= SCAN;
//             end
//             key_pressed <= 0;
//         end
//         SCAN: begin
//             // Shift to next row and check for key press
//             row <= next_row;
//             debounce_timer <= debounce_timer + 1;
//             /*if counter == 1000
//             {}*/
//             if (debounce_timer == 1000) begin // Wait for debounce time 12ms
//                 // Wait for debounce time
//                 state <= DEBOUNCE;
//             end
//         end
//         DEBOUNCE: begin
//             // Check for key press after debounce time
//             if (col != 4'b1111) begin
//                 // Key pressed, set key_pressed and move back to IDLE state
//                 key_pressed <= 1;
//                 state <= IDLE;
//             end else begin
//                 // No key pressed, move to next row bit shift to next row and add one to row
//                 next_row <= row << 1 + 1;
//                 //reset debounce timer to give 12ms to scan
//                 debounce_timer <= 0;
//                 if (next_row == 4'b1111) begin
//                     // All rows scanned, reset to IDLE state
//                     state <= IDLE;
//                 end else begin
//                     // Move to next row
//                     state <= SCAN;
//                 end
//             end
//         end
//     endcase
// end

endmodule
