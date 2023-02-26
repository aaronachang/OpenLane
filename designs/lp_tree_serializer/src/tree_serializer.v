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
    logic [STAGES_NUM-1:0] CLKS;

    assign CLKS[0] = CLK;
    assign INT_STAGE[0] = PAR_IN;
    assign SERIAL_OUT = INT_STAGE[STAGES_NUM][0];

    generate
        for (genvar stage=1; stage<=STAGES_NUM; stage++) begin : stage_gen
            if (stage < STAGES_NUM) begin
                clk_divider #(.DIVISIONS(2**(STAGES_NUM-1-stage))) clks ( //FIX
                    .clk_i(CLK),
                    .rst_i(RESET),
                    .clk_o(CLKS[STAGES_NUM-stage])
                );
            end
            localparam MUX_NUM = INPUTS_NUM >> stage;
            for (genvar i=0; i<MUX_NUM; i++) begin : mux_gen
                base_serializer S(
                    .CLK(CLKS[STAGES_NUM-stage]),
                    .SERIAL_OUT(INT_STAGE[stage][i]),
                    .PAR_IN1(INT_STAGE[stage-1][i*2]),
                    .PAR_IN2(INT_STAGE[stage-1][i*2+1])
                );
            end
        end
    endgenerate
endmodule