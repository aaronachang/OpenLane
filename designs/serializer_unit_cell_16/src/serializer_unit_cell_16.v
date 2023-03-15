module serializer_unit_cell_16 (CLK,RESET,SERIAL_OUT,PAR_IN);
 
	input CLK,RESET;
	output logic SERIAL_OUT;
	input [15:0] PAR_IN;
	logic [5:0] COUNT;

always @(posedge CLK or negedge RESET)
begin
	if(RESET == 0)
	begin
	    SERIAL_OUT <= 0;
		COUNT <= 6'd0;
	end
	else begin
		SERIAL_OUT <= PAR_IN[COUNT];
		if (COUNT >= 6'd31)
			begin
				COUNT <= 6'd0;
			end
		else
			begin
				COUNT <= COUNT+6'd1;
			end
    end
end

endmodule