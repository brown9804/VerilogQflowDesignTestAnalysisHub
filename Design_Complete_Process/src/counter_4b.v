`ifndef COUNTER_4B
`define COUNTER_4B

// ##--------------------------------COUNTER_4B------------------------------------
// ##
// ##				 Copyright (C) 2020 by
// ##				 Belinda Brown Ramírez
// ##				 timna.brown@ucr.ac.cr
// ##
// ##-----------------------------------------------------------------------------

// Counter general design
// considering:
// Count up.
// Count down.
// Count three at a time down.
// Parallel charging.

// Scoreboard it's the ideal output in order to compare if
// the synthesizable files are working as expected.

module counter_4b (
input wire 4b_enable,
input wire 4b_clk,
input wire 4b_reset,
input wire [1:0] 4b_mode, // choose from 00, 01, 10, 11
input wire [3:0] 4b_D,
output reg 4b_load,
output reg 4b_rco, //  2^nbits - 1 = #
output reg [3:0] 4b_Q
);


reg [3:0] mem;

always@(posedge 4b_clk) begin
  if (4b_reset == 1) begin
    4b_load <= 0; // label 4b_load 4b_mode ON/OFF
    4b_rco <= 0; // Ripple-Carry Out
    4b_Q <= 4'b00;
  end // end on -> reset == 1 clean data

else begin // reset == 0
  if (4b_enable == 0) begin
    4b_Q <= 4'b00;
    4b_load <= 0;
    4b_rco <= 0;
  end // end if 4b_enable == 0 & 4b_reset == 0 -> Q = 00
  else begin // if enable == 1
    // MODO = 00 − > Q + 3
    // MODO = 01 − > Q - 1
    // MODO = 10 − > Q + 1
    // MODO = 11 − > D
  if (4b_mode == 2'b00) begin
        mem <= mem + 3;
        4b_load <= 0;
    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1) || (mem >= 13))begin // next stage
          4b_rco <= 1;
        end // 4b_rco == 1

        else begin // same stage
          4b_rco <= 0;
        end // 4b_rco ==0
  end // end 4b_mode 00




  else if (4b_mode == 2'b01) begin
        mem <= mem - 1;
        4b_load <= 0;
    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1))begin // next stage
          4b_rco <= 1;
        end // 4b_rco == 1

        else begin // same stage
          4b_rco <= 0;
        end // 4b_rco ==0
  end // end 4b_mode 01

  else if (4b_mode == 2'b10) begin
        mem <= mem + 1;
        4b_load <= 0;
    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1))begin // next stage
          4b_rco <= 1;
        end // 4b_rco == 1

        else begin // same stage
          4b_rco <= 0;
        end // 4b_rco ==0
  end // end 4b_mode 10

  else if (4b_mode == 2'b11) begin
        mem <= 4b_D;
        4b_rco <= 0;
        4b_load <= 1; // charging

    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1)) begin // next stage
          4b_rco <= 1;
        end // 4b_rco == 1

        else begin // same stage
          4b_rco <= 0;
        end // 4b_rco ==0
  end // end 4b_mode 11

  else begin // 4b_mode != 00,01,10,11
        mem <= mem;
  end // end else 4b_mode

  end // end if 4b_enable on
end // end else zz
end // end 4b_clk

always @(*) begin
 4b_Q = mem;
end

endmodule


// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
