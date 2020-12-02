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

wire tb_4b_enable;
wire tb_4b_clk;
wire tb_4b_reset;
wire [1:0] tb_4b_mode; // choose from 00, 01, 10, 11
wire [3:0] tb_4b_D;
wire tb_4b_load;
wire tb_4b_rco; //  2^nbits - 1 = #
wire [3:0] tb_4b_Q;



//  Use /*AUTOREGINPUT*/ for create inputs in /*AUTOINST*/ in case inputs, outputs of inout signals
// are not declared.

/*AUTOREGINPUT*/

///////////////////////////////////////////////////////////////////////////////////////////
              ////////////  4b COUNTER
              ////////////
///////////////////////////////////////////////////////////////////////////////////////////

counter_4b counter_4b_beh(/*AUTOINST*/
  // outputs
.4b_Q        (),
.4b_load     (),
.4b_rco      (),
// inputs
.4b_clk         (),
.reset       (),
.4b_enable   (),
.4b_mode     (), // choose from 00, 01, 10, 11
.4b_D        ()
);


counter_4b_syn counter_4b_syn(/*AUTOINST*/
  // outputs
.4b_Q        (),
.4b_load     (),
.4b_rco      (),
// inputs
.4b_clk         (),
.reset       (),
.4b_enable   (),
.4b_mode     (), // choose from 00, 01, 10, 11
.4b_D        ()
);


// tester ...
t_counter_4b t_counter_4b(/*AUTOINST*/
  // outputs
.4b_clk         (),
.reset       (),
.4b_enable   (),
.4b_mode     (), // choose from 00, 01, 10, 11
.4b_D        (),

// inputs
.4b_Q        (),
.4b_load     (),
.4b_rco      ()
);






endmodule

// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
