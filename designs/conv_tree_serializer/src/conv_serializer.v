module conv_serializer (
        input CLK
        //,input RESET
        ,output logic SERIAL_OUT
        ,input PAR_IN1
        ,input PAR_IN2
    );
    logic IN1_L1, IN1_L2, IN1_L3, IN1_L4, IN1_L5;

    assign SERIAL_OUT = (CLK) ? IN1_L5 : IN1_L3;

    always_latch begin
        if (CLK) begin
            IN1_L1 = IN1_L1;
            IN1_L2 = IN1_L1;
            IN1_L3 = IN1_L3;
            IN1_L4 = IN1_L4;
            IN1_L5 = IN1_L4;
            // IN1_L1 = (RESET) ? IN1_L1 : 1'b0;
            // IN1_L2 = (RESET) ? IN1_L1 : 1'b0;
            // IN1_L3 = (RESET) ? IN1_L3 : 1'b0;
            // IN1_L4 = (RESET) ? IN1_L4 : 1'b0;
            // IN1_L5 = (RESET) ? IN1_L4 : 1'b0;
        end else begin
            IN1_L1 = PAR_IN1;
            IN1_L2 = IN1_L2;
            IN1_L3 = IN1_L2;
            IN1_L4 = PAR_IN2;
            IN1_L5 = IN1_L5;
            // IN1_L1 = (RESET) ? PAR_IN1 : 1'b0;
            // IN1_L2 = (RESET) ? IN1_L2 : 1'b0;
            // IN1_L3 = (RESET) ? IN1_L2 : 1'b0;
            // IN1_L4 = (RESET) ? PAR_IN2 : 1'b0;
            // IN1_L5 = (RESET) ? IN1_L5 : 1'b0;
        end
    end
endmodule