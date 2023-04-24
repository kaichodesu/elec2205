// Verilog netlist created by S-Edit 2021.2.0
// Written on Wed Nov  2 14:34:00 2022

// Library:               TEAMAG_FINAL_SCHEMATICS
// Cell:                  TEAMAG_DESIGN
// View name:             schematic
// Design path:           H:\D2\Final\Schematics\TEAMAG_FINAL_SCHEMATICS
// Control property name(s): VERILOG
// Exclude global pins on subcircuits: <yes>



module Design_Globals(
);
wire Vdd;
wire Gnd;
endmodule // Design_Globals

module TEAMAG_1BIT_ALU(
	CIN,
	COUT,
	F0,
	F1,
	X,
	XY,
	Y
);
input CIN;
output COUT;
input F0;
input F1;
input X;
output XY;
input Y;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;

INV1 INV1_1(
	.A(CIN),
	.Q(N_1)
);
NAND2 NAND2_1(
	.A(N_5),
	.B(N_6),
	.Q(COUT)
);
NAND2 NAND2_2(
	.A(N_2),
	.B(N_3),
	.Q(N_5)
);
NAND2 NAND2_3(
	.A(X),
	.B(N_4),
	.Q(N_6)
);
NOR2 NOR2_1(
	.A(N_1),
	.B(F1),
	.Q(N_2)
);
XOR2 XOR2_1(
	.A(N_2),
	.B(N_3),
	.Q(XY)
);
XOR2 XOR2_2(
	.A(X),
	.B(N_4),
	.Q(N_3)
);
XOR2 XOR2_3(
	.A(F0),
	.B(Y),
	.Q(N_4)
);
endmodule // TEAMAG_1BIT_ALU


module TEAMAG_4BIT_ALU(
	F0,
	F1,
	X0,
	X1,
	X2,
	X3,
	XY0,
	XY1,
	XY2,
	XY3,
	Y0,
	Y1,
	Y2,
	Y3
);
input F0;
input F1;
input X0;
input X1;
input X2;
input X3;
output XY0;
output XY1;
output XY2;
output XY3;
input Y0;
input Y1;
input Y2;
input Y3;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;

INV1 INV1_1(
	.A(N_8),
	.Q(N_1)
);
NOR2 NOR2_1(
	.A(N_1),
	.B(F1),
	.Q(N_2)
);
TEAMAG_1BIT_ALU TEAMAG_1bit_ALU_1(
	.CIN(N_5),
	.COUT(N_6),
	.F0(F0),
	.F1(F1),
	.X(X0),
	.XY(XY0),
	.Y(Y0)
);
TEAMAG_1BIT_ALU TEAMAG_1bit_ALU_2(
	.CIN(N_6),
	.COUT(N_7),
	.F0(F0),
	.F1(F1),
	.X(X1),
	.XY(XY1),
	.Y(Y1)
);
TEAMAG_1BIT_ALU TEAMAG_1bit_ALU_3(
	.CIN(N_7),
	.COUT(N_8),
	.F0(F0),
	.F1(F1),
	.X(X2),
	.XY(XY2),
	.Y(Y2)
);
XOR2 XOR2_1(
	.A(Y3),
	.B(F0),
	.Q(N_3)
);
XOR2 XOR2_2(
	.A(X3),
	.B(N_3),
	.Q(N_4)
);
XOR2 XOR2_3(
	.A(N_2),
	.B(N_4),
	.Q(XY3)
);
endmodule // TEAMAG_4BIT_ALU


module TEAMAG_RING_OSC(
	EnableOsc,
	INVIN,
	INVOUT,
	nResetOsc,
	OscOut
);
input EnableOsc;
input INVIN;
output INVOUT;
input nResetOsc;
output OscOut;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;
wire N_27;
wire N_28;

