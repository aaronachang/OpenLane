module lp_tree_serializer #(
    parameter INPUTS_NUM = 16 //TODO: actually support inputs other than 16
        )(
        input CLK
        ,input RESET
        ,output logic SERIAL_OUT
        ,input [INPUTS_NUM-1:0] PAR_IN
    );
    
    logic [1:0] mux_out;
    logic [3:0] last_stage_inputs;
    logic [1:0] CLKS;
    logic [1:0] RSTS;
    logic [INPUTS_NUM-1:0] INT_INPUTS;

    clk_divider clkdiv0 (
        .clk_i(CLK),
        .rst_i(RESET),
        .init_i(1'b1),
        .clk0_o(CLKS[0]),
        .clk90_o(CLKS[1]),
        .rst0_o(RSTS[0]),
        .rst90_o(RSTS[1])
    );
    tree_serializer #(.INPUTS_NUM(INPUTS_NUM/2)) S0(
        .CLK(CLKS[0]),
        .RESET(RSTS[0]),
        .SERIAL_OUT(mux_out[0]),
        .PAR_IN(INT_INPUTS[INPUTS_NUM/2-1:0])
    );
    tree_serializer #(.INPUTS_NUM(INPUTS_NUM/2)) S1(
        .CLK(CLKS[1]),
        .RESET(RSTS[1]),
        .SERIAL_OUT(mux_out[1]),
        .PAR_IN(INT_INPUTS[INPUTS_NUM-1:INPUTS_NUM/2])
    );
    base_serializer last_stage(
        .CLK(CLK),
        .SERIAL_OUT(SERIAL_OUT),
        .PAR_IN1(last_stage_inputs[2]),
        .PAR_IN2(last_stage_inputs[3])
    );

    assign INT_INPUTS[5] = PAR_IN[5];
    assign INT_INPUTS[7] = PAR_IN[7];
    assign INT_INPUTS[11] = PAR_IN[11];
    assign INT_INPUTS[13] = PAR_IN[13];
    assign INT_INPUTS[15] = PAR_IN[15];

    always_latch begin
        if (CLK) begin
            last_stage_inputs[0] = mux_out[0];
            last_stage_inputs[1] = last_stage_inputs[1];
            last_stage_inputs[2] = last_stage_inputs[2];
            last_stage_inputs[3] = last_stage_inputs[1];
        end else begin
            INT_INPUTS[1] = PAR_IN[1];
            INT_INPUTS[3] = PAR_IN[3];
            INT_INPUTS[4] = PAR_IN[4];
            INT_INPUTS[6] = PAR_IN[6];
            INT_INPUTS[9] = PAR_IN[9];
            INT_INPUTS[10] = PAR_IN[10];
            INT_INPUTS[12] = PAR_IN[12];
            INT_INPUTS[14] = PAR_IN[14];
            last_stage_inputs[0] = last_stage_inputs[0];
            last_stage_inputs[1] = mux_out[1];
            last_stage_inputs[2] = last_stage_inputs[0];
            last_stage_inputs[3] = last_stage_inputs[3];
        end
    end

    always_ff @(posedge CLK) begin
        INT_INPUTS[0] <= PAR_IN[0];
        INT_INPUTS[2] <= PAR_IN[2];
        INT_INPUTS[8] <= PAR_IN[8];
    end
endmodule
