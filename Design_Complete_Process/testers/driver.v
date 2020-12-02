`ifndef DRIVER
`define DRIVER

// // It's the stimulador -> like the tester
// // ##--------------------------------driver------------------------------------
// // ##
// // ##				 Copyright (C) 2020 by
// // ##				 Belinda Brown Ramírez
// // ##				 timna.brown@ucr.ac.cr
// // ##
// // ##-----------------------------------------------------------------------------
// //

// task t_drv_initial;
  repeat (2) begin // 1 0 1  1 0 1
  @(negedge b4_clk);
    b4_reset <= 1;
    b4_enable <= 0;
  @(negedge b4_clk);
    b4_reset <= 0;
    b4_enable <= 0;
  @(negedge b4_clk);
    b4_reset <= 0;
    b4_enable <= 1;
  end // end repeat

// endtask

/// entries
task t_drv_on;
  input integer ITERATIONS;
  repeat (ITERATIONS) begin
    @(negedge b4_clk) begin
      b4_enable <= 1;
      b4_mode <= 2'b00;
      b4_D <= 4'b0001;
    end // ~ b4_clk

    @(negedge b4_clk) begin
      b4_enable <= 1;
      b4_mode <= 2'b00;
      b4_D <= 4'b0010;
    end // ~ b4_clk

    @(negedge b4_clk) begin
      b4_enable <= 1;
      b4_mode <= 2'b01;
      b4_D <= 4'b1000;
    end // ~ b4_clk

    @(negedge b4_clk) begin
      b4_enable <= 1;
      b4_mode <= 2'b10;
      b4_D <= 4'b0001;
    end // ~ b4_clk

    @(negedge b4_clk) begin
      b4_enable <= 1;
      b4_mode <= 2'b11;
      b4_D <= 4'b0000;
    end // ~ b4_clk

    @(negedge b4_clk) begin
      b4_enable <= 1;
      b4_mode <= 2'b00;
      b4_D <= 4'b1111;
    end // ~ b4_clk
  end // end repeat
endtask // end task



task t_loading;
input integer ITERATIONS;
begin
b4_mode <= 2'b11;
repeat (ITERATIONS) begin
  @(negedge b4_clk) begin
    b4_enable <= 1;
    b4_D <= 4'b1010;
    @(negedge b4_clk);
    if (b4_mode == 2'b11) begin
      b4_mode <= 2'b10;
    end
  end // ~ b4_clk
end // repeat
end // end begin
endtask

// // Local Variables:
// // verilog-library-directories:("."):
// // verilog-auto-wire-type:\"logic\"
// // End:
//
`endif
