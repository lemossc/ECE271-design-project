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
// CREATED		"Wed Jun 03 20:11:21 2020"

module SevenSegmentOutput(
	count,
	hundredsSeg,
	onesSeg,
	tensSeg,
	tenThousandsSeg,
	thousandsSeg
);


input wire	[13:0] count;
output wire	[6:0] hundredsSeg;
output wire	[6:0] onesSeg;
output wire	[6:0] tensSeg;
output wire	[6:0] tenThousandsSeg;
output wire	[6:0] thousandsSeg;

wire	[3:0] hundreds;
wire	[3:0] ones;
wire	[3:0] tens;
wire	[3:0] tenThousands;
wire	[3:0] thousands;





Parser	b2v_inst(
	.value(count),
	.hundreds(hundreds),
	.ones(ones),
	.tens(tens),
	.tenThousands(tenThousands),
	.thousands(thousands));
	defparam	b2v_inst.N = 14;


SevenSegmentDecoder	b2v_inst2(
	.data(ones),
	.segments(onesSeg));


SevenSegmentDecoder	b2v_inst3(
	.data(tens),
	.segments(tensSeg));


SevenSegmentDecoder	b2v_inst4(
	.data(thousands),
	.segments(thousandsSeg));


SevenSegmentDecoder	b2v_inst5(
	.data(tenThousands),
	.segments(tenThousandsSeg));


SevenSegmentDecoder	b2v_inst6(
	.data(hundreds),
	.segments(hundredsSeg));


endmodule
