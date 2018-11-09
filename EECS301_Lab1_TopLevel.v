// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 17.0.2 Build 602 07/19/2017 SJ Standard Edition"
// CREATED		"Fri Nov 09 13:29:15 2018"

module EECS301_Lab1_TopLevel(
	EN,
	X,
	Y,
	Kin,
	U,
	Kout
);


input wire	EN;
input wire	X;
input wire	Y;
input wire	Kin;
output wire	U;
output wire	Kout;

wire	Z;
wire	Z1;
wire	Z2;
wire	Z3;
wire	Z4;
wire	Z5;




assign	Z = EN ^ X;

assign	Z1 = Z & Y;

assign	Z3 = Y & Kin;

assign	Z4 = Kin & Z;

assign	Z5 = X ^ Y;

assign	Kout = ~(Z5 ^ Kin);

assign	Z2 = Z4 | Z3;

assign	U = Z2 | Z1;


endmodule
