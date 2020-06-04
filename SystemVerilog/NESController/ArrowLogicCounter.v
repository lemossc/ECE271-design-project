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
// CREATED		"Wed Jun 03 20:11:10 2020"

module ArrowLogicCounter(
	a,
	b,
	clock,
	reset_n,
	count
);


input wire	a;
input wire	b;
input wire	clock;
input wire	reset_n;
output wire	[13:0] count;

wire	a_not;
wire	b_not;
wire	countClockEnabled;
wire	resetSignal;
wire	upDown;
wire	SYNTHESIZED_WIRE_0;
wire	[13:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_2;

assign	count = SYNTHESIZED_WIRE_4;



assign	upDown = a_not & b;

assign	countClockEnabled = clock & SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = b_not | a_not;

assign	a_not =  ~a;

assign	b_not =  ~b;


Counter	b2v_inst5(
	.clk(countClockEnabled),
	.reset_n(resetSignal),
	.en(upDown),
	.d(SYNTHESIZED_WIRE_4),
	.q(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst5.N = 14;

assign	resetSignal = reset_n & SYNTHESIZED_WIRE_2;


Comparator	b2v_inst7(
	.a(SYNTHESIZED_WIRE_4),
	.lt(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst7.M = 16383;
	defparam	b2v_inst7.N = 14;


endmodule
