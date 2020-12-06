`ifndef TB_COUNTER_B32
`define TB_COUNTER_B32


// ##--------------------------------TB_COUNTER_B32------------------------------------
// ##
// ##				 Copyright (C) 2020 by
// ##				 Belinda Brown Ramírez
// ##				 timna.brown@ucr.ac.cr
// ##
// ##-----------------------------------------------------------------------------



// scale time unit (value of one) / precision
`timescale 	1ns				/ 1ps


// includes verilog files
// Can be omitted and called from the testbench
`include "./lib/cmos_cells.v"
`include "./src/counter_b32.v"
`include "./syn/counter_b32_syn.v"
`include "./testers/t_counter_b32.v"

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
wire [31:0] D;

wire [7:0] load;
wire [7:0] rco; //  2^nbits - 1 = #
wire [31:0] Q;

wire [7:0] load_syn;
wire [7:0] rco_syn; //  2^nbits - 1 = #
wire [31:0] Q_syn;


//  Use /*AUTOREGINPUT*/ for create inputs in /*AUTOINST*/ in case inputs, outputs of inout signals
// are not declared.

/*AUTOREGINPUT*/

///////////////////////////////////////////////////////////////////////////////////////////
              ////////////  b32 COUNTER
              ////////////
///////////////////////////////////////////////////////////////////////////////////////////

counter_b32 counter_b32_beh(/*AUTOINST*/
  // outputs
.b32_Q        ( Q[31:0]),
.b32_load     ( load[7:0]),
.b32_rco      ( rco[7:0]),
// inputs
.b32_clk         ( clk),
.b32_reset       ( reset),
.b32_enable   ( enable),
.b32_mode     ( mode), // choose from 00, 01, 10, 11
.b32_D        ( D[31:0])
);


counter_b32_syn counter_b32_synt(/*AUTOINST*/
  // outputs
.b32_Q        ( Q_syn[31:0]),
.b32_load     ( load_syn[7:0]),
.b32_rco      ( rco_syn[7:0]),
// inputs
.b32_clk         ( clk),
.b32_reset       ( reset),
.b32_enable   ( enable),
.b32_mode     ( mode), // choose from 00, 01, 10, 11
.b32_D        ( D[31:0])
);


// tester ...
t_counter_b32 t_counter_b32(/*AUTOINST*/
  // outputs
.b32_clk         ( clk),
.b32_reset       ( reset),
.b32_enable   ( enable),
.b32_mode     ( mode), // choose from 00, 01, 10, 11
.b32_D        ( D[31:0]),

// inputs
.b32_Q        ( Q[31:0]),
.b32_load     ( load[7:0]),
.b32_rco      ( rco[7:0]),

.b32_Q_syn        ( Q_syn[31:0]),
.b32_load_syn     ( load_syn[7:0]),
.b32_rco_syn      ( rco_syn[7:0])
);

endmodule

// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
