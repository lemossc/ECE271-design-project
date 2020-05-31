module ClockSelect(input  logic up, down, left, right, clock0, clock1, clock2, clock3,
						 output logic selectedClock);

	logic [1:0] clockSelect;
    
	always_comb begin
		// Priority Encoder
		if 	  (!down)  clockSelect = 2'b00;
		else if (!left)  clockSelect = 2'b01;
		else if (!right) clockSelect = 2'b10;
		else if (!up)    clockSelect = 2'b11;
		else				  clockSelect = 2'b00;
     
	  // Mux4
		case(clockSelect)  		       
			2'd3: 	selectedClock = clock3; 	
			2'd2: 	selectedClock = clock2; 
			2'd1: 	selectedClock = clock1;      
			2'd0: 	selectedClock = clock0;      
			default: selectedClock = clock0;   
		endcase
	end
    
endmodule
