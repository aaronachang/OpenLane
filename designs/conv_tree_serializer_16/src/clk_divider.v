module clk_divider
    (input logic clk_i, rst_i,
    output logic clk_o,
    output logic rst_o);

    logic [2:0] hold_rsts;
    assign rst_o = hold_rsts[2];

    always_ff @(posedge clk_i) begin
        if (~rst_i) begin
            hold_rsts <= '0;
        end else begin 
            hold_rsts[0] <= rst_i;
            hold_rsts[1] <= hold_rsts[0];
            hold_rsts[2] <= hold_rsts[1];
        end
    end

    always_ff @(posedge clk_i) begin
        if (~rst_i) clk_o <= 1'b1;
        else clk_o <= ~clk_o;
    end
endmodule