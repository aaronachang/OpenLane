module base_serializer (
        input CLK
        ,output logic SERIAL_OUT
        ,input PAR_IN1
        ,input PAR_IN2
    );

    assign SERIAL_OUT = (CLK) ? PAR_IN1 : PAR_IN2;
endmodule