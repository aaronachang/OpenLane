module conv_serializer (
        input CLK
        ,input RESET
        ,output logic SERIAL_OUT
        ,input PAR_IN1
        ,input PAR_IN2
    );
    logic IN1_L1, IN1_L2, IN1_L3, IN1_L4, IN1_L5;

    assign SERIAL_OUT = (CLK) ? IN1_L5 : IN1_L3;

    always_latch begin
        if (CLK) begin
            IN1_L1 = (RESET) ? IN1_L1 : 1'b0;
            IN1_L2 = (RESET) ? IN1_L1 : 1'b0;
            IN1_L3 = (RESET) ? IN1_L3 : 1'b0;
            IN1_L4 = (RESET) ? IN1_L4 : 1'b0;
            IN1_L5 = (RESET) ? IN1_L4 : 1'b0;
        end else begin
            IN1_L1 = (RESET) ? PAR_IN1 : 1'b0;
            IN1_L2 = (RESET) ? IN1_L2 : 1'b0;
            IN1_L3 = (RESET) ? IN1_L2 : 1'b0;
            IN1_L4 = (RESET) ? PAR_IN2 : 1'b0;
            IN1_L5 = (RESET) ? IN1_L5 : 1'b0;
        end
    end
endmodule

module conv_tree_serializer #(
    parameter INPUTS_NUM = 32*8,
    parameter STAGES_NUM = $clog2(INPUTS_NUM)
    )(
        input CLK
        ,input RESET
        ,output logic SERIAL_OUT
        ,input [INPUTS_NUM-1:0] PAR_IN
    );
    
    logic [STAGES_NUM-1:0] CLKS;
    assign CLKS[0] = CLK;
    logic [INPUTS_NUM-1:0] INT_STAGE [STAGES_NUM:0];

    assign INT_STAGE[0] = PAR_IN;
    assign SERIAL_OUT = INT_STAGE[STAGES_NUM][0];

    generate
        for (genvar stage=1; stage<=STAGES_NUM; stage++) begin : stage_gen
            if (stage < STAGES_NUM) begin
                clk_divider #(.DIVISIONS(2**(STAGES_NUM-1-stage))) clks (
                    .clk_i(CLK),
                    .rst_i(RESET),
                    .clk_o(CLKS[STAGES_NUM-stage])
                );
            end
            localparam MUX_NUM = INPUTS_NUM >> stage;
            for (genvar i=0; i<MUX_NUM; i++) begin : mux_gen
                conv_serializer S(
                    .CLK(CLKS[STAGES_NUM-stage]),
                    .RESET(RESET),
                    .SERIAL_OUT(INT_STAGE[stage][i]),
                    .PAR_IN1(INT_STAGE[stage-1][i*2]),
                    .PAR_IN2(INT_STAGE[stage-1][i*2+1])
                );
            end
        end
    endgenerate
endmodule
