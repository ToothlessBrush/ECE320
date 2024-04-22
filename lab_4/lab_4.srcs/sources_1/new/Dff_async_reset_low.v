module Dff_async_reset_low (
    input D,
    input Clk,
    input Reset,
    output reg Q
);

    always @(posedge Clk or negedge Reset) begin
        if (!Reset)
            Q <= 1'b0;
        else
            Q <= D;
    end

endmodule