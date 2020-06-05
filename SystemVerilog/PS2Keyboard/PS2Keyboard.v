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
// CREATED		"Wed Jun 03 16:27:09 2020"

module PS2Keyboard(
	clock,
	data,
	pulseClock,
	vSync,
	hSync,
	blue,
	green,
	red
);


input wire	clock;
input wire	data;
input wire	pulseClock;
output wire	vSync;
output wire	hSync;
output wire	[3:0] blue;
output wire	[3:0] green;
output wire	[3:0] red;

wire	clockHalf;
wire	horizontalSync;
wire	verticalSync;
wire	[9:0] xCurrent;
wire	[9:0] yCurrent;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	[9:0] SYNTHESIZED_WIRE_3;
wire	[9:0] SYNTHESIZED_WIRE_4;
wire	[9:0] SYNTHESIZED_WIRE_5;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_7;





BoxUnit	b2v_inst(
	.vSync(verticalSync),
	.moveX(SYNTHESIZED_WIRE_0),
	.moveY(SYNTHESIZED_WIRE_1),
	.blue(SYNTHESIZED_WIRE_2),
	.boxSize(SYNTHESIZED_WIRE_3),
	.boxX(SYNTHESIZED_WIRE_4),
	.boxY(SYNTHESIZED_WIRE_5),
	.green(SYNTHESIZED_WIRE_6),
	.red(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst.BOX_SIZE = 40;


BoxDrawer	b2v_inst4(
	.clock(clockHalf),
	.blue(SYNTHESIZED_WIRE_2),
	.boxSize(SYNTHESIZED_WIRE_3),
	.boxX(SYNTHESIZED_WIRE_4),
	.boxY(SYNTHESIZED_WIRE_5),
	.green(SYNTHESIZED_WIRE_6),
	.red(SYNTHESIZED_WIRE_7),
	.x(xCurrent),
	.y(yCurrent),
	.b(blue),
	.g(green),
	.r(red));


VGATimingLogic	b2v_inst5(
	.clock(clockHalf),
	.vSync(verticalSync),
	.hSync(horizontalSync),
	.x(xCurrent),
	.y(yCurrent));


ClockDivider	b2v_inst6(
	.clock(clock),
	.clockDivided(clockHalf));


KeyboardWASD	b2v_inst7(
	.clock(pulseClock),
	.data(data),
	.x(SYNTHESIZED_WIRE_0),
	.y(SYNTHESIZED_WIRE_1));

assign	vSync = verticalSync;
assign	hSync = horizontalSync;

endmodule
