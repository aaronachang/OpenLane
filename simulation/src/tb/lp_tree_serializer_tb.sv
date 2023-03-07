module lp_tree_serializer_tb ();
    logic CLK, RESET, SERIAL_OUT;
    logic [15:0] PAR_IN;
    supply1 VPWR;
    supply0 VGND;
    logic [15:0] pre_PAR_IN;

    lp_tree_serializer dut (.*);
    
    parameter CLOCK_PERIOD=100;
    initial begin
		CLK <=1'b0;
		forever #(CLOCK_PERIOD/2) CLK <= ~CLK;
	end

    assign PAR_IN[0] = pre_PAR_IN[15];
    assign PAR_IN[1] = pre_PAR_IN[7];
    assign PAR_IN[2] = pre_PAR_IN[11];
    assign PAR_IN[3] = pre_PAR_IN[3];
    assign PAR_IN[4] = pre_PAR_IN[13];
    assign PAR_IN[5] = pre_PAR_IN[5];
    assign PAR_IN[6] = pre_PAR_IN[9];
    assign PAR_IN[7] = pre_PAR_IN[1];
    assign PAR_IN[8] = pre_PAR_IN[14];
    assign PAR_IN[9] = pre_PAR_IN[6];
    assign PAR_IN[10] = pre_PAR_IN[10];
    assign PAR_IN[11] = pre_PAR_IN[2];
    assign PAR_IN[12] = pre_PAR_IN[12];
    assign PAR_IN[13] = pre_PAR_IN[4];
    assign PAR_IN[14] = pre_PAR_IN[8];
    assign PAR_IN[15] = pre_PAR_IN[0];

    integer i;
    initial begin
        $vcdplusfile("lp_tree_serializer.vcd.vpd");
        $vcdpluson;
        RESET <= '0;
        pre_PAR_IN <= '0;
        @(posedge CLK);
        RESET <= '1;
        @(posedge CLK);
        pre_PAR_IN <= 16'b1100_0101_1010_1111;
        repeat(21) @(posedge CLK);
        pre_PAR_IN <= '0;
        repeat(7) @(posedge CLK);
        for (i=0;i<10;i++) begin
            pre_PAR_IN <= $random;
            repeat(21) @(posedge CLK);
            pre_PAR_IN <= '0;
            repeat(7) @(posedge CLK);
        end
        $finish;
    end
endmodule
