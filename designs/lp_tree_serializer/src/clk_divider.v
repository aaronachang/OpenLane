module clk_divider
    (input logic clk_i, rst_i,
    input logic init_i,
    output logic clk0_o, clk90_o,
    output logic rst0_o,
    output logic rst90_o);

    logic [2:0] hold_rsts;
    logic clk180;
    assign clk180 = ~clk_i;
    assign rst0_o = hold_rsts[0];
    assign rst90_o = hold_rsts[2];

    always_ff @(posedge clk_i) begin
        hold_rsts[0] <= rst_i;
        hold_rsts[1] <= hold_rsts[0];
        hold_rsts[2] <= hold_rsts[1];
    end

    // for clk0
    always_ff @(posedge clk_i) begin
        if (~rst_i) clk0_o <= init_i;
        else clk0_o <= ~clk0_o;
    end
    
    // for clk90
    always_ff @(posedge clk180) begin
        if (~hold_rsts[0]) clk90_o <= init_i;
        else clk90_o <= ~clk90_o;
    end
endmodule