DFFR DFFR_1(
	.Clk(N_23),
	.D(N_17),
	.nQ(N_17),
	.nRst(nResetOsc),
	.Q(N_24)
);
DFFR DFFR_2(
	.Clk(N_24),
	.D(N_18),
	.nQ(N_18),
	.nRst(nResetOsc),
	.Q(N_25)
);
DFFR DFFR_3(
	.Clk(N_25),
	.D(N_19),
	.nQ(N_19),
	.nRst(nResetOsc),
	.Q(N_26)
);
DFFR DFFR_4(
	.Clk(N_26),
	.D(N_20),
	.nQ(N_20),
	.nRst(nResetOsc),
	.Q(N_27)
);
DFFR DFFR_5(
	.Clk(N_27),
	.D(N_21),
	.nQ(N_21),
	.nRst(nResetOsc),
	.Q(N_28)
);
DFFR DFFR_6(
	.Clk(N_28),
	.D(N_22),
	.nQ(N_22),
	.nRst(nResetOsc),
	.Q(OscOut)
);
INV1 INV1_1(
	.A(N_12),
	.Q(N_1)
);
INV1 INV1_2(
	.A(N_1),
	.Q(N_2)
);
INV1 INV1_3(
	.A(N_2),
	.Q(N_3)
);
INV1 INV1_4(
	.A(N_3),
	.Q(N_4)
);
INV1 INV1_5(
	.A(N_4),
	.Q(N_5)
);
INV1 INV1_6(
	.A(N_5),
	.Q(N_6)
);
INV1 INV1_7(
	.A(N_6),
	.Q(N_7)
);
INV1 INV1_8(
	.A(N_7),
	.Q(N_8)
);
INV1 INV1_9(
	.A(N_8),
	.Q(N_9)
);
INV1 INV1_10(
	.A(N_9),
	.Q(N_10)
);
INV1 INV1_11(
	.A(N_10),
	.Q(N_11)
);
INV1 INV1_12(
	.A(N_11),
	.Q(N_13)
);
INV1 INV1_13(
	.A(N_13),
	.Q(N_14)
);
INV1 INV1_14(
	.A(N_14),
	.Q(N_15)
);
INV1 INV1_15(
	.A(N_15),
	.Q(N_16)
);
INV1 INV1_16(
	.A(N_16),
	.Q(N_23)
);
INV1 INV1_17(
	.A(INVIN),
	.Q(INVOUT)
);
NAND4 NAND4_1(
	.A(EnableOsc),
	.B(EnableOsc),
	.C(EnableOsc),
	.D(N_23),
	.Q(N_12)
);
endmodule // TEAMAG_RING_OSC


module TEAMAG_MOD10(
	D0,
	D1,
	D2,
	D3,
	GCLK,
	MOD10,
	SRST
);
output D0;
output D1;
output D2;
output D3;
input GCLK;
output MOD10;
input SRST;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;

NAND2 \[1] (
	.A(D0),
	.B(D3),
	.Q(N_6)
);
INV1 \[2] (
	.A(N_6),
	.Q(MOD10)
);
NAND2 \[3] (
	.A(N_17),
	.B(N_6),
	.Q(N_1)
);
INV1 \[4] (
	.A(N_1),
	.Q(N_2)
);
DFFR \[5] (
	.Clk(GCLK),
	.D(N_2),
	.nQ(N_17),
	.nRst(SRST),
	.Q(D0)
);
XOR2 \[6] (
	.A(D1),
	.B(D0),
	.Q(N_3)
);
NAND2 \[7] (
	.A(N_3),
	.B(N_6),
	.Q(N_4)
);
INV1 \[8] (
	.A(N_4),
	.Q(N_5)
);
DFFR \[9] (
	.Clk(GCLK),
	.D(N_5),
	.nQ(N_18),
	.nRst(SRST),
	.Q(D1)
);
NAND2 \[10] (
	.A(D0),
	.B(D1),
	.Q(N_7)
);
INV1 \[11] (
	.A(N_7),
	.Q(N_9)
);
XOR2 \[12] (
	.A(D2),
	.B(N_9),
	.Q(N_10)
);
NAND2 \[13] (
	.A(N_10),
	.B(N_6),
	.Q(N_11)
);
INV1 \[14] (
	.A(N_11),
	.Q(N_12)
);
DFFR \[15] (
	.Clk(GCLK),
	.D(N_12),
	.nQ(N_19),
	.nRst(SRST),
	.Q(D2)
);
NAND2 \[16] (
	.A(N_9),
	.B(D2),
	.Q(N_13)
);
INV1 \[17] (
	.A(N_13),
	.Q(N_14)
);
XOR2 \[18] (
	.A(D3),
	.B(N_14),
	.Q(N_15)
);
NAND2 \[19] (
	.A(N_15),
	.B(N_6),
	.Q(N_16)
);
INV1 \[20] (
	.A(N_16),
	.Q(N_8)
);
DFFR \[21] (
	.Clk(GCLK),
	.D(N_8),
	.nQ(N_20),
	.nRst(SRST),
	.Q(D3)
);
endmodule // TEAMAG_MOD10


