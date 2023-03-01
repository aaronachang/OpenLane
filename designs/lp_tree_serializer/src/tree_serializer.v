module tree_serializer #(
    parameter INPUTS_NUM = 8,
    parameter STAGES_NUM = $clog2(INPUTS_NUM)
    )(
        input CLK
        ,input RESET
        ,output logic SERIAL_OUT
        ,input [INPUTS_NUM-1:0] PAR_IN
    );
    
    logic [INPUTS_NUM-1:0] INT_STAGE [STAGES_NUM:0];
    logic [INPUTS_NUM-2:0] CLKS;
    logic [(INPUTS_NUM-2)/2:0] RSTS;
    logic [1:0] extra_clks;

    assign CLKS[0] = CLK;
    assign RSTS[0] = RESET;
    assign INT_STAGE[0] = PAR_IN;
    assign SERIAL_OUT = INT_STAGE[STAGES_NUM][0];

    // for this generate block, stages are indexed smallest to largest
    generate
        for (genvar stage=1; stage<STAGES_NUM; stage++) begin : clk_gen
            localparam CLKDIV_NUM = 32'd1 << (stage-1);
            localparam OUT_INDEX = (32'd1 << stage)-1;
            for (genvar j=0; j<CLKDIV_NUM; j++) begin : clk_gen
                clk_divider clks (
                    .clk_i(CLKS[CLKDIV_NUM-1+j]),
                    .rst_i(RSTS[CLKDIV_NUM-1+(j/2)]),
                    .clk0_o(CLKS[OUT_INDEX+(j*2)]),
                    .clk90_o(CLKS[OUT_INDEX+(j*2)+1]),
                    .rst_o(RSTS[CLKDIV_NUM+j])
                );
            end
        end
    endgenerate
    
    // for this generate block, stages are indexed largest to smallest
    generate
        for (genvar stage=1; stage<=STAGES_NUM; stage++) begin : stage_gen
            localparam MUX_NUM = INPUTS_NUM >> stage;
            for (genvar i=0; i<MUX_NUM; i++) begin : mux_gen
                base_serializer S(
                    .CLK(CLKS[MUX_NUM-1+i]),
                    .SERIAL_OUT(INT_STAGE[stage][i]),
                    .PAR_IN1(INT_STAGE[stage-1][i*2]),
                    .PAR_IN2(INT_STAGE[stage-1][i*2+1])
                );
            end
        end
    endgenerate
endmodule
