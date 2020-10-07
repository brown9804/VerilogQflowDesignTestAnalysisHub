`ifndef SCOREBOARD
`define SCOREBOARD

// ##--------------------------------scoreboard------------------------------------
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

module scoreboard_counter (
input wire scb_enable,
input wire scb_clk,
input wire scb_reset,
input wire [1:0] scb_mode, // choose from 00, 01, 10, 11
input wire [3:0] scb_D,
output reg scb_load,
output reg scb_rco, //  2^nbits - 1 = #
output reg [3:0] scb_Q
);


reg [3:0] mem;

always@(posedge scb_clk) begin
  if (scb_reset == 1) begin
    scb_load <= 0; // label scb_load scb_mode ON/OFF
    scb_rco <= 0; // Ripple-Carry Out
    scb_Q <= 4'b00;
  end // end on -> reset == 1 clean data

else begin // reset == 0
  if (scb_enable == 0) begin
    scb_Q <= 4'bZZ;
    scb_load <= 0;
    scb_rco <= 0;
  end // end if scb_enable == 0 & scb_reset == 0 -> Q = zzzz
  else begin // if enable == 1
    // MODO = 00 − > Q + 3
    // MODO = 01 − > Q - 1
    // MODO = 10 − > Q + 1
    // MODO = 11 − > D
  if (scb_mode == 2'b00) begin
        mem <= mem + 3;
        scb_load <= 0;
    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1) || (mem >= 13))begin // next stage
          scb_rco <= 1;
        end // scb_rco == 1

        else begin // same stage
          scb_rco <= 0;
        end // scb_rco ==0
  end // end scb_mode 00




  else if (scb_mode == 2'b01) begin
        mem <= mem - 1;
        scb_load <= 0;
    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1))begin // next stage
          scb_rco <= 1;
        end // scb_rco == 1

        else begin // same stage
          scb_rco <= 0;
        end // scb_rco ==0
  end // end scb_mode 01

  else if (scb_mode == 2'b10) begin
        mem <= mem + 1;
        scb_load <= 0;
    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1))begin // next stage
          scb_rco <= 1;
        end // scb_rco == 1

        else begin // same stage
          scb_rco <= 0;
        end // scb_rco ==0
  end // end scb_mode 10

  else if (scb_mode == 2'b11) begin
        mem <= scb_D;
        scb_rco <= 0;
        scb_load <= 1; // charging

    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1)) begin // next stage
          scb_rco <= 1;
        end // scb_rco == 1

        else begin // same stage
          scb_rco <= 0;
        end // scb_rco ==0
  end // end scb_mode 11

  else begin // scb_mode != 00,01,10,11
        mem <= mem;
  end // end else scb_mode

  end // end if scb_enable on
end // end else zz
end // end scb_clk

always @(*) begin
 scb_Q = mem;
end

endmodule


// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
