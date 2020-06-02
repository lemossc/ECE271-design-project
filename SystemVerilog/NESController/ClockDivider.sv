//////////////////////////////////////////////////////////////////////////////////
// Company:        Oregon State University
// Engineer:       Matthew Shuman
// 
// Create Date:    05/10/2016 
// Design Name:    demo2016
// Module Name:    ClockDivider
// Project Name:   
// Target Devices: MachX02
// Tool versions:  Lattice Diamond 3.7
// Description:    Clock divider that reduces the 2.08 MHz clock to more useful frequencies.  The unused portions of the counter will be eliminated by the synthesizer.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

// Modified by Christopher LeMoss

module ClockDivider(
	input logic clock_10MHz,	// the clock driving the counter
	input logic reset_n,			// active low reset	
	output logic clock_5MHz, 	// 
	output logic clock_2500KHz,// 
	output logic clock_1250KHz,// 
	output logic clock_625KHz, // 
	output logic clock_312KHz, // 
	output logic clock_156KHz, // 
	output logic clock_78KHz, 	// 
	output logic clock_39KHz, 	// 
	output logic clock_19KHz, 	// 
	output logic clock_10KHz, 	// 
	output logic clock_5KHz, 	// 
	output logic clock_5120Hz, // 
	output logic clock_2560Hz, // 
	output logic clock_1280Hz, // 
	output logic clock_640Hz, 	// 
	output logic clock_320Hz, 	// 
	output logic clock_160Hz, 	// 
	output logic clock_80Hz, 	// 
	output logic clock_40Hz, 	// 
	output logic clock_20Hz, 	// 
	output logic clock_10Hz, 	// 
	output logic clock_5Hz, 	// 
	output logic clock_2Hz,  	// 
	output logic clock_1Hz 
	); 

	logic [23:0] count;

	always_ff@(posedge clock_10MHz, negedge reset_n)
		if (!reset_n) count <= 0;
		else 	   	  count <= count + 1;

	assign clock_5MHz 	= count[0];		// 
	assign clock_2500KHz = count[1];		// 
	assign clock_1250KHz = count[2];		// 
	assign clock_625KHz 	= count[3];		// 
	assign clock_312KHz 	= count[4];		// 
	assign clock_156KHz 	= count[5];		// 
	assign clock_78KHz 	= count[6];		// 
	assign clock_39KHz 	= count[7];		// 
	assign clock_19KHz 	= count[8];		// 
	assign clock_10KHz 	= count[9];		// 
	assign clock_5KHz 	= count[10];	// 
	assign clock_5120Hz 	= count[11];	// 
	assign clock_2560Hz 	= count[12];	// 
	assign clock_1280Hz 	= count[13];	// 
	assign clock_640Hz 	= count[14];	// 
	assign clock_320Hz 	= count[15];	// 
	assign clock_160Hz 	= count[16];	// 
	assign clock_80Hz 	= count[17];	// 
	assign clock_40Hz 	= count[18];	// 
	assign clock_20Hz 	= count[19];	// 
	assign clock_10Hz 	= count[20];	//
	assign clock_5Hz 		= count[21];   // 
	assign clock_2Hz 		= count[22];  	// 
	assign clock_1Hz 		= count[23];	//  

endmodule