module TEAMAG_MOD10X2(
	D0_0,
	D0_1,
	D1_0,
	D1_1,
	D2_0,
	D2_1,
	D3_0,
	D3_1,
	GCLK,
	MOD100,
	SRST
);
output D0_0;
output D0_1;
output D1_0;
output D1_1;
output D2_0;
output D2_1;
output D3_0;
output D3_1;
input GCLK;
output MOD100;
input SRST;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;
wire N_27;
wire N_28;
wire N_29;
wire N_30;
wire N_31;
wire N_32;
wire N_33;
wire N_34;
wire N_35;
wire N_36;
wire N_37;
wire N_38;
wire N_39;
wire N_40;
wire N_41;
wire N_42;

NAND2 \[1] (
	.A(D0_0),
	.B(D3_0),
	.Q(N_6)
);
NAND2 \[1]1 (
	.A(D0_1),
	.B(D3_1),
	.Q(N_24)
);
INV1 \[2] (
	.A(N_6),
	.Q(N_42)
);
INV1 \[2]1 (
	.A(N_24),
	.Q(MOD100)
);
NAND2 \[3] (
	.A(N_22),
	.B(N_6),
	.Q(N_1)
);
NAND2 \[3]1 (
	.A(N_35),
	.B(N_24),
	.Q(N_7)
);
INV1 \[4] (
	.A(N_1),
	.Q(N_2)
);
INV1 \[4]1 (
	.A(N_7),
	.Q(N_8)
);
INV1 \[4]2 (
	.A(GCLK),
	.Q(N_41)
);
DFFR \[5] (
	.Clk(N_41),
	.D(N_2),
	.nQ(N_22),
	.nRst(SRST),
	.Q(D0_0)
);
DFFR \[5]1 (
	.Clk(N_42),
	.D(N_8),
	.nQ(N_35),
	.nRst(SRST),
	.Q(D0_1)
);
XOR2 \[6] (
	.A(D1_0),
	.B(D0_0),
	.Q(N_3)
);
XOR2 \[6]1 (
	.A(D1_1),
	.B(D0_1),
	.Q(N_9)
);
NAND2 \[7] (
	.A(N_3),
	.B(N_6),
	.Q(N_4)
);
NAND2 \[7]1 (
	.A(N_9),
	.B(N_24),
	.Q(N_10)
);
INV1 \[8] (
	.A(N_4),
	.Q(N_5)
);
INV1 \[8]1 (
	.A(N_10),
	.Q(N_11)
);
DFFR \[9] (
	.Clk(N_41),
	.D(N_5),
	.nQ(N_23),
	.nRst(SRST),
	.Q(D1_0)
);
DFFR \[9]1 (
	.Clk(N_42),
	.D(N_11),
	.nQ(N_36),
	.nRst(SRST),
	.Q(D1_1)
);
NAND2 \[10] (
	.A(D0_0),
	.B(D1_0),
	.Q(N_12)
);
NAND2 \[10]1 (
	.A(D0_1),
	.B(D1_1),
	.Q(N_25)
);
INV1 \[11] (
	.A(N_12),
	.Q(N_14)
);
INV1 \[11]1 (
	.A(N_25),
	.Q(N_26)
);
XOR2 \[12] (
	.A(D2_0),
	.B(N_14),
	.Q(N_15)
);
XOR2 \[12]1 (
	.A(D2_1),
	.B(N_26),
	.Q(N_27)
);
NAND2 \[13] (
	.A(N_15),
	.B(N_6),
	.Q(N_16)
);
NAND2 \[13]1 (
	.A(N_27),
	.B(N_24),
	.Q(N_28)
);
INV1 \[14] (
	.A(N_16),
	.Q(N_17)
);
INV1 \[14]1 (
	.A(N_28),
	.Q(N_29)
);
DFFR \[15] (
	.Clk(N_41),
	.D(N_17),
	.nQ(N_37),
	.nRst(SRST),
	.Q(D2_0)
);
DFFR \[15]1 (
	.Clk(N_42),
	.D(N_29),
	.nQ(N_40),
	.nRst(SRST),
	.Q(D2_1)
);
NAND2 \[16] (
	.A(N_14),
	.B(D2_0),
	.Q(N_18)
);
NAND2 \[16]1 (
	.A(N_26),
	.B(D2_1),
	.Q(N_30)
);
INV1 \[17] (
	.A(N_18),
	.Q(N_19)
);
INV1 \[17]1 (
	.A(N_30),
	.Q(N_31)
);
XOR2 \[18] (
	.A(D3_0),
	.B(N_19),
	.Q(N_20)
);
XOR2 \[18]1 (
	.A(D3_1),
	.B(N_31),
	.Q(N_32)
);
NAND2 \[19] (
	.A(N_20),
	.B(N_6),
	.Q(N_21)
);
NAND2 \[19]1 (
	.A(N_32),
	.B(N_24),
	.Q(N_33)
);
INV1 \[20] (
	.A(N_21),
	.Q(N_13)
);
INV1 \[20]1 (
	.A(N_33),
	.Q(N_34)
);
DFFR \[21] (
	.Clk(N_41),
	.D(N_13),
	.nQ(N_38),
	.nRst(SRST),
	.Q(D3_0)
);
DFFR \[21]1 (
	.Clk(N_42),
	.D(N_34),
	.nQ(N_39),
	.nRst(SRST),
	.Q(D3_1)
);
endmodule // TEAMAG_MOD10X2


