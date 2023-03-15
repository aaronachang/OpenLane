module clk_divider_tb();
    logic clk_i, rst_i, clk_o;

    clk_divider dut (.*);

    parameter CLOCK_PERIOD=100;
    initial begin
		clk_i <=1'b0;
		forever #(CLOCK_PERIOD/2) clk_i <= ~clk_i;
	end
    
    initial begin
        $vcdpluson;
        $vcdplusmemon;
        rst_i <= '0;
        @(posedge clk_i);
        rst_i <= '1;
        repeat(10) @(posedge clk_i);
        $finish;
    end
endmodule
