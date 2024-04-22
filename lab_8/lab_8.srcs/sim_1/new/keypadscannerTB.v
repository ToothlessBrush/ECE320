`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2024 03:59:30 PM
// Design Name: 
// Module Name: keypadscannerTB
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


`timescale 1ns / 1ps

module KeyPadScanner_TB;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Signals
    reg clk;
    reg reset;
    reg [3:0] col;
    wire [3:0] row;
    wire key_pressed;

    wire [3:0] key;

    // Instantiate the module under test
    KeyPadScanner dut (
        .clk(clk),
        .col(col),
        .row(row),
        .reset(reset),
        .key_pressed(key_pressed)
    );

    keypadInterpreter keyInterp (
        .col(col),
        .row(row),
        .reset(reset),
        .key_pressed(key_pressed),
        .key(key)
    );

    // Clock generation
    always begin #((CLK_PERIOD/2)) 
        clk = ~clk;
    end;

    // Stimulus
    initial begin
        clk = 0;
        reset = 1;
        col = 4'b1111;

        #100
        reset = 0;

        // Test key 1
        test_key(0);
        // Test key 2
        test_key(1);
        // Test key 3
        test_key(2);
        // Test key A
        test_key(3);

        $finish;

    end

    task test_key;
        input integer col_index;
        begin
            col = 4'b1111; //all columns high
            #20;
            col[col_index] = 1'b0; // set one column low
            #1000 //debounce time
            col = 4'b1111; //all columns high
            #50;
        end
    endtask

endmodule
