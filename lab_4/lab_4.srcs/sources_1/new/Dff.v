module Dff (
    input D,
    input Clk,
    output reg Q
);

always @(posedge Clk) begin
    Q <= D;
end

endmodule