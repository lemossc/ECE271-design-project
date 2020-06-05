// BoxDrawer: Draws a box with given colors on a VGA monitor.
module BoxDrawer#(parameter RES_WIDTH = 640, RES_HEIGHT = 480)
					 (input  logic clock,
					  input  logic [3:0] red, green, blue,
					  input  logic [9:0] boxX, boxY, BOX_SIZE, x, y,
					  output logic [3:0] r, g, b);
				 
//	localparam RES_WIDTH = 640, RES_HEIGHT = 480;
	
	// Valid location logic variables (in monitor resolution and within domain of the box)
	//logic inMonitorResolution = 0, minBoxDomainCriterion = 0, maxBoxDomainCriterion = 0;
	
	// Fills in a pixel with the input color if in (x,y) is a valid coordinate. Otherwise, draws a black pixel.
	always_ff @(posedge clock) begin
	
		// inMonitorResolution 	<= (x < RES_WIDTH) && (y < RES_HEIGHT);
		// minBoxDomainCriterion <= (x > boxX) && (y > boxY);
		// maxBoxDomainCriterion <= (x < boxX + BOX_SIZE) && (y < boxY + BOX_SIZE);
		
		if ((x < RES_WIDTH) && (y < RES_HEIGHT) && 
			 (x > boxX) && (y > boxY) && 
			 (x < boxX + BOX_SIZE) && (y < boxY + BOX_SIZE)) 
			begin
				r <= red;
				g <= green;
				b <= blue;
			end
		else begin
			r <= 4'b0;
			g <= 4'b0;
			b <= 4'b0;
		end
	end
		
endmodule