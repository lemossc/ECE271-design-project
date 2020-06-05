// VGACounter: Implements the VGA timing specification logic in conjunction with logic for the box coordinates.
module VGATimingLogic(input  logic clock, 
//							 input  logic [9:0] xPos, yPos,
							 output logic vSync, hSync,
							 output logic [9:0] x, y);

	localparam h_a = 96, h_b = 48, h_c = 640, h_d = 16,
				  v_a = 2 , v_b = 33, v_c = 480, v_d = 10,
			     H_MAX = h_a + h_b + h_c + h_d,
			     V_MAX = v_a + v_b + v_c + v_d;

	// Track current x and y
	logic [9:0] xPos = 300;
	logic [9:0] yPos = 200;

	always_ff @(posedge clock) begin
		// Generate sync signals when in sync
		hSync <= ~((xPos >= h_c + h_d) && (xPos < h_a + h_c + h_d));
		vSync <= ~((yPos >= v_c + v_d) && (yPos < v_a + v_c + v_d));

		if(xPos == H_MAX && yPos == V_MAX) begin // Reached end of screen
			yPos <= 0;
			xPos <= 0;
		end
		else if(xPos == H_MAX) begin  // New line
			yPos <= yPos + 1;
			xPos <= 0;
		end
		else  // Otherwise increment x
			xPos <= xPos + 1;
	end

	assign x = xPos;
	assign y = yPos;

endmodule

//// VGACounter: Implements the VGA timing specification logic for HSync and VSync.
//module VGATimingLogic#(parameter	h_a = 96, h_b = 48, h_c = 640, h_d = 16,
//											v_a = 2 , v_b = 33, v_c = 480, v_d = 10)
//							 (input  logic clock, 
//							  input  logic [9:0] hCount, vCount,
//							  output logic vSync, hSync);
//
////	localparam H_MAX = h_a + h_b + h_c + h_d,
////				  V_MAX = v_a + v_b + v_c + v_d;
//
//	always_ff @(posedge clock) begin
//		// Generate sync signals when in sync
//		hSync <= ~((hCount >= h_c + h_d) && (hCount < h_a + h_c + h_d));
//		vSync <= ~((vCount >= v_c + v_d) && (vCount < v_a + v_c + v_d));
//
//	end
//
//endmodule