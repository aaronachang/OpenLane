module clk_div_tb();
    logic clk_i;
    logic rst_i;
    logic clk0_o;
    logic clk90_o;
    logic clk180_o;
    logic clk270_o;

    clk_div dut (.*);


    parameter CLOCK_PERIOD=100;
    initial begin
		clk_i <=1'b0;
		forever #(CLOCK_PERIOD/2) clk_i <= ~clk_i;
	end
    
    initial begin
        $vcdplusfile("clk_div.vcd.vpd");
        $vcdpluson;
        rst_i = '0;
        #110;
        rst_i <= '1;
        repeat(10) @(posedge clk_i);
        $finish;
    end
endmodule
