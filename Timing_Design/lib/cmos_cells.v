//	Belinda Brown Ramírez
//	March, 2020
//	timna.brown@ucr.ac.cr
//      Modified: October, 2020
`ifndef CMOS_CELLS
`define CMOS_CELLS


//  Describing the modules of the same cmos_cells.lib


// BUF = buffer
// Is a single-input single-output gate,
// similar to NOT, that copies its input
// value to its output. In diagram
// gate has the following shape -[>-
module BUF(A, Y);
specify
	specparam tpd= 4.5; //hoja de fabricante 74ACT244
		(A*> Y) = (tpd, tpd); //tRise,tFall typ
endspecify
// From here is the normal cmos_cells
input A;
output Y;
assign Y = A;
endmodule


//Ejemplo #2
module BUFX2 (A, Y);
input  A ;
output Y ;
	 buf (Y, A);
	 specify
		 // delay parameters
		 specparam
			 tpllh = 0.13,
			 tphhl = 0.15;
		 // path delays
		 (A *> Y) = (tpllh, tphhl);
	 endspecify
endmodule


// Not gate or inversor
// Is a single-input single-output gate,
// opies its input value to its output with
// inversor. Shape -[>o-
module NOT(A, Y);
specify
	specparam tpd= 1.1; //datasheet SN74AUC1GU04 // CL = 15 pF
		(A*> Y) = (tpd, tpd); //tRise,tFall typ
endspecify
// From here is the normal cmos_cells
input A;
output Y;
assign Y = ~A;
endmodule


// Not and = NAND - 2 entries
// NAND is the result of the negation
// of the AND operator. Where or means
// if two of the two inputs are HIGH
// output HIGH.
module NAND(A, B, Y);
specify
	specparam tpd= 2.3; //datasheet sn74lvc1g00 // CL = 15 pF
	// 0.8 - 3.8 .... 1.5 range middle  so 0.8 + 1.5 = 2.3 ns
		(A*> Y) = (tpd, tpd); //tRise,tFall typ
		(B*> Y) = (tpd, tpd); //tRise,tFall typ
endspecify
// From here is the normal cmos_cells
input A, B;
output Y;
assign Y = ~(A & B);
endmodule


// Not and = NAND - 3 entries
// NAND is the result of the negation
// of the AND operator. Where or means
// if two of the two inputs are HIGH
// output HIGH.
module NAND3(A, B, C,  Y);
specify
	specparam tpd= 6.0; //datasheet 74HCT10 // CL = 15 pF
		(A*> Y) = (tpd, tpd); //tRise,tFall typ
		(B*> Y) = (tpd, tpd); //tRise,tFall typ
		(C*> Y) = (tpd, tpd); //tRise,tFall typ
endspecify
// From here is the normal cmos_cells
input A, B, C;
output Y;
assign Y = ~(A & B & C);
endmodule


// Not or = NOR - 2 entries
// NOR is the result of the negation
// of the OR operator. Where or means
// if one of the two inputs is HIGH
// output HIGH.
module NOR(A, B, Y);
specify
	specparam tpd= 6.0; //datasheet MC74HC02A-D less than 6.0 ns for CL = 15 pF
		(A*> Y) = (tpd, tpd); //tRise,tFall typ
		(B*> Y) = (tpd, tpd); //tRise,tFall typ
endspecify
// From here is the normal cmos_cells
input A, B;
output Y;
assign Y = ~(A | B);
endmodule


// Not or = NOR - 3 entries
// NOR is the result of the negation
// of the OR operator. Where or means
// if one of the two inputs is HIGH
// output HIGH.
module NOR3(A, B, C, Y);
specify
	specparam tpd= 2.75; //datasheet sn74lvc1g27 CL = 15 pF
	// 1 - 4.5 ... range middle = 1.75 -> 1 + 1.75 = 2.75 ns
		(A*> Y) = (tpd, tpd); //tRise,tFall typ
		(B*> Y) = (tpd, tpd); //tRise,tFall typ
		(C*> Y) = (tpd, tpd); //tRise,tFall typ
endspecify
// From here is the normal cmos_cells
input A, B, C;
output Y;
assign Y = ~(A | B | C);
endmodule


// DFF =  D-type flip-flop = Data type flip-flop
// Flip Flop is a two-state (bi-stable) device, which serves as
// basic memory for sequential logic operations.
module DFF(C, D, Q);
specify
	specparam tpd= 2.5; //datasheet SN74LVC1G79-Q1 // CL = 15 pF
	// 1 - 4 ns ... middle range 1.5 -> 1 + 1.5 = 2.5 ns
		// (C*> Q) = (tpd, tpd); //tRise,tFall typ
		(D*> Q) = (tpd, tpd); //tRise,tFall typ
endspecify
// From here is the normal cmos_cells
input C, D;
output reg Q;
always @(posedge C)
	Q <= D;
endmodule


// And as extra
// DFFSR =  D-type flip-flop set reset = Data type flip-flop set reset
// Flip Flop is a two-state (bi-stable) device, which serves as
// basic memory for sequential logic operations. Whit set reset
module DFFSR(C, D, Q, S, R);
input C, D, S, R;
output reg Q;
always @(posedge C, posedge S, posedge R)
	if (S)
		Q <= 1'b1;
	else if (R)
		Q <= 1'b0;
	else
		Q <= D;
endmodule
`endif
