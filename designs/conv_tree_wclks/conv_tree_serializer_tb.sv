`define NUM_BITS 4
module conv_tree_serializer_tb ();
    logic CLK, RESET, SERIAL_OUT;
    
    logic [`NUM_BITS-1:0] PAR_IN;

    conv_tree_serializer #(.INPUTS_NUM(`NUM_BITS)) dut (.*);

    parameter CLOCK_PERIOD=100;
    initial begin
		CLK <=1'b0;
		forever #(CLOCK_PERIOD/2) CLK <= ~CLK;
	end

    initial begin
        $vcdplusfile({"conv_tree_tb.vcd.vpd"});
        $vcdpluson;
        RESET <= '0;
        PAR_IN <= '0;
        @(posedge CLK);
        RESET <= '1;
        @(posedge CLK);
        if (`NUM_BITS==16) PAR_IN <= 16'b1100_0101_1010_1111;
        else if (`NUM_BITS==8) PAR_IN <= 8'b1010_1111;
        else if (`NUM_BITS==4) PAR_IN <= 4'b1011;
        repeat(`NUM_BITS/2) @(posedge CLK);
        PAR_IN <= '0;
        repeat(20) @(posedge CLK);
        $finish;
    end
endmodule

