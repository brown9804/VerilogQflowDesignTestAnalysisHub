`ifndef TB_SCOREBOARD
`define TB_SCOREBOARD


// ##--------------------------------tb_scoreboard------------------------------------
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
// Cmos
`include "./src/scoreboard.v"

module tb_scoreboard (
  ///////////////////////////////////////////
  input wire C_syn_rco, // from synthesizable counter A, B, C
  input wire C_syn_load,
  input wire [3:0] C_syn_Q,
  ///////////////////////////////////////////
  output reg clk,
  output reg reset,

  output reg [1:0] tb_mode, // choose from 00, 01, 10, 11
  output reg [3:0] tb_D,
  output reg tb_enable,

  output reg scb_load,
  output reg scb_rco, //  2^nbits - 1 = #
  output reg [3:0] scb_Q
  ); // Testbench
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
wire wrco, wload;
wire [3:0] wQ;

////////////// Logic
`include "./testers/driver.v"
`include "./testers/checker.v"


parameter ITERATIONS = 100;
integer log;

initial begin

  $dumpfile("scoreboard.vcd");
  $dumpvars(0);   // "dumpping" variables

  log = $fopen("./log_txt/tb_scoreboard.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time);
  $fdisplay(log, "time=%5d, Starting Reset", $time);

//////// task initial begin

  t_drv_initial();

  $fdisplay(log, "time=%5d, Reset Completed", $time);

  $fdisplay(log, "time=%5d, Starting Test", $time);


  fork
    // t_loading(ITERATIONS);
    t_loading(ITERATIONS);
    checker(ITERATIONS);

  join
  $fdisplay(log, "time=%5d, Test Completed Loading ", $time);
  $fdisplay(log, "time=%5d, Simulation Completed", $time);
  $fclose(log);
  #200 $finish;
end


// clock logic
initial	clk	 			<= 0;			// Initial value to avoid indeterminations
always	#10 clk				<= ~clk;		// toggle every 10ns




///////////////////////////////////////////////////////////////////////////////////////////
              ////////////  Scoreboard
              ////////////
///////////////////////////////////////////////////////////////////////////////////////////

scoreboard_counter scoreboard_ind(/*AUTOINST*/
  // outputs
.scb_Q        (wQ),
.scb_load     (wload),
.scb_rco      (wrco),

// inputs
.scb_clk      (clk),
.scb_reset    (reset),

.scb_enable   (tb_enable),
.scb_mode     (tb_mode), // choose from 00, 01, 10, 11
.scb_D        (tb_D)
);

always @(*) begin
  scb_rco = wrco;
  scb_load = wload;
  scb_Q = wQ;
end



endmodule


// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
