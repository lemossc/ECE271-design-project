module NESClockStateDecoder#(parameter N = 4)
									(input  logic [N-1:0] controllerState,
									 output logic NESClock);
										
	always_comb
		case (controllerState)
			4'h2: 	NESClock = 1;
			4'h4: 	NESClock = 1;
			4'h6: 	NESClock = 1;
			4'h8: 	NESClock = 1;
			4'ha: 	NESClock = 1;
			4'hC: 	NESClock = 1;
			4'hE: 	NESClock = 1;
			default: NESClock = 0;
		endcase
 
endmodule