module TEAMAG_CLK_DIVIDER(
	BCLK,
	CLKDIV,
	MRST
);
input BCLK;
output CLKDIV;
input MRST;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;

DFFR DFFR_1(
	.Clk(BCLK),
	.D(N_15),
	.nQ(N_15),
	.nRst(MRST),
	.Q(N_2)
);
DFFR DFFR_2(
	.Clk(BCLK),
	.D(N_1),
	.nQ(N_16),
	.nRst(MRST),
	.Q(N_4)
);
DFFR DFFR_3(
	.Clk(BCLK),
	.D(N_3),
	.nQ(N_17),
	.nRst(MRST),
	.Q(N_7)
);
DFFR DFFR_4(
	.Clk(BCLK),
	.D(N_6),
	.nQ(N_18),
	.nRst(MRST),
	.Q(N_9)
);
DFFR DFFR_5(
	.Clk(BCLK),
	.D(N_8),
	.nQ(N_19),
	.nRst(MRST),
	.Q(CLKDIV)
);
INV1 INV1_1(
	.A(N_12),
	.Q(N_11)
);
INV1 INV1_2(
	.A(N_13),
	.Q(N_10)
);
INV1 INV1_3(
	.A(N_14),
	.Q(N_5)
);
NAND2 NAND2_1(
	.A(N_16),
	.B(N_15),
	.Q(N_12)
);
NAND2 NAND2_2(
	.A(N_17),
	.B(N_11),
	.Q(N_13)
);
NAND2 NAND2_3(
	.A(N_10),
	.B(N_18),
	.Q(N_14)
);
XOR2 XOR2_1(
	.A(N_4),
	.B(N_15),
	.Q(N_1)
);
XOR2 XOR2_2(
	.A(N_7),
	.B(N_11),
	.Q(N_3)
);
XOR2 XOR2_3(
	.A(N_9),
	.B(N_10),
	.Q(N_6)
);
XOR2 XOR2_4(
	.A(CLKDIV),
	.B(N_5),
	.Q(N_8)
);
endmodule // TEAMAG_CLK_DIVIDER


module TEAMAG_CLKDIV_BSYNC_MOD10X2(
	BCLK,
	D0_0,
	D0_1,
	D1_0,
	D1_1,
	D2_0,
	D2_1,
	D3_0,
	D3_1,
	GO,
	MOD100,
	MRST,
	RUN_IN,
	RUN_OUT,
	SRST,
	STOP
);
input BCLK;
output D0_0;
output D0_1;
output D1_0;
output D1_1;
output D2_0;
output D2_1;
output D3_0;
output D3_1;
input GO;
output MOD100;
input MRST;
input RUN_IN;
output RUN_OUT;
output SRST;
input STOP;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;

