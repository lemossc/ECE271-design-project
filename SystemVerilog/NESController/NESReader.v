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
// CREATED		"Wed Jun 03 20:10:56 2020"

module NESReader(
	data,
	clock,
	reset_n,
	clockRed,
	latchOrange,
	start,
	select,
	up,
	down,
	left,
	right,
	a,
	b
);


input wire	data;
input wire	clock;
input wire	reset_n;
output wire	clockRed;
output wire	latchOrange;
output wire	start;
output wire	select;
output wire	up;
output wire	down;
output wire	left;
output wire	right;
output wire	a;
output wire	b;

wire	[7:0] buttons;
wire	[3:0] count;





Counter	b2v_inst(
	.clk(clock),
	.reset_n(reset_n),
	.en(reset_n),
	.d(count),
	.q(count));
	defparam	b2v_inst.N = 4;


NESLatchStateDecoder	b2v_inst1(
	.controllerState(count),
	.NESLatch(latchOrange));
	defparam	b2v_inst1.N = 4;


NESClockStateDecoder	b2v_inst2(
	.controllerState(count),
	.NESClock(clockRed));
	defparam	b2v_inst2.N = 4;


NESDataReceiverDecoder	b2v_inst3(
	.data(data),
	.reset_n(reset_n),
	.controllerState(count),
	.readButtons(buttons));
	defparam	b2v_inst3.N = 4;

assign	start = buttons[4];
assign	select = buttons[5];
assign	up = buttons[3];
assign	down = buttons[2];
assign	left = buttons[1];
assign	right = buttons[0];
assign	a = buttons[7];
assign	b = buttons[6];

endmodule
