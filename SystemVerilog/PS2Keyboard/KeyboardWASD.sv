// KeyboardMovementLogic: handles the movement logic when a WASD key is pressed
module KeyboardWASD(input  logic clock, 
						  input 	logic data,
						  output logic [1:0] leftRightOutput, upDownOutput);

	localparam UP = 8'h1D, DOWN = 8'h1B, LEFT = 8'h1C, RIGHT = 8'h23;  // PS2 key code for W, S, A, and D (found here: https://techdocs.altium.com/display/FPGA/PS2+Keyboard+Scan+Codes)
	localparam up = 0, down = 1, left = 0, right = 1, stop = 2;			 // movement status
	
	logic [7:0] incomingBits = 8'b0;	// Stores the information from data. Start bit is always 0.

	logic [3:0] count = 0;			// Count of incoming bits. (start, data0, data1, ..., data7, parity)
	logic [3:0] numberOfOnes = 0;	// Helps determine parity

	// Output value storage: 0 = up/left, 1 = down/right, 2 = stop
	logic [1:0] upDown = 2; 	// y
	logic [1:0] leftRight = 2; // x

	logic isValidInput = 0;	// Tracks whether input is valid
	logic keyRelease = 0;	// Input F0 indicates key release

	always_ff @(negedge clock) begin
		if (count == 0) 
			count <= count + 1;
		else if (count == 9) begin	// Parity bit
				count <= count + 1;			
				isValidInput <= (numberOfOnes % 2 == data); // Validate input based on number of ones and parity bit (odd total)
			end	
		else if (count == 10) begin // Last count bit
			// Movement logic
			if (isValidInput) begin 																			// Movement Status	Input Command	  Output
				if (keyRelease) begin
					if 	  (upDown    == up    && incomingBits == UP)	 	upDown <= stop;		// 1) moving up		2) move up 		: stop
					else if (upDown    == down  && incomingBits == DOWN) 	upDown <= stop; 		// 1) moving down 	2) move down	: stop
					else if (leftRight == left  && incomingBits == LEFT)	leftRight <= stop; 	// 1) moving left		2) move left	: stop
					else if (leftRight == right && incomingBits == RIGHT)	leftRight <= stop;	// 1) moving right	2) move right	: stop
				end	
				else if (~keyRelease) begin																	
					if 	  (upDown    == stop  && incomingBits == UP)	 	upDown <= up;			// 1) not moving		2) move up		: move up
					else if (upDown    == stop  && incomingBits == DOWN)  upDown <= down;		// 1) not moving		2) move down 	: move down
					else if (leftRight == stop  && incomingBits == LEFT)	leftRight <= left; 	// 1) not moving		2) move left	: move left
					else if (leftRight == stop  && incomingBits == RIGHT)	leftRight <= down;	// 1) not moving 		2) move right	: move right	 		
				end
			
				// PS2 code for key release
				if (incomingBits == 8'hF0) 
					keyRelease <= 1;
				else 
					keyRelease <= 0;
			end

			// Reinitialize
			numberOfOnes <= 0;
			count <= 0;
			incomingBits <= 8'd0;
			isValidInput <= 0;
		end
		
		else begin	// Typical PS/2 behavior (if count != 0 && count != 9 && count != 10)
			// Track number of ones (for help with parity) and total count
			numberOfOnes <= numberOfOnes + data;
			count <= count + 1;

			// Load data
//			if (data) begin
//				incomingBits = RIGHT;
//				incomingBits = UP;
//			end
//			else begin		 		
//				incomingBits = LEFT;
//				incomingBits = DOWN;
//			end
			incomingBits <= (incomingBits >> 1) + (data * 128);	// Shift data input bits over 1, filling in spaces with zeros, then sum with the data input * 128
		end
	end

	// Output
	assign leftRightOutput = leftRight;
	assign upDownOutput = upDown;

endmodule