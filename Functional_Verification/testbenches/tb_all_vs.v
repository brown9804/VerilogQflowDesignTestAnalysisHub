`ifndef TB_ALL_VS
`define TB_ALL_VS


// ##--------------------------------tb_all_vs------------------------------------
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
`include "./testbenches/tb_scoreboard.v"
`include "./syn/contadorA.v"
`include "./syn/contadorB.v"
`include "./syn/contadorC.v"


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
wire tb_all_vs_enable;
wire [1:0] tb_all_vs_mode;
wire [3:0] tb_all_vs_D;

wire reset, clk;

wire [3:0] scb_Q;
wire scb_rco, scb_load;

/// A, B, C
wire [3:0] C_syn_Q;
wire C_syn_rco, C_syn_load;

///////////////////////////////////////////////////////////////////////////////////////////
              ////////////  Scoreboard
              ////////////
///////////////////////////////////////////////////////////////////////////////////////////

tb_scoreboard scoreboard_all_vs(/*AUTOINST*/
  // outputs
.scb_Q        (scb_Q),
.scb_load     (scb_load),
.scb_rco      (scb_rco),
.clk         (clk),
.reset       (reset),
.tb_enable   (tb_all_vs_enable),
.tb_mode     (tb_all_vs_mode), // choose from 00, 01, 10, 11
.tb_D        (tb_all_vs_D),

// inputs
.C_syn_rco          (C_syn_rco),
.C_syn_load         (C_syn_load),
.C_syn_Q            (C_syn_Q)
);


///////////////////////////////////////////////////////////////////////////////////////////
              ////////////  DUT A
              ////////////
// ///////////////////////////////////////////////////////////////////////////////////////////
//
// counterA_module        DUT_A (/*AUTOINST*/
// // outputs
// .load       (C_syn_load),
// .rco        (C_syn_rco),
// .Q          (C_syn_Q),
//   //inputs
// .clk        (clk),
// .reset      (reset),
// .enable     (tb_all_vs_enable),
// .mode       (tb_all_vs_mode),
// .D          (tb_all_vs_D)
// );
//


// ///////////////////////////////////////////////////////////////////////////////////////////
//               ////////////  DUT B
//               ////////////
// ///////////////////////////////////////////////////////////////////////////////////////////
counterB_module       DUT_B (/*AUTOINST*/
// outputs
.load       (C_syn_load),
.rco        (C_syn_rco),
.Q          (C_syn_Q),
  //inputs
.clk        (clk),
.reset      (reset),
.enable     (tb_all_vs_enable),
.mode       (tb_all_vs_mode),
.D          (tb_all_vs_D)
);

// // ///////////////////////////////////////////////////////////////////////////////////////////
// //               ////////////  DUT C
// //               ////////////
// // ///////////////////////////////////////////////////////////////////////////////////////////
// counterC_module         DUT_C (/*AUTOINST*/
// // outputs
// .load       (C_syn_load),
// .rco        (C_syn_rco),
// .Q          (C_syn_Q),
//   //inputs
// .clk        (clk),
// .reset      (reset),
// .enable     (tb_all_vs_enable),
// .mode       (tb_all_vs_mode),
// .D          (tb_all_vs_D)
// );
//


endmodule

// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
