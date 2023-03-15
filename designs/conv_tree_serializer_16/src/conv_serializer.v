module conv_serializer (
        input CLK
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
        end else begin
            IN1_L1 = PAR_IN1;
            IN1_L2 = IN1_L2;
            IN1_L3 = IN1_L2;
            IN1_L4 = PAR_IN2;
            IN1_L5 = IN1_L5;
        end
    end
endmodule