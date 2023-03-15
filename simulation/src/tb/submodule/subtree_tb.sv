// This tests a small low power tree
module subtree_tb();
    logic clk_i, rst_i;

    logic clk2_0, clk2_90, clk4_0, clk4_90, clk4_45, clk4_idk;

    logic rsts[6:0];
    logic [1:0] d;
    logic [3:0] d_in;

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
        .init_i(1'b0),
        .clk0_o(clk4_45),
        .clk90_o(clk4_idk),
        .rst0_o(rsts[5]),
        .rst90_o(rsts[6])
    );

    base_serializer mux0 (
        .CLK(clk_i),
        .SERIAL_OUT(out),
        .PAR_IN1(d[0]),
        .PAR_IN2(d[1])
    );

    base_serializer mux1 (
        .CLK(clk2_0),
        .SERIAL_OUT(d[0]),
        .PAR_IN1(d_in[0]),
        .PAR_IN2(d_in[1])
    );

    base_serializer mux2 (
        .CLK(clk2_90),
        .SERIAL_OUT(d[1]),
        .PAR_IN1(d_in[2]),
        .PAR_IN2(d_in[3])
    );

    parameter CLOCK_PERIOD=100;
    initial begin
		clk_i <=1'b0;
		forever #(CLOCK_PERIOD/2) clk_i <= ~clk_i;
	end
    
    initial begin
        $vcdpluson;
        $vcdplusmemon;
        rst_i <= '0;
        d_in <= '0;
        @(posedge clk_i);
        rst_i <= '1;
        d_in <= 4'b1011;
        repeat(10) @(posedge clk_i);
        d_in <= '0;
        repeat(20) @(posedge clk_i);
        $finish;
    end
endmodule
