module clk_divider #(
    parameter DIVISIONS=1)
    (input logic clk_i, rst_i,
    output logic clk_o);

    // TODO: parameterize this
    logic [9:0] counter;

    always_ff @(posedge clk_i) begin
        if (~rst_i) begin
            counter <= '0;
            clk_o <= 1'b1;
        end
        else begin
            if (clk_i) begin
                if (counter < DIVISIONS-1) begin
                    counter <= counter + 1'b1;
                    clk_o <= clk_o;
                end else begin
                    counter <= '0;
                    clk_o <= ~clk_o;
                end
            end
        end
    end
endmodule


