module tree_serializer_tb ();
    logic CLK, RESET, SERIAL_OUT;
    logic [7:0] PAR_IN;

    //tree_serializer dut (.*);
    lp_tree_serializer dut (.*);
    
    parameter CLOCK_PERIOD=100;
    initial begin
		CLK <=1'b0;
		forever #(CLOCK_PERIOD/2) CLK <= ~CLK;
	end

    initial begin
        $vcdplusfile({"tree_serializer.vcd.vpd"});
        $vcdpluson;
        RESET <= '0;
        PAR_IN <= '0;
        @(posedge CLK);
        RESET <= '1;
        @(posedge CLK);
        PAR_IN <= 8'b1010_1111;
        repeat(10) @(posedge CLK);
        PAR_IN <= '0;
        repeat(20) @(posedge CLK);
        $finish;
    end
endmodule
