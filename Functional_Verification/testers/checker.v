`ifndef CHECHER
`define CHECHER

// ##--------------------------------checker------------------------------------
// ##
// ##				 Copyright (C) 2020 by
// ##				 Belinda Brown Ramírez
// ##				 timna.brown@ucr.ac.cr
// ##
// ##-----------------------------------------------------------------------------

task checker;
// comparing modules outputs with scoreboards inputs

input integer iteration;

  repeat (iteration) @ (posedge clk) begin
	  if ((scb_Q == C_syn_Q) && (scb_rco == C_syn_rco) && (scb_load == C_syn_load)) begin
      $fdisplay(log, "PASS");
      end
    else begin
      $fdisplay(log, "Time=%.0f Error! DUT: C_syn_Q=%d, C_syn_rco=%b, C_syn_load=%b, scoreboard: scb_Q=%d, scb_rco=%b, scb_load=%b", $time, C_syn_Q, C_syn_rco, C_syn_load, scb_Q, scb_rco, scb_load);
      end
  end // repeat
endtask


// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
