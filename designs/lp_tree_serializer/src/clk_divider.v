module clk_divider(
    input logic clk_i,
    input logic rst_i,
    output logic clk0_o,
    output logic clk90_o,
    output logic rst_o
    );

    logic [1:0] d;
    logic in, in_n, d0_n;
    logic clk180;
    logic clk270;
    // Note: 0 and 90 degree phase are actually 180 and 270 
    // degree phase from the input, but we phase shift by 
    // 180 by initializing 'in' to 1'b1
    assign clk0_o = clk180;
    assign clk90_o = clk270;

    not #2(in_n, in);
    not #2(d0_n, d[0]);
    assign in = rst_i ? clk180 : 1'b1;
    assign d[0] = clk_i ? d[0] : in_n;
    assign d[1] = clk_i ? d0_n : d[1];
    not #2(clk180, d[1]);
    not #2(clk270, d[0]);
    
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
endmodule


