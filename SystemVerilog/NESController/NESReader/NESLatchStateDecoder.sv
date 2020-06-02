module NESLatchStateDecoder#(parameter N = 4)
									 (input  logic [N-1:0] controllerState,
									  output logic NESLatch);

	always_comb
		case(controllerState)
			4'h0: 	NESLatch = 1;
			default: NESLatch = 0;
		endcase

endmodule