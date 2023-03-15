// This tests post-apr 8 by 32-bit OpenSERDES module with random inputs
module serdes32x8_tb ();
    logic CLK, RESET, SERIAL_OUT;
    logic [31:0] PAR_IN;
    logic [31:0] PAR_IN1;
    logic [31:0] PAR_IN2;
    logic [31:0] PAR_IN3;
    logic [31:0] PAR_IN4;
    logic [31:0] PAR_IN5;
    logic [31:0] PAR_IN6;
    logic [31:0] PAR_IN7;
    logic [31:0] PAR_IN8;
    logic [31:0] pre_PAR_IN;
    supply1 VPWR;
    supply0 VGND;

    integer j;
    always_comb begin
        for (j=0;j<32;j++) begin
            PAR_IN[j] = pre_PAR_IN[31-j];
        end
    end

    assign PAR_IN1 = PAR_IN;
    assign PAR_IN2 = PAR_IN;
    assign PAR_IN3 = PAR_IN;
    assign PAR_IN4 = PAR_IN;
    assign PAR_IN5 = PAR_IN;
    assign PAR_IN6 = PAR_IN;
    assign PAR_IN7 = PAR_IN;
    assign PAR_IN8 = PAR_IN;
    serializer_unit_cell dut (.*);
    
    parameter CLOCK_PERIOD=100;
    initial begin
		CLK <=1'b0;
		forever #(CLOCK_PERIOD/2) CLK <= ~CLK;
	end

    parameter RUN_CYCLES = 64;
    parameter CLEAR_CYCLES = 7;
    integer i, file;
    initial begin
        file = $fopen("serdes_output.txt", "w");
        $vcdplusfile("serdes32x8.vcd.vpd");
        $vcdpluson;
        RESET <= '0;
        pre_PAR_IN <= '0; @(posedge CLK);
        RESET <= '1;
        @(posedge CLK);
        pre_PAR_IN <= 16'b1100_0101_1010_1111; repeat(RUN_CYCLES) @(posedge CLK);
        pre_PAR_IN <= '0; repeat(CLEAR_CYCLES) @(posedge CLK);
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
