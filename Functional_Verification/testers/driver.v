`ifndef DRIVER
`define DRIVER

// // It's the stimulador -> like the tester
//
// // ##--------------------------------driver------------------------------------
// // ##
// // ##				 Copyright (C) 2020 by
// // ##				 Belinda Brown Ramírez
// // ##				 timna.brown@ucr.ac.cr
// // ##
// // ##-----------------------------------------------------------------------------
//

task t_drv_initial;
  repeat (2) begin // 1 0 1  1 0 1
  @(negedge clk);
    reset <= 1;
    tb_enable <= 0;
  @(negedge clk);
    reset <= 0;
    tb_enable <= 0;
  @(negedge clk);
    reset <= 0;
    tb_enable <= 1;
end // end repeat

endtask

/// entries
task t_drv_on;
  input integer ITERATIONS;
  repeat (ITERATIONS) begin
    @(negedge clk) begin
      tb_enable <= 1;
      tb_mode <= 2'b00;
      tb_D <= 4'b0001;
    end // ~ clk

    @(negedge clk) begin
      tb_enable <= 1;
      tb_mode <= 2'b00;
      tb_D <= 4'b0010;
    end // ~ clk

    @(negedge clk) begin
      tb_enable <= 1;
      tb_mode <= 2'b01;
      tb_D <= 4'b1000;
    end // ~ clk

    @(negedge clk) begin
      tb_enable <= 1;
      tb_mode <= 2'b10;
      tb_D <= 4'b0001;
    end // ~ clk

    @(negedge clk) begin
      tb_enable <= 1;
      tb_mode <= 2'b11;
      tb_D <= 4'b0000;
    end // ~ clk

    @(negedge clk) begin
      tb_enable <= 1;
      tb_mode <= 2'b00;
      tb_D <= 4'b1111;
    end // ~ clk
  end // end repeat
endtask // end task



task t_loading;
input integer ITERATIONS;
begin
tb_mode <= 2'b11;
repeat (ITERATIONS) begin
  @(negedge clk) begin
    tb_enable <= 1;
    tb_D <= 4'b1010;
    @(negedge clk);
    if (tb_mode == 2'b11) begin
      tb_mode <= 2'b10;
    end
  end // ~ clk
end // repeat
end // end begin
endtask

// // Local Variables:
// // verilog-library-directories:("."):
// // verilog-auto-wire-type:\"logic\"
// // End:
//
`endif
