// Belinda Brown Ramírez
// October, 2020
// timna.brown@ucr.ac.cr

`ifndef SUMADOR_RIZADO
`define SUMADOR_RIZADO


// -----------------------------------------------
// One-bit full adder
// -----------------------------------------------
// Inputs: a, b, ci
// Outputs: co, s

module sumador_completo (     // all 1 bit 
  input wire a, 
  input wire b, 
  input wire ci, 
  output reg s, 
  output reg co
);
  parameter
    PwrC = 0;
  // For outputs connections 
    reg w0,w1,w2,w3,w4,w5;

/////////
/// w0
////////
xor2_p xorw0(
  // Outputs
  .a     ( w0),
  //Inputs
  .c     (a),
  .b     (b)
);

/////////
/// w1
////////
and2_p andw1(
  // Outputs
  .a     ( w1),
  //Inputs
  .c     (ci),
  .b     (a)
);

/////////
/// w2
////////
and2_p andw2(
  // Outputs
  .a     ( w2),
  //Inputs
  .c     (ci),
  .b     (a)
);

/////////
/// w3
////////
and2_p andw3(
  // Outputs
  .a     ( w3),
  //Inputs
  .c     (ci),
  .b     (a)
);

/////////
/// w5
////////
xor2_p xorw5(
  // Outputs
  .a     ( w5),
  //Inputs
  .c     (a),
  .b     (b)
);

/////////
/// w6
////////
  or3_p orw6(
  // Outputs
  .a     ( w6),
  //Inputs
  .b     (w1),
  .c     (w2),
  .d     (w3)
);
  
always@(*) begin
  s = w5;
  co = w6;
end
  
endmodule


// -----------------------------------------------
// 8-bit curly adder
// -----------------------------------------------
// Inputs: a, b, ci
// Outputs: co, s
module SUM_RIZADO(  // all 1 bit 
  input wire a, 
  input wire b, 
  input wire ci, 
  output reg s, 
  output reg co
);
  parameter
    PwrC = 0;


endmodule

// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
