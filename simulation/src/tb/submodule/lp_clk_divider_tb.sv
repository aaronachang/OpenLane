// This tests the clock divider structure used in the lp tree
// serializer
module lp_clk_divider_tb();
    logic clk_i, rst_i;

    logic trigger, clk2_0, clk2_90, clk4_0, clk4_90, clk4_45, clk4_idk;
    always_ff @(posedge clk_i) begin
        if (~rst_i) trigger <= 1'b0;
        else begin
            if (dut1.clk180) trigger <= 1'b1;
            else trigger <= trigger;
        end
    end

    logic rsts[6:0];

    clk_divider dut0 (
        .clk_i,
        .rst_i,
        .init_i(1'b1),
        .clk0_o(clk2_0),
        .clk90_o(clk2_90),
        .rst0_o(rsts[1]),
        .rst90_o(rsts[2])
    );
    clk_divider dut1 (
        .clk_i(clk2_0),
        .rst_i(rsts[1]),
        .init_i(1'b1),
        .clk0_o(clk4_0),
        .clk90_o(clk4_90),
        .rst0_o(rsts[3]),
        .rst90_o(rsts[4])
    );
    clk_divider dut2 (
        .clk_i(clk2_90),
        .rst_i(rsts[2]),
        .init_i(1'b1),
        .clk0_o(clk4_45),
        .clk90_o(clk4_idk),
        .rst0_o(rsts[5]),
        .rst90_o(rsts[6])
    );

    parameter CLOCK_PERIOD=100;
    initial begin
		clk_i <=1'b0;
		forever #(CLOCK_PERIOD/2) clk_i <= ~clk_i;
	end
    
    initial begin
        $vcdplusfile("lp_clk_divider.vcd.vpd");
        $vcdpluson;
        $vcdplusmemon;
        rst_i <= '0;
        @(posedge clk_i);
        rst_i <= '1;
        repeat(20) @(posedge clk_i);
        $finish;
    end
endmodule
