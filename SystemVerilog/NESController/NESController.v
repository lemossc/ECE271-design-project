// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Sat May 30 17:31:59 2020"

module NESController(
	reset_n,
	data,
	clock_10MHz
);


input wire	reset_n;
input wire	data;
input wire	clock_10MHz;

wire	clock;
wire	clock_128Hz;
wire	clock_16Hz;
wire	clock_2KHz;
wire	clock_32Hz;
wire	clockRed;
wire	count;
wire	countClock;
wire	latchOrange;
wire	select;
wire	start;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;





NESReader	b2v_inst(
	.clock(clock),
	.reset_n(reset_n),
	.data(data),
	
	
	.up(SYNTHESIZED_WIRE_0),
	.down(SYNTHESIZED_WIRE_1),
	.left(SYNTHESIZED_WIRE_2),
	.right(SYNTHESIZED_WIRE_3),
	
	
	.a(SYNTHESIZED_WIRE_4),
	.b(SYNTHESIZED_WIRE_5));


ClockSelect	b2v_inst3(
	.up(SYNTHESIZED_WIRE_0),
	.down(SYNTHESIZED_WIRE_1),
	.left(SYNTHESIZED_WIRE_2),
	.right(SYNTHESIZED_WIRE_3),
	.clock0(clock_16Hz),
	.clock1(clock_32Hz),
	.clock2(clock_128Hz),
	.clock3(clock_2KHz),
	.selectedClock(countClock));


ArrowLogicCounter	b2v_inst4(
	.clock(countClock),
	.reset_n(reset_n),
	.a(SYNTHESIZED_WIRE_4),
	.b(SYNTHESIZED_WIRE_5)
	);


endmodule
