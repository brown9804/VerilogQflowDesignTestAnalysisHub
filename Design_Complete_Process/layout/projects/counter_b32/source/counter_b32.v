// ##--------------------------------COUNTER_B32------------------------------------
// ##
// ##        Copyright (C) 2020 by
// ##        Belinda Brown Ramírez
// ##        timna.brown@ucr.ac.cr
// ##
// ##-----------------------------------------------------------------------------
`ifndef COUNTER_B32
`define COUNTER_B32

// Counter general design
// considering:
// Count up.
// Count down.
// Count three at a time down.
// Parallel charging.
`include "./counter_b4.v"



module counter_b32(
input wire b32_enable,
input wire b32_clk,
input wire b32_reset,
input wire [1:0] b32_mode, // choose from 00, 01, 10, 11
input wire [31:0] b32_D,
output reg [7:0] b32_load,
output reg [7:0] b32_rco, //  2^nbits - 1 = #
output reg [31:0] b32_Q
);

wire [31:0] mem_temp;
wire [7:0] b32_load_temp;
wire [7:0] b32_rco_temp;

counter_b4 counter_0b3(/*AUTOINST*/
// inputs
.b4_enable   ( b32_enable),
.b4_clk         ( b32_clk),
.b4_reset       ( b32_reset),
.b4_mode     ( b32_mode), // choose from 00, 01, 10, 11
.b4_D        ( b32_D[3:0]),
  // outputs
.b4_load     ( b32_load_temp[0]),
.b4_rco      ( b32_rco_temp[0]),
.b4_Q        ( mem_temp[3:0])
);

counter_b4 counter_4b7(/*AUTOINST*/
// inputs
.b4_enable   ( b32_enable),
.b4_clk         ( b32_clk),
.b4_reset       ( b32_reset),
.b4_mode     ( b32_mode), // choose from 00, 01, 10, 11
.b4_D        ( b32_D[7:4]),
  // outputs
.b4_load     ( b32_load_temp[1]),
.b4_rco      ( b32_rco_temp[1]),
.b4_Q        ( mem_temp[7:4])
);


counter_b4 counter_8b11(/*AUTOINST*/
// inputs
.b4_enable   ( b32_enable),
.b4_clk         ( b32_clk),
.b4_reset       ( b32_reset),
.b4_mode     ( b32_mode), // choose from 00, 01, 10, 11
.b4_D        ( b32_D[11:8]),
  // outputs
.b4_load     ( b32_load_temp[2]),
.b4_rco      ( b32_rco_temp[2]),
.b4_Q        ( mem_temp[11:8])
);


counter_b4 counter_12b15(/*AUTOINST*/
.b4_enable   ( b32_enable),
// inputs
.b4_clk         ( b32_clk),
.b4_reset       ( b32_reset),
.b4_mode     ( b32_mode), // choose from 00, 01, 10, 11
.b4_D        ( b32_D[15:12]),
  // outputs
.b4_load     ( b32_load_temp[3]),
.b4_rco      ( b32_rco_temp[3]),
.b4_Q        ( mem_temp[15:12])
);



counter_b4 counter_16b19(/*AUTOINST*/
// inputs
.b4_enable   ( b32_enable),
.b4_clk         ( b32_clk),
.b4_reset       ( b32_reset),
.b4_mode     ( b32_mode), // choose from 00, 01, 10, 11
.b4_D        ( b32_D[19:16]),
  // outputs
.b4_load     ( b32_load_temp[4]),
.b4_rco      ( b32_rco_temp[4]),
.b4_Q        ( mem_temp[19:16])
);


counter_b4 counter_20b23(/*AUTOINST*/
// inputs
.b4_clk         ( b32_clk),
.b4_reset       ( b32_reset),
.b4_enable   ( b32_enable),
.b4_mode     ( b32_mode), // choose from 00, 01, 10, 11
.b4_D        ( b32_D[23:20]),
  // outputs
.b4_load     ( b32_load_temp[5]),
.b4_rco      ( b32_rco_temp[5]),
.b4_Q        ( mem_temp[23:20])
);

counter_b4 counter_24b27(/*AUTOINST*/
// inputs
.b4_enable   ( b32_enable),
.b4_clk         ( b32_clk),
.b4_reset       ( b32_reset),
.b4_mode     ( b32_mode), // choose from 00, 01, 10, 11
.b4_D        ( b32_D[27:24]),
  // outputs
.b4_load     ( b32_load_temp[6]),
.b4_rco      ( b32_rco_temp[6]),
.b4_Q        ( mem_temp[27:24])
);


counter_b4 counter_28b31(/*AUTOINST*/
// inputs
.b4_enable   ( b32_enable),
.b4_clk         ( b32_clk),
.b4_reset       ( b32_reset),
.b4_mode     ( b32_mode), // choose from 00, 01, 10, 11
.b4_D        ( b32_D[31:28]),
  // outputs
.b4_load     ( b32_load_temp[7]),
.b4_rco      ( b32_rco_temp[7]),
.b4_Q        ( mem_temp[31:28])

);

always @(*) begin
 b32_Q[3:0] = mem_temp[3:0];
 b32_Q[7:4] = mem_temp[7:4];
 b32_Q[11:8] = mem_temp[11:8];
 b32_Q[15:12] = mem_temp[15:12];
 b32_Q[19:16] = mem_temp[19:16];
 b32_Q[23:20] = mem_temp[23:20];
 b32_Q[27:24] = mem_temp[27:24];
 b32_Q[31:28] = mem_temp[31:28];

b32_rco = b32_rco_temp;
b32_load = b32_load_temp;

end


endmodule


// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
