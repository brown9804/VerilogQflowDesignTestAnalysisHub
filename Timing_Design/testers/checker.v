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
	  if (( Q == Q_syn) && ( rco == rco_syn) && ( load == load_syn)) begin
      $fdisplay(log, "PASS");
      end
    else begin
      $fdisplay(log, "Time=%.0f Error! DUT: Q_syn=%d, rco_syn=%b, load_syn=%b, scoreboard:  Q=%d,  rco=%b,  load=%b", $time, Q_syn, rco_syn, load_syn,  Q,  rco,  load);
      end
  end // repeat
endtask


// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
