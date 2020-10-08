`ifndef COUNTER
`define COUNTER

// ##--------------------------------counter------------------------------------
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

module counter (
input wire enable,
input wire clk,
input wire reset,
input wire [1:0]  mode, // choose from 00, 01, 10, 11
input wire [3:0]  D,
output reg  load,
output reg  rco, //  2^nbits - 1 = #
output reg [3:0]  Q
);


reg [3:0] mem;
reg wload, wrco;

always@(posedge  clk) begin
  if ( reset == 1) begin
     load <= 0; // label  load  mode ON/OFF
     rco <= 0; // Ripple-Carry Out
     mem <= 4'b00;
  end // end on -> reset == 1 clean data

else begin // reset == 0
  if ( enable == 0) begin
     mem <= 4'bZZ;
     load <= 0;
     rco <= 0;
  end // end if  enable == 0 &  reset == 0 -> Q = zzzz
  else begin // if enable == 1
  // Operation modes
  // MODE 00
  // MODE 01
  // MODE 10
  // MODE 11

  // MODE = 00 − > Q + 3
  case(mode)
   2'b00:   begin
         mem <= mem + 3;
         wload <= 0;
    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1) || (mem >= 13))begin // next stage
           wrco <= 1;
        end //  rco == 1

        else begin // same stage
           wrco <= 0;
        end //  rco ==0
      end // end mode 00


    // MODE = 01 − > Q - 1
    2'b01:  begin
         mem <= mem - 1;
         wload <= 0;
    //////////////////////////// * ////////////////////
        if (mem == (2**4 - 1))begin // next stage
           wrco <= 1;
        end //  rco == 1

        else begin // same stage
           wrco <= 0;
        end //  rco ==0
       end // end mode 01


  // MODE = 10 − > Q + 1
    2'b10: begin

       mem <= mem + 1;
       wload <= 0;
  //////////////////////////// * ////////////////////
      if (mem == (2**4 - 1))begin // next stage
         wrco <= 1;
      end //  rco == 1

      else begin // same stage
         wrco <= 0;
      end //  rco ==0
    end // end mode 10


   // MODE = 11 − > D
    2'b11: begin
       mem <=  D;
       wrco <= 0;
       wload <= 1; // charging
  //////////////////////////// * ////////////////////
      if (mem == (2**4 - 1)) begin // next stage
         wrco <= 1;
      end //  rco == 1

      else begin // same stage
         wrco <= 0;
      end //  rco ==0
    end // end mode 11


     default: begin //  mode != 00,01,10,11
        mem <= mem;
     end // end default
    endcase // end case classif == 0 or classif == 1

  end // end if  enable on
end // end else zz
end // end  clk

always @(*) begin
  Q = mem;
  load = wload;
  rco = wrco;
end

endmodule


// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
