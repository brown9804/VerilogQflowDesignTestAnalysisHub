`ifndef TB_TOP
`define TB_TOP


// ##--------------------------------tb_top------------------------------------
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
`include "./testbenches/tb_counter.v"
`include "./syn/contador_synt.v"


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
wire enable;
wire [1:0] mode;
wire [3:0] D;

wire reset, clk;

wire [3:0]  Q;
wire  rco,  load;

/// A, B, C
wire [3:0] Q_syn;
wire rco_syn, load_syn;

///////////////////////////////////////////////////////////////////////////////////////////
              ////////////  Scoreboard
              ////////////
///////////////////////////////////////////////////////////////////////////////////////////

tb_scoreboard scoreboard_top(/*AUTOINST*/
  // outputs
. Q        ( Q),
. load     ( load),
. rco      ( rco),
///////////////////////
.clk         (clk),
.reset       (reset),
.enable   (enable),
.mode     (mode), // choose from 00, 01, 10, 11
.D        (D),

// inputs
.rco_syn          (rco_syn),
.load_syn         (load_syn),
.Q_syn            (Q_syn)
);


/////////////////////////////////////////////////////////////////////////////////////////
              //////////  Counter
              //////////
///////////////////////////////////////////////////////////////////////////////////////////

contador_synt      counter_synt (/*AUTOINST*/
// outputs
.load       (load_syn),
.rco        (rco_syn),
.Q          (Q_syn),
  //inputs
.clk        (clk),
.reset      (reset),
.enable     (enable),
.mode       (mode),
.D          (D)
);

wire DFF_test;
DFF DFF_test(
.C (clk),
.D (D),
.Q (DFF_test)
);




endmodule

// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