DFFR DFFR_1(
	.Clk(BCLK),
	.D(N_7),
	.nQ(N_9),
	.nRst(MRST),
	.Q(N_4)
);
DFFR DFFR_2(
	.Clk(BCLK),
	.D(N_2),
	.nQ(N_10),
	.nRst(MRST),
	.Q(N_1)
);
INV1 INV1_1(
	.A(STOP),
	.Q(N_3)
);
INV1 INV1_2(
	.A(N_5),
	.Q(SRST)
);
INV1 INV1_4(
	.A(N_6),
	.Q(N_2)
);
NAND2 NAND2_1(
	.A(N_6),
	.B(MRST),
	.Q(N_5)
);
NAND2 NAND2_2(
	.A(N_8),
	.B(N_10),
	.Q(N_7)
);
NAND2 NAND2_3(
	.A(N_12),
	.B(RUN_IN),
	.Q(N_11)
);
NAND2 NAND2_4(
	.A(N_3),
	.B(N_4),
	.Q(N_8)
);
NAND3 NAND3_1(
	.A(N_10),
	.B(N_9),
	.C(GO),
	.Q(N_6)
);
NOR2 NOR2_1(
	.A(N_9),
	.B(STOP),
	.Q(RUN_OUT)
);
TEAMAG_CLK_DIVIDER TEAMAG_CLK_DIVIDER_1(
	.BCLK(BCLK),
	.CLKDIV(N_12),
	.MRST(MRST)
);
TEAMAG_MOD10X2 TEAMAG_MOD10X2_1(
	.D0_0(D0_0),
	.D0_1(D0_1),
	.D1_0(D1_0),
	.D1_1(D1_1),
	.D2_0(D2_0),
	.D2_1(D2_1),
	.D3_0(D3_0),
	.D3_1(D3_1),
	.GCLK(N_11),
	.MOD100(MOD100),
	.SRST(SRST)
);
endmodule // TEAMAG_CLKDIV_BSYNC_MOD10X2


module TEAMAG_MOD6(
	D0,
	D1,
	D2,
	GCLK,
	MOD6,
	SRST
);
output D0;
output D1;
output D2;
input GCLK;
output MOD6;
input SRST;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;

DFFR DFFR_1(
	.Clk(GCLK),
	.D(N_2),
	.nQ(N_12),
	.nRst(SRST),
	.Q(D0)
);
DFFR DFFR_2(
	.Clk(GCLK),
	.D(N_3),
	.nQ(N_13),
	.nRst(SRST),
	.Q(D1)
);
DFFR DFFR_3(
	.Clk(GCLK),
	.D(N_4),
	.nQ(N_14),
	.nRst(SRST),
	.Q(D2)
);
INV1 INV1_1(
	.A(N_7),
	.Q(N_1)
);
INV1 INV1_2(
	.A(N_9),
	.Q(N_2)
);
INV1 INV1_3(
	.A(N_10),
	.Q(N_3)
);
INV1 INV1_4(
	.A(N_11),
	.Q(N_4)
);
INV1 INV1_5(
	.A(N_8),
	.Q(MOD6)
);
NAND2 NAND2_1(
	.A(D0),
	.B(D1),
	.Q(N_7)
);
NAND2 NAND2_3(
	.A(D0),
	.B(D2),
	.Q(N_8)
);
NAND2 NAND2_4(
	.A(N_12),
	.B(N_8),
	.Q(N_9)
);
NAND2 NAND2_5(
	.A(N_5),
	.B(N_8),
	.Q(N_10)
);
NAND2 NAND2_6(
	.A(N_6),
	.B(N_8),
	.Q(N_11)
);
XOR2 XOR2_1(
	.A(D1),
	.B(D0),
	.Q(N_5)
);
XOR2 XOR2_2(
	.A(D2),
	.B(N_1),
	.Q(N_6)
);
endmodule // TEAMAG_MOD6


module TEAMAG_MOD5(
	BCLK,
	D0,
	D1,
	D2,
	SRST
);
input BCLK;
output D0;
output D1;
output D2;
input SRST;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;

DFFR DFFR_1(
	.Clk(BCLK),
	.D(N_2),
	.nQ(N_11),
	.nRst(SRST),
	.Q(D0)
);
DFFR DFFR_2(
	.Clk(BCLK),
	.D(N_3),
	.nQ(N_12),
	.nRst(SRST),
	.Q(D1)
);
DFFR DFFR_3(
	.Clk(BCLK),
	.D(N_4),
	.nQ(N_13),
	.nRst(SRST),
	.Q(D2)
);
INV1 INV1_1(
	.A(N_7),
	.Q(N_1)
);
INV1 INV1_2(
	.A(N_8),
	.Q(N_2)
);
INV1 INV1_3(
	.A(N_9),
	.Q(N_3)
);
INV1 INV1_4(
	.A(N_10),
	.Q(N_4)
);
NAND2 NAND2_1(
	.A(D0),
	.B(D1),
	.Q(N_7)
);
NAND2 NAND2_4(
	.A(N_11),
	.B(N_13),
	.Q(N_8)
);
NAND2 NAND2_5(
	.A(N_5),
	.B(N_13),
	.Q(N_9)
);
NAND2 NAND2_6(
	.A(N_6),
	.B(N_13),
	.Q(N_10)
);
XOR2 XOR2_1(
	.A(D1),
	.B(D0),
	.Q(N_5)
);
XOR2 XOR2_2(
	.A(D2),
	.B(N_1),
	.Q(N_6)
);
endmodule // TEAMAG_MOD5


