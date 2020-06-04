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
// CREATED		"Wed Jun 03 20:29:25 2020"

module NESController(
	reset_n,
	data,
	clock_10MHz,
	Seg0,
	Seg1,
	Seg2,
	Seg3,
	Seg4
);


input wire	reset_n;
input wire	data;
input wire	clock_10MHz;
output wire	[6:0] Seg0;
output wire	[6:0] Seg1;
output wire	[6:0] Seg2;
output wire	[6:0] Seg3;
output wire	[6:0] Seg4;

wire	a;
wire	b;
wire	clock_1280Hz;
wire	clock_160Hz;
wire	clock_20Hz;
wire	clock_2560Hz;
wire	clock_40Hz;
wire	clockRed;
wire	[13:0] count;
wire	countClock;
wire	down;
wire	latchData;
wire	left;
wire	right;
wire	select;
wire	start;
wire	up;





NESReader	b2v_inst(
	.clock(clock_10MHz),
	.reset_n(reset_n),
	.data(data),
	
	
	.up(up),
	.down(down),
	.left(left),
	.right(right),
	
	
	.a(a),
	.b(b));


ClockDivider	b2v_inst1(
	.clock_10MHz(clock_10MHz),
	.reset_n(reset_n),
	
	
	
	
	
	
	
	
	
	
	
	
	.clock_2560Hz(clock_2560Hz),
	
	
	
	.clock_160Hz(clock_160Hz),
	
	.clock_40Hz(clock_40Hz),
	.clock_20Hz(clock_20Hz)
	
	
	
	);


SevenSegmentOutput	b2v_inst2(
	.count(count),
	.hundredsSeg(Seg2),
	.onesSeg(Seg0),
	.tensSeg(Seg1),
	.tenThousandsSeg(Seg4),
	.thousandsSeg(Seg3));


ClockSelect	b2v_inst3(
	.up(up),
	.down(down),
	.left(left),
	.right(right),
	.clock0(clock_20Hz),
	.clock1(clock_40Hz),
	.clock2(clock_160Hz),
	.clock3(clock_2560Hz),
	.selectedClock(countClock));


ArrowLogicCounter	b2v_inst4(
	.clock(countClock),
	.reset_n(reset_n),
	.a(a),
	.b(b),
	.count(count));


endmodule
