// This tests post-apr OpenSerdes with random inputs
module serdes_tb ();

    logic CLK, RESET;
    logic SERIAL_OUT;
    logic [15:0] PAR_IN;
    logic [15:0] pre_PAR_IN;
    
    logic [5:0] COUNT;
    supply1 VPWR;
    supply0 VGND;

    serializer_unit_cell_16 dut (.*);
    
    assign PAR_IN[0] = pre_PAR_IN[15];
    assign PAR_IN[1] = pre_PAR_IN[14];
    assign PAR_IN[2] = pre_PAR_IN[13];
    assign PAR_IN[3] = pre_PAR_IN[12];
    assign PAR_IN[4] = pre_PAR_IN[11];
    assign PAR_IN[5] = pre_PAR_IN[10];
    assign PAR_IN[6] = pre_PAR_IN[9];
    assign PAR_IN[7] = pre_PAR_IN[8];
    assign PAR_IN[8] = pre_PAR_IN[7];
    assign PAR_IN[9] = pre_PAR_IN[6];
    assign PAR_IN[10] = pre_PAR_IN[5];
    assign PAR_IN[11] = pre_PAR_IN[4];
    assign PAR_IN[12] = pre_PAR_IN[3];
    assign PAR_IN[13] = pre_PAR_IN[2];
    assign PAR_IN[14] = pre_PAR_IN[1];
    assign PAR_IN[15] = pre_PAR_IN[0];
    
    parameter CLOCK_PERIOD=100;
    initial begin
		CLK <=1'b0;
		forever #(CLOCK_PERIOD/2) CLK <= ~CLK;
	end
    
    parameter RUN_CYCLES = 50;
    parameter CLEAR_CYCLES = 7;
    integer i, file;
    initial begin
        file = $fopen("serdes.txt", "w");
        $sdf_annotate("../src/apr/serdes/serializer_unit_cell_16.sdf");
        $vcdplusfile("serdes.vcd.vpd");
        $vcdpluson;
        RESET <= '0;
        pre_PAR_IN <= '0;
        @(posedge CLK);
        RESET <= '1;
        @(posedge CLK);
        pre_PAR_IN <= 16'b1100_0101_1010_1111;
        repeat(RUN_CYCLES) @(posedge CLK);
        pre_PAR_IN <= '0;
        repeat(CLEAR_CYCLES) @(posedge CLK);
        for (i=0;i<10;i++) begin
            pre_PAR_IN <= $random; 
            @(posedge CLK);
            $fwrite(file,"%b\t", pre_PAR_IN);
            repeat(RUN_CYCLES) begin
                $fwrite(file,"%b", SERIAL_OUT);
                @(posedge CLK);
            end
            pre_PAR_IN <= '0; 
            repeat(CLEAR_CYCLES) begin
                $fwrite(file,"%b", SERIAL_OUT);
                @(posedge CLK);
            end
                $fwrite(file,"\n");
        end
        $finish;
    end
endmodule