module TEAMAG_51MUX(
	A,
	B,
	C,
	D,
	E,
	Out,
	S0,
	S1,
	S2
);
input A;
input B;
input C;
input D;
input E;
output Out;
input S0;
input S1;
input S2;

wire N_1;
wire N_2;
wire N_3;

MUX2 MUX2_1(
	.A(A),
	.B(B),
	.Q(N_1),
	.S(S0)
);
MUX2 MUX2_2(
	.A(C),
	.B(D),
	.Q(N_2),
	.S(S0)
);
MUX2 MUX2_3(
	.A(N_1),
	.B(N_2),
	.Q(N_3),
	.S(S1)
);
MUX2 MUX2_4(
	.A(N_3),
	.B(E),
	.Q(Out),
	.S(S2)
);
endmodule // TEAMAG_51MUX


module TEAMAG_DISPLAY_DRV(
	\D.P. ,
	BCLK,
	D0,
	D0_0,
	D0_1,
	D0_2,
	D0_3,
	D1,
	D1_0,
	D1_1,
	D1_2,
	D1_3,
	D2,
	D2_0,
	D2_1,
	D2_2,
	D2_3,
	D3,
	D3_0,
	D3_1,
	D3_3,
	DIGIT1,
	DIGIT2,
	DIGIT3,
	DIGIT4,
	DIGIT5,
	MOD10IN,
	SRST
);
output \D.P. ;
input BCLK;
output D0;
input D0_0;
input D0_1;
input D0_2;
input D0_3;
output D1;
input D1_0;
input D1_1;
input D1_2;
input D1_3;
output D2;
input D2_0;
input D2_1;
input D2_2;
input D2_3;
output D3;
input D3_0;
input D3_1;
input D3_3;
output DIGIT1;
output DIGIT2;
output DIGIT3;
output DIGIT4;
output DIGIT5;
input MOD10IN;
input SRST;

wire D0_4;
wire D1_4;
wire D2_4;
wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;

INV1 INV1_1(
	.A(N_4),
	.Q(\D.P. )
);
INV1 INV1_2(
	.A(N_5),
	.Q(N_1)
);
NOR2 NOR2_1(
	.A(\D.P. ),
	.B(N_5),
	.Q(DIGIT4)
);
NOR2 NOR2_2(
	.A(N_1),
	.B(N_4),
	.Q(DIGIT3)
);
NOR2 NOR2_3(
	.A(\D.P. ),
	.B(N_1),
	.Q(DIGIT2)
);
NOR3 NOR3_1(
	.A(N_4),
	.B(N_5),
	.C(DIGIT1),
	.Q(DIGIT5)
);
TEAMAG_51MUX TEAMAG_51MUX_1(
	.A(D3_0),
	.B(D3_1),
	.C(N_2),
	.D(D3_3),
	.E(N_3),
	.Out(D3),
	.S0(N_4),
	.S1(N_5),
	.S2(DIGIT1)
);
TEAMAG_51MUX TEAMAG_51MUX_2(
	.A(D2_0),
	.B(D2_1),
	.C(D2_2),
	.D(D2_3),
	.E(D2_4),
	.Out(D2),
	.S0(N_4),
	.S1(N_5),
	.S2(DIGIT1)
);
TEAMAG_51MUX TEAMAG_51MUX_3(
	.A(D1_0),
	.B(D1_1),
	.C(D1_2),
	.D(D1_3),
	.E(D1_4),
	.Out(D1),
	.S0(N_4),
	.S1(N_5),
	.S2(DIGIT1)
);
TEAMAG_51MUX TEAMAG_51MUX_4(
	.A(D0_0),
	.B(D0_1),
	.C(D0_2),
	.D(D0_3),
	.E(D0_4),
	.Out(D0),
	.S0(N_4),
	.S1(N_5),
	.S2(DIGIT1)
);
TEAMAG_MOD5 TEAMAG_MOD5_1(
	.BCLK(BCLK),
	.D0(N_4),
	.D1(N_5),
	.D2(DIGIT1),
	.SRST(SRST)
);
TEAMAG_MOD6 TEAMAG_MOD6_1(
	.D0(D0_4),
	.D1(D1_4),
	.D2(D2_4),
	.GCLK(MOD10IN),
	.MOD6(N_6),
	.SRST(SRST)
);
TIE0 TIE0_1(
	.Q(N_3)
);
TIE0 TIE0_2(
	.Q(N_2)
);
endmodule // TEAMAG_DISPLAY_DRV


