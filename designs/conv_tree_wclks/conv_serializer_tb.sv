module conv_serializer_tb ();
    logic CLK, RESET, SERIAL_OUT, PAR_IN1,
    PAR_IN2;

    conv_serializer dut (.*);

    parameter CLOCK_PERIOD=100;
    initial begin
		CLK <=1'b0;
		forever #(CLOCK_PERIOD/2) CLK <= ~CLK;
	end

    initial begin
        $vcdpluson;
        $vcdplusmemon;
        RESET <= '0;
        @(posedge CLK);
        RESET <= '1;
        PAR_IN1 <= '0;
        PAR_IN2 <= '0;
        @(posedge CLK);
        PAR_IN1 <= '1;
        PAR_IN2 <= '1;
        @(posedge CLK);
        PAR_IN1 <= '0;
        PAR_IN2 <= '0;
        repeat(5) @(posedge CLK);
        $finish;
    end
endmodule

