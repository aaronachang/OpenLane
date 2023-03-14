module conv_tree_serializer_16 #(
    parameter INPUTS_NUM = 16,
    localparam STAGES_NUM = $clog2(INPUTS_NUM)
    )(
        input CLK
        ,input RESET
        ,output logic SERIAL_OUT
        ,input [INPUTS_NUM-1:0] PAR_IN
    );
    
    logic [INPUTS_NUM-1:0] INT_STAGE [STAGES_NUM:0];
    logic [STAGES_NUM-1:0] CLKS;
    logic [STAGES_NUM-1:0] RSTS;

    assign CLKS[0] = CLK;
    assign RSTS[0] = RESET;
    assign INT_STAGE[0] = PAR_IN;
    assign SERIAL_OUT = INT_STAGE[STAGES_NUM][0];

    generate
        for (genvar stage=1; stage<=STAGES_NUM; stage++) begin : stage_gen
            if (stage < STAGES_NUM) begin
                clk_divider clks (
                    .clk_i(CLKS[stage-1]),
                    .rst_i(RSTS[stage-1]),
                    .clk_o(CLKS[stage]),
                    .rst_o(RSTS[stage])
                );
            end
            localparam MUX_NUM = INPUTS_NUM >> stage;
            for (genvar i=0; i<MUX_NUM; i++) begin : mux_gen
                conv_serializer S(
                    .CLK(CLKS[STAGES_NUM-stage]),
                    .SERIAL_OUT(INT_STAGE[stage][i]),
                    .PAR_IN1(INT_STAGE[stage-1][i*2]),
                    .PAR_IN2(INT_STAGE[stage-1][i*2+1])
                );
            end
        end
    endgenerate
endmodule