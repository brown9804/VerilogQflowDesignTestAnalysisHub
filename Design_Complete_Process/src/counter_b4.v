// ##--------------------------------COUNTER_B4------------------------------------
// ##
// ##        Copyright (C) 2020 by
// ##        Belinda Brown Ramírez
// ##        timna.brown@ucr.ac.cr
// ##
// ##-----------------------------------------------------------------------------

// Counter general design
// considering:
// Count up.
// Count down.
// Count three at a time down.
// Parallel charging.

`ifndef COUNTER_B4
`define COUNTER_B4


module counter_b4(
input wire b4_enable,
input wire b4_clk,
input wire b4_reset,
input wire [1:0] b4_mode, // choose from 00, 01, 10, 11
input wire [3:0] b4_D,
output reg b4_load,
output reg b4_rco, //  2^nbits - 1 = #
output reg [3:0] b4_Q
);


reg [3:0] mem;

always @(posedge b4_clk) begin
    if (b4_reset == 1) begin
      b4_load <= 0; // label b4_load b4_mode ON/OFF
      b4_rco <= 0; // Ripple-Carry Out
      b4_Q <= 4'b0000;
    end // end on -> reset == 1 clean data

  else begin // reset == 0

    if (b4_enable == 0) begin
      b4_Q <= 4'b0000;
      b4_load <= 0;
      b4_rco <= 0;
    end // end if b4_enable == 0 & b4_reset == 0 -> Q = 00
    else begin // if enable == 1
      // MODO = 00 − > Q + 3
      // MODO = 01 − > Q - 1
      // MODO = 10 − > Q + 1
      // MODO = 11 − > D
////////////////
////////// CASES 
////////////////

   case(b4_mode)

    2'b00:   begin
      mem <= mem + 3;
      b4_load <= 0;
      //  * //
      if (mem == (2**4 - 1) || (mem >= 13)) begin // next stage
        b4_rco <= 1;
      end // b4_rco == 1

      else begin // same stage
        b4_rco <= 0;
      end // b4_rco ==0
    end // end mode 0 

    //////////////////////////// * ////////////////////

    2'b01: begin
      mem <= mem - 1;
      b4_load <= 0;
        //  * //
      if (mem == (2**4 - 1))begin // next stage
        b4_rco <= 1;
      end // b4_rco == 1

      else begin // same stage
        b4_rco <= 0;
      end // b4_rco ==0
    end // end mode 01


    //////////////////////////// * ////////////////////

    2'b10: begin
      mem <= mem + 1;
      b4_load <= 0;
      //  * //
      if (mem == (2**4 - 1))begin // next stage
        b4_rco <= 1;
      end // b4_rco == 1

      else begin // same stage
        b4_rco <= 0;
      end // b4_rco ==0
    end // end mode 10 

    //////////////////////////// * ////////////////////

    2'b11: begin 
      mem <= b4_D;
      b4_load <= 1; // charging
      b4_rco <= 0;
    end // end mode 11 last mode 

    //////////////////////////// * ////////////////////
    default: begin // b4_mode != 00,01,10,11
      mem <= mem;
    end

   endcase // end cases 

    end // end if b4_enable on
  end // end else zz
end // end b4_clk

always @(*) begin
 b4_Q = mem;
end

always @(negedge b4_clk) begin
   case(b4_mode)

   2'b11: begin 
     b4_rco <= b4_rco - 1;
   end // end charge mode

  default: begin
    b4_rco <= b4_rco;
  end

endcase

end 

endmodule


// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif