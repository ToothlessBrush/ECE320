`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: xup_and6
//////////////////////////////////////////////////////////////////////////////////
module xup_and6 #(parameter DELAY=3)(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    output y
    );
    
    and #DELAY (y,a,b,c,d,e,f);
    
endmodule