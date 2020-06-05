// BoxUnit: Contains the combinational logic for the movement of the box that displays on the VGA monitor.
// 			Checks bounds of screen before moving the box. If a the box collides with the edge of the screen, it changes colors.
module BoxUnit#(parameter BOX__SIZE = 40)
					(input  logic vSync, 
					 input  logic [1:0] moveX, moveY,	// 0 = up/left, 1 = down/right, 2 = stop	
					 output logic [3:0] red, green, blue,
					 output logic [9:0] boxX, boxY, BOX_SIZE);
	
	localparam up = 0, down = 1, left = 0, right = 1, stop = 2;
	localparam RES_WIDTH = 640, RES_HEIGHT = 480;
	
	// Box's X and Y position, defaults to center of screen (10 bits because of width resolution being 640 [10 1000 0000])
	logic [9:0] xPos = 0;
	logic [9:0] yPos = 0;

	// Box color, defaults to red (potential area for interactivity in the future)
	logic [3:0] r = 4'b1111;
	logic [3:0] g = 4'b0000;
	logic [3:0] b = 4'b0000;
	
	always_ff @(posedge vSync) begin
	
		// Left/right screen bound check
		//		exceedLeftBound  <= (moveX == 0) && (xPos == 0);
		//		exceedRightBound <= (moveX == 1) && (xPos == RES_WIDTH - BOX_SIZE);
		if(~((moveX == left)  && (xPos == 0)) && ~((moveX == right) && (xPos == RES_WIDTH - BOX_SIZE))) 
			begin 
			
				// Horizontal collision check (swaps colors on collision with a side)
				//		leftCollision <= (moveX == 0) && (xPos - 1 == 0);
				//		rightCollsion <= (moveX == 1) && (xPos + 1 == RES_WIDTH - BOX_SIZE);		
				if((moveX == left)  && (xPos - 1 == 0) || (moveX == right) && (xPos + 1 == RES_WIDTH - BOX_SIZE))
					begin 
						r <= g;
						g <= b;
						b <= r;
			end

			// Increment position
			case(moveX)
				0: xPos <= xPos - 1; //left
				1: xPos <= xPos + 1; //right
			endcase
		end


		// Screen bound check
		//		exceedUpperBound <= (moveY == 0) && (yPos == 0);
		//		exceedLowerBound <= (moveY == 1) && (yPos == RES_HEIGHT - BOX_SIZE);
		if(~((moveY == up) && (yPos == 0)) && ~((moveY == down) && (yPos == RES_HEIGHT - BOX_SIZE)))
			begin
	
			// Vertical collision check (swaps colors on side collision with a side)
			//		upperCollision <= (moveY == 0) && (yPos - 1 == 0);
			//		lowerCollision <= (moveY == 1) && (yPos + 1 == RES_HEIGHT - BOX_SIZE);
			if((moveY == up) && (yPos - 1 == 0) || (moveY == down) && (yPos + 1 == RES_HEIGHT - BOX_SIZE))
				begin  
					r <= g;
					g <= b;
					b <= r;
				end

			// Increment position
			case(moveY)
				0: yPos <= yPos - 1; //down
				1: yPos <= yPos + 1; //up
			endcase
		end
	end

	assign boxX = xPos;
	assign boxY = yPos;
	assign BOX_SIZE = BOX__SIZE; //consistent constant throughout design
	assign red 	 = r;
	assign green = g;
	assign blue  = b;

endmodule