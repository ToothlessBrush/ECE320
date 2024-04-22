module Dff_sync_reset (
    input D,
    input Clk,
    input Reset,
    output reg Q
);

    always @(posedge Clk) begin
        if (Reset)
            Q <= 1'b0;
        else
            Q <= D;
    end

endmodule