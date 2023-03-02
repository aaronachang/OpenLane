//`include "sky130_fd_sc_hd__fill_2.v"
`default_nettype wire
module serializer_tb ();
	parameter CLOCK_PERIOD=100;

    logic CLK,RESET,READY;
    logic SERIAL_OUT,INTERNAL_FINISH,COMPLETE;
    logic [31:0] PAR_IN1,PAR_IN2,PAR_IN3,PAR_IN4,PAR_IN5,PAR_IN6,PAR_IN7,PAR_IN8;
    
    logic [5:0] COUNT;
    logic [3:0] SAMPLE_COUNT;
    supply1 VPWR;
    supply0 VGND;
    
    /*
    // ============ pre-syn OpenSerdes ==========
    serializer_unit_cell_1 dut (.CLK, .RESET, .READY, .SERIAL_OUT, .INTERNAL_FINISH, .COMPLETE,
    .PAR_IN1, .PAR_IN2, .PAR_IN3, .PAR_IN4, .PAR_IN5, .PAR_IN6, .PAR_IN7, .PAR_IN8, 
    .COUNT, .SAMPLE_COUNT);
*/

    // =========== post-apr OpenSerdes ==========
    serializer_unit_cell dut (.CLK, .RESET, .READY, .SERIAL_OUT, .INTERNAL_FINISH, .COMPLETE,
    .PAR_IN1, .PAR_IN2, .PAR_IN3, .PAR_IN4, .PAR_IN5, .PAR_IN6, .PAR_IN7, .PAR_IN8, 
    .COUNT, .SAMPLE_COUNT,
    .VGND, .VPWR
    );

    // ========= tree serializer ========
    //conv_tree_serializer dut (.CLK, .RESET, .SERIAL_OUT,
    //    .PAR_IN({PAR_IN1, PAR_IN2, PAR_IN3, PAR_IN4, PAR_IN5, PAR_IN6, PAR_IN7, PAR_IN8}));
    
    initial begin
		CLK <=1'b0;
		forever #(CLOCK_PERIOD/2) CLK <= ~CLK;
	end

    initial begin
        $vcdplusfile("serializer.vpd");
        $vcdpluson;
        RESET <= '0;
        @(posedge CLK);
        RESET <= '1;
        PAR_IN1 <= 32'd4294967295;
        PAR_IN2 <= 32'd1073741823;
        PAR_IN3 <= 32'd2415919103;
        PAR_IN4 <= 32'd536870911;
        PAR_IN5 <= 32'd23456;
        PAR_IN6 <= 32'd12356;
        PAR_IN7 <= 32'd12456;
        PAR_IN8 <= 32'd1;
        READY <= '1;
        repeat(30) @(posedge CLK);// 20*16 = 
        PAR_IN1 <= 32'd2;
        PAR_IN2 <= 32'd3;
        PAR_IN3 <= 32'd4;
        PAR_IN4 <= 32'd5;
        repeat(250) @(posedge CLK);
        $finish;
    end
endmodule

        
