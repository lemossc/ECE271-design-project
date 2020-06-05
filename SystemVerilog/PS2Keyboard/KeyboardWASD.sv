// KeyboardMovementLogic: handles the movement logic when a WASD key is pressed
module KeyboardWASD(input  logic clock, 
						  input 	logic data,
						  output logic [1:0] x, y);

	localparam UP = 8'h1D, DOWN = 8'h1B, LEFT = 8'h1C, RIGHT = 8'h23;  // PS2 key code for W, S, A, and D (found here: https://techdocs.altium.com/display/FPGA/PS2+Keyboard+Scan+Codes)
			
	logic [7:0] dataInput = 8'b0;

	logic [3:0] count = 0;	// Count of incoming bits
	logic [3:0] parity = 0;	// Number of ones

	// Output value storage: 0 = up/left, 1 = down/right, 2 = stop
	logic [1:0] upDown = 2; 	// y
	logic [1:0] leftRight = 2; // x

	logic isValidInput = 0;	// Tracks whether input is valid
	logic keyRelease = 0;	// Input F0 indicates key release

	always_ff @(negedge clock) begin
		if (count == 0)  // Only increment count at start
			count <= count + 1;
		else if (count == 9) begin
			count <= count + 1;
			
			// Validate input based on number of ones and parity bit (odd total)
			isValidInput <= (parity[0] == ~data);
		end
		
		else if (count == 10) begin 	// Ending count
			// Movement logic
			if (isValidInput) begin 															// Movement Status	Input Command	  Output
				if (keyRelease) begin
					if (upDown == 2 && dataInput == UP)				upDown <= 0;	// 1) not moving		2) move up		: move up
					else if (upDown == 0 && dataInput == UP)		upDown <= 2;	// 1) moving up		2) move up 		: stop
					else if (upDown == 2 && dataInput == DOWN)	upDown <= 1;	// 1) not moving		2) move down 	: move down
					else if (upDown == 1 && dataInput == DOWN)	upDown <= 2; 	// 1) moving down 	2) move down	: stop		
				end	
				else if (~keyRelease) begin														// Movement Status	Input Command	  Output
					if (leftRight == 2 && dataInput == LEFT)			leftRight <= 0; 	// 1) not moving		2) move left	: move left
					else if (leftRight == 0 && dataInput == LEFT)	leftRight <= 2; 	// 1) moving left		2) move left	: stop
					else if (leftRight == 2 && dataInput == RIGHT)	leftRight <= 1;	// 1) not moving 		2) move right	: move right	 
					else if (leftRight == 1 && dataInput == RIGHT)	leftRight <= 2;	// 1) moving right	2) move right	: stop
				end
			
				// Get code for key release
				if (dataInput == 8'hF0) 
					keyRelease <= 1;
				else 
					keyRelease <= 0;
			end

			// Reinitialize
			parity <= 0;
			count <= 0;
			dataInput <= 8'd0;
			isValidInput <= 0;
		end
		
		else begin	// Typical PS/2 behavior
			// Track number of ones (parity) and total count
			parity <= parity + data;
			count <= count + 1;

			if (data) begin
				dataInput = RIGHT;
				dataInput = UP;
			end
//			else begin		 		
//				dataInput = LEFT;
//				dataInput = DOWN;
//			end
			//dataInput <= (dataInput >> 1) + (data * 128);	// Shift data input bits over 1, filling in spaces with zeros, then sum with the data input * 128
		end
	end

	// Output
	assign x = leftRight;
	assign y = upDown;

endmodule