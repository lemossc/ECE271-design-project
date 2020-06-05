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
// CREATED		"Thu Jun 04 20:24:00 2020"

module PS2Keyboard(
	data,
	pulseClock,
	clock,
	switchesX,
	switchesY,
	vSync,
	hSync,
	blue,
	green,
	red
);


input wire	data;
input wire	pulseClock;
input wire	clock;
input wire	[1:0] switchesX;
input wire	[1:0] switchesY;
output wire	vSync;
output wire	hSync;
output wire	[3:0] blue;
output wire	[3:0] green;
output wire	[3:0] red;

wire	[3:0] blueBoxUnit;
wire	[9:0] BOX_SIZE;
wire	[9:0] boxX;
wire	[9:0] boxY;
wire	clockHalf;
wire	[3:0] greenBoxUnit;
wire	horizontalSync;
wire	[1:0] moveX;
wire	[1:0] moveY;
wire	[3:0] redBoxUnit;
wire	verticalSync;
wire	[9:0] xPos;
wire	[9:0] yPos;





BoxDrawer	b2v_BoxDrawer(
	.clock(clockHalf),
	.blue(blueBoxUnit),
	.BOX_SIZE(BOX_SIZE),
	.boxX(boxX),
	.boxY(boxY),
	.green(greenBoxUnit),
	.red(redBoxUnit),
	.x(xPos),
	.y(yPos),
	.b(blue),
	.g(green),
	.r(red));
	defparam	b2v_BoxDrawer.RES_HEIGHT = 480;
	defparam	b2v_BoxDrawer.RES_WIDTH = 640;


BoxUnit	b2v_BoxUnit(
	.vSync(verticalSync),
	.moveX(moveX),
	.moveY(moveY),
	.blue(blueBoxUnit),
	.BOX_SIZE(BOX_SIZE),
	.boxX(boxX),
	.boxY(boxY),
	.green(greenBoxUnit),
	.red(redBoxUnit));
	defparam	b2v_BoxUnit.BOX__SIZE = 40;


ClockDivider	b2v_ClockDivider(
	.clock(clock),
	.clockDivided(clockHalf));


VGATimingLogic	b2v_inst(
	.clock(clockHalf),
	.vSync(verticalSync),
	.hSync(horizontalSync),
	.x(xPos),
	.y(yPos));


KeyboardWASD	b2v_KeyboardWASD(
	.clock(pulseClock),
	.data(data),
	.leftRightOutput(moveX),
	.upDownOutput(moveY));

assign	vSync = verticalSync;
assign	hSync = horizontalSync;

endmodule
