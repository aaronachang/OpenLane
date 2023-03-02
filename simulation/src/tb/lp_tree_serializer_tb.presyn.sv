module lp_tree_serializer_tb ();
    logic CLK, RESET, SERIAL_OUT;
    logic [15:0] PAR_IN;

    lp_tree_serializer dut (.*);
    
    parameter CLOCK_PERIOD=100;
    initial begin
		CLK <=1'b0;
		forever #(CLOCK_PERIOD/2) CLK <= ~CLK;
	end

    initial begin
        $vcdplusfile("lp_tree_serializer.presyn.vcd.vpd");
        $vcdpluson;
        RESET <= '0;
        PAR_IN <= '0;
        @(posedge CLK);
        @(posedge CLK);
        RESET <= '1;
        @(posedge CLK);
        PAR_IN <= 16'b1100_0101_1010_1111;
        repeat(10) @(posedge CLK);
        PAR_IN <= 16'b1111_1111_0000_0000;
        repeat(10) @(posedge CLK);
        PAR_IN <= 16'b1111_0000_0000_1111;
        repeat(10) @(posedge CLK);
        PAR_IN <= 16'b1100_1100_0011_0011;
        repeat(10) @(posedge CLK);
        PAR_IN <= 16'b1000_1000_0001_0001;
        repeat(10) @(posedge CLK);
        PAR_IN <= 16'b1010_1000_0001_0101;
        repeat(10) @(posedge CLK);
        PAR_IN <= 16'b1010_1001_1001_0101;
        repeat(10) @(posedge CLK);
        PAR_IN <= '0;
        repeat(60) @(posedge CLK);
        $finish;
    end
endmodule
