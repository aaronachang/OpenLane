module conv_serializer (CLK,SERIAL_OUT,PAR_IN1,PAR_IN2);
    input CLK;
    //input RESET;
    output reg SERIAL_OUT;
    input PAR_IN1,PAR_IN2;

    reg IN1_L1, IN1_L2, IN1_L3, IN1_L4, IN1_L5;

    assign SERIAL_OUT = (CLK) ? IN1_L5 : IN1_L3;

    always_latch begin
        /*if (RESET == 0) begin
            IN1_L1 = 1'b0;
            IN1_L3 = 1'b0;
            IN1_L4 = 1'b0;
        end
        else*/ if (!CLK) begin
            IN1_L1 = PAR_IN1;
            IN1_L3 = IN1_L2;
            IN1_L4 = PAR_IN2;
        end
    end

    always_latch begin
        /*if (RESET == 0) begin
            IN1_L2 = 1'b0;
            IN1_L5 = 1'b0;
        end
        else*/ if (CLK) begin
            IN1_L2 = IN1_L1;
            IN1_L5 = IN1_L4;
        end
    end
endmodule