module NESDataReceiverDecoder#(parameter N = 4)
										(input logic [N-1:0] controllerState,
										input logic data, reset_n,
										output logic [(N*2)-1:0] readButtons); 

	always_ff @ (posedge controllerState[0], negedge reset_n)
		if(!reset_n) readButtons <= 8'b0;
		else case(controllerState[3:0])
			4'h1: 	readButtons[7] <= data;	//a button
			4'h3: 	readButtons[6] <= data;	//b button
			4'h5: 	readButtons[5] <= data;	//select button
			4'h7: 	readButtons[4] <= data;	//start button
			4'h9: 	readButtons[3] <= data;	//up button
			4'hB: 	readButtons[2] <= data;	//down button
			4'hD: 	readButtons[1] <= data;	//left button
			4'hF: 	readButtons[0] <= data;	//right button
			default: readButtons <= readButtons;
		endcase

endmodule