module TEAMAG_MAIN_SEQUENCER(
	\D.P. ,
	BCLK,
	D0,
	D1,
	D2,
	D3,
	DIGIT1,
	DIGIT2,
	DIGIT3,
	DIGIT4,
	DIGIT5,
	GO,
	MRST,
	RUN_IN,
	RUN_OUT,
	STOP
);
output \D.P. ;
input BCLK;
output D0;
output D1;
output D2;
output D3;
output DIGIT1;
output DIGIT2;
output DIGIT3;
output DIGIT4;
output DIGIT5;
input GO;
input MRST;
input RUN_IN;
output RUN_OUT;
input STOP;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;

TEAMAG_CLKDIV_BSYNC_MOD10X2 TEAMAG_CLKDIV_BSYNC_MOD10X2_1(
	.BCLK(BCLK),
	.D0_0(N_10),
	.D0_1(N_14),
	.D1_0(N_11),
	.D1_1(N_15),
	.D2_0(N_12),
	.D2_1(N_16),
	.D3_0(N_13),
	.D3_1(N_17),
	.GO(GO),
	.MOD100(N_19),
	.MRST(MRST),
	.RUN_IN(RUN_IN),
	.RUN_OUT(RUN_OUT),
	.SRST(N_18),
	.STOP(STOP)
);
TEAMAG_DISPLAY_DRV TEAMAG_DISPLAY_DRV_1(
	.\D.P. (\D.P. ),
	.BCLK(BCLK),
	.D0(D0),
	.D0_0(N_10),
	.D0_1(N_14),
	.D0_2(N_2),
	.D0_3(N_5),
	.D1(D1),
	.D1_0(N_11),
	.D1_1(N_15),
	.D1_2(N_3),
	.D1_3(N_6),
	.D2(D2),
	.D2_0(N_12),
	.D2_1(N_16),
	.D2_2(N_4),
	.D2_3(N_7),
	.D3(D3),
	.D3_0(N_13),
	.D3_1(N_17),
	.D3_3(N_8),
	.DIGIT1(DIGIT1),
	.DIGIT2(DIGIT2),
	.DIGIT3(DIGIT3),
	.DIGIT4(DIGIT4),
	.DIGIT5(DIGIT5),
	.MOD10IN(N_9),
	.SRST(N_18)
);
TEAMAG_MOD6 TEAMAG_MOD6_1(
	.D0(N_1),
	.D1(N_2),
	.D2(N_3),
	.GCLK(N_19),
	.MOD6(N_4),
	.SRST(N_18)
);
TEAMAG_MOD10 TEAMAG_MOD10_1(
	.D0(N_5),
	.D1(N_6),
	.D2(N_7),
	.D3(N_8),
	.GCLK(N_1),
	.MOD10(N_9),
	.SRST(N_18)
);
endmodule // TEAMAG_MAIN_SEQUENCER


module TEAMAG_SEG_DECODE(
	D0,
	D1,
	D2,
	D3,
	S0,
	S1,
	S2,
	S3,
	S4,
	S5,
	S6
);
input D0;
input D1;
input D2;
input D3;
output S0;
output S1;
output S2;
output S3;
output S4;
output S5;
output S6;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;

INV1 INV1_1(
	.A(D2),
	.Q(N_4)
);
INV1 INV1_2(
	.A(D1),
	.Q(N_5)
);
INV1 INV1_3(
	.A(D0),
	.Q(N_6)
);
INV1 INV1_4(
	.A(N_1),
	.Q(N_2)
);
INV1 INV1_5(
	.A(N_10),
	.Q(S1)
);
INV1 INV1_6(
	.A(S0),
	.Q(N_12)
);
INV1 INV1_7(
	.A(D1),
	.Q(N_16)
);
INV1 INV1_8(
	.A(D1),
	.Q(N_3)
);
NAND2 NAND2_1(
	.A(N_2),
	.B(N_18),
	.Q(N_19)
);
NAND2 NAND2_2(
	.A(N_19),
	.B(S4),
	.Q(N_11)
);
NAND2 NAND2_3(
	.A(N_4),
	.B(D1),
	.Q(N_15)
);
NAND2 NAND2_4(
	.A(N_5),
	.B(D2),
	.Q(N_7)
);
NAND2 NAND2_5(
	.A(D0),
	.B(N_5),
	.Q(N_8)
);
NAND2 NAND2_6(
	.A(N_7),
	.B(N_6),
	.Q(S4)
);
NAND2 NAND2_7(
	.A(S4),
	.B(N_6),
	.Q(N_17)
);
NAND2 NAND2_8(
	.A(N_8),
	.B(S4),
	.Q(N_9)
);
NAND2 NAND2_9(
	.A(D1),
	.B(N_9),
	.Q(N_10)
);
NAND2 NAND2_10(
	.A(N_11),
	.B(N_15),
	.Q(S5)
);
NAND2 NAND2_11(
	.A(S5),
	.B(N_16),
	.Q(N_20)
);
NAND2 NAND2_12(
	.A(N_20),
	.B(N_17),
	.Q(S0)
);
NAND2 NAND2_13(
	.A(N_12),
	.B(N_18),
	.Q(S3)
);
NAND2 NAND2_14(
	.A(N_13),
	.B(N_21),
	.Q(S6)
);
NAND2 NAND2_15(
	.A(N_14),
	.B(N_19),
	.Q(N_21)
);
NAND3 NAND3_1(
	.A(D0),
	.B(D2),
	.C(D1),
	.Q(N_18)
);
NAND3 NAND3_2(
	.A(N_3),
	.B(N_6),
	.C(D2),
	.Q(N_13)
);
NOR3 NOR3_1(
	.A(D3),
	.B(D2),
	.C(D1),
	.Q(N_1)
);
NOR3 NOR3_2(
	.A(N_5),
	.B(D2),
	.C(D0),
	.Q(S2)
);
TIE1 TIE1_1(
	.Q(N_14)
);
endmodule // TEAMAG_SEG_DECODE


module TEAMAG_DESIGN(
	A0,
	A1,
	A2,
	A3,
	A4,
	A5,
	A6,
	A7,
	A8,
	A9,
	A10,
	A11,
	A12,
	A13,
	A14,
	A15,
	A16,
	A18,
	A20,
	A21,
	A22,
	A23,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4,
	Q5,
	Q6,
	Q7,
	Q8,
	Q9,
	Q10,
	Q11,
	Q12,
	Q13,
	Q14,
	Q15,
	Q16,
	Q17,
	Q18,
	Q19,
	Q20,
	Q21,
	Q22,
	Q23
);
input A0;
input A1;
input A2;
input A3;
input A4;
input A5;
input A6;
input A7;
input A8;
input A9;
input A10;
input A11;
input A12;
input A13;
input A14;
input A15;
input A16;
input A18;
input A20;
input A21;
input A22;
input A23;
output Q0;
output Q1;
output Q2;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;
output Q8;
output Q9;
output Q10;
output Q11;
output Q12;
output Q13;
output Q14;
output Q15;
output Q16;
output Q17;
output Q18;
output Q19;
output Q20;
output Q21;
output Q22;
output Q23;

TEAMAG_4BIT_ALU TEAMAG_4bit_ALU_1(
	.F0(A3),
	.F1(A4),
	.X0(A5),
	.X1(A6),
	.X2(A7),
	.X3(A8),
	.XY0(Q2),
	.XY1(Q3),
	.XY2(Q4),
	.XY3(Q5),
	.Y0(A9),
	.Y1(A10),
	.Y2(A11),
	.Y3(A12)
);
TEAMAG_MAIN_SEQUENCER TEAMAG_MAIN_SEQUENCER_1(
	.\D.P. (Q12),
	.BCLK(A13),
	.D0(Q13),
	.D1(Q14),
	.D2(Q15),
	.D3(Q16),
	.DIGIT1(Q7),
	.DIGIT2(Q8),
	.DIGIT3(Q9),
	.DIGIT4(Q10),
	.DIGIT5(Q11),
	.GO(A15),
	.MRST(A14),
	.RUN_IN(A18),
	.RUN_OUT(Q6),
	.STOP(A16)
);
TEAMAG_RING_OSC TEAMAG_ring_oscillator_1(
	.EnableOsc(A2),
	.INVIN(A0),
	.INVOUT(Q0),
	.nResetOsc(A1),
	.OscOut(Q1)
);
TEAMAG_SEG_DECODE TEAMAG_SEG_DECODE_1(
	.D0(A20),
	.D1(A21),
	.D2(A22),
	.D3(A23),
	.S0(Q17),
	.S1(Q18),
	.S2(Q19),
	.S3(Q20),
	.S4(Q21),
	.S5(Q22),
	.S6(Q23)
);
endmodule // TEAMAG_DESIGN

