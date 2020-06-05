// ClockDivider: Divides the input clock by two.
module ClockDivider(input  logic clock,
						  output logic clockDivided);

	logic count = 0;

	always_ff @(posedge clock) begin
		if (count == 1) begin
			clockDivided <= 1;
			count <= 0;
		end
		else begin
			clockDivided <= 0;
			count <= count + 1;
		end
	end
	
endmodule