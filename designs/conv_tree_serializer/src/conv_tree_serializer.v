module conv_tree_serializer (CLK,SERIAL_OUT,PAR_IN1,PAR_IN2,PAR_IN3,PAR_IN4,PAR_IN5,PAR_IN6,PAR_IN7,PAR_IN8);
    input CLK;
    //input RESET;
    output reg SERIAL_OUT;
    input PAR_IN1,PAR_IN2,PAR_IN3,PAR_IN4,PAR_IN5,PAR_IN6,PAR_IN7,PAR_IN8;

    reg [3:0] IN1_S1;
    reg [1:0] IN1_S2;

    wire [7:0] INT_IN;

    assign INT_IN[0] = PAR_IN1;
    assign INT_IN[1] = PAR_IN2;
    assign INT_IN[2] = PAR_IN3;
    assign INT_IN[3] = PAR_IN4;
    assign INT_IN[4] = PAR_IN5;
    assign INT_IN[5] = PAR_IN6;
    assign INT_IN[6] = PAR_IN7;
    assign INT_IN[7] = PAR_IN8;

    generate
        for (genvar i=0; i<4; i++) begin
            conv_serializer S1(
                .CLK(CLK),
                .SERIAL_OUT(IN1_S1[i]),
                .PAR_IN1(INT_IN[i*2]),
                .PAR_IN2(INT_IN[i*2+1])
            );
        end

        for (genvar j=0; j<2; j++) begin
            conv_serializer S2(
                .CLK(CLK),
                .SERIAL_OUT(IN1_S2[j]),
                .PAR_IN1(IN1_S1[j*2]),
                .PAR_IN2(IN1_S1[j*2+1])
            );
        end
    endgenerate

    conv_serializer S3(
        .CLK(CLK),
        .SERIAL_OUT(SERIAL_OUT),
        .PAR_IN1(IN1_S2[0]),
        .PAR_IN2(IN1_S2[1])
    );

    
endmodule