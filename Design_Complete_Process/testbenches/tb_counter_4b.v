`ifndef TB_COUNTER_4B
`define TB_COUNTER_4B


// ##--------------------------------tb_COUNTER_4B------------------------------------
// ##
// ##				 Copyright (C) 2020 by
// ##				 Belinda Brown Ramírez
// ##				 timna.brown@ucr.ac.cr
// ##
// ##-----------------------------------------------------------------------------



// scale time unit (value of one) / precision
`timescale 	1ns				/ 1ns


// includes verilog files
// Can be omitted and called from the testbench
`include "./lib/cmos_cells.v"
`include "./src/counter_4b.v"
`include "./syn/counter_4b_syn.v"
`include "./testers/t_counter_4b.v"

module TestBench; // Testbench
// Usually the signals in the test bench are wires.
// They do not store a value, they are handled by other module instances.
// Since they require matching the size of the inputs and outputs, they must be assigned their size
// defined in the modules

// If you define quantity format, it is recommended to keep it in the same format being the
// same used in the module for the number of bits - [1: 0] ---, another way to do it is with
// [0: 1]

// We are going to use AUTOINST: It is responsible for replacing the connections (considering it is HDL)
// pin to an instance (module) with variables as they change over time automatically in the instantiated module

// It's needed /*AUTOWIRE*/ because: Creates wires for outputs that ins't declare

/*AUTOWIRE*/

wire  enable;
wire  clk;
wire  reset;
wire [1:0] mode; // choose from 00, 01, 10, 11
wire [3:0] D;

wire  load;
wire  rco; //  2^nbits - 1 = #
wire [3:0] Q;

wire  load_syn;
wire  rco_syn; //  2^nbits - 1 = #
wire [3:0] Q_syn;


//  Use /*AUTOREGINPUT*/ for create inputs in /*AUTOINST*/ in case inputs, outputs of inout signals
// are not declared.

/*AUTOREGINPUT*/

///////////////////////////////////////////////////////////////////////////////////////////
              ////////////  b4 COUNTER
              ////////////
///////////////////////////////////////////////////////////////////////////////////////////

counter_b4 counter_b4_beh(/*AUTOINST*/
  // outputs
.b4_Q        ( Q),
.b4_load     ( load),
.b4_rco      ( rco),
// inputs
.b4_clk         ( clk),
.b4_reset       ( reset),
.b4_enable   ( enable),
.b4_mode     ( mode), // choose from 00, 01, 10, 11
.b4_D        ( D)
);


counter_b4_syn counter_b4_syn(/*AUTOINST*/
  // outputs
.b4_Q        ( Q_syn),
.b4_load     ( load_syn),
.b4_rco      ( rco_syn),
// inputs
.b4_clk         ( clk),
.b4_reset       ( reset),
.b4_enable   ( enable),
.b4_mode     ( mode), // choose from 00, 01, 10, 11
.b4_D        ( D)
);


// tester ...
t_counter_b4 t_counter_b4(/*AUTOINST*/
  // outputs
.b4_clk         ( clk),
.b4_reset       ( reset),
.b4_enable   ( enable),
.b4_mode     ( mode), // choose from 00, 01, 10, 11
.b4_D        ( D),

// inputs
.b4_Q        ( Q),
.b4_load     ( load),
.b4_rco      ( rco),

.b4_Q_syn        ( Q_syn),
.b4_load_syn     ( load_syn),
.b4_rco_syn      ( rco_syn)
);

endmodule

// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
