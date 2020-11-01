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
endmodule


// -----------------------------------------------
// 8-bit curly adder
// -----------------------------------------------
// Inputs: a, b, ci
// Outputs: co, s
module SUM_RIZADO(  
  input wire [7:0] a, // 8 bits 
  input wire [7:0] b, // 8 bits
  input wire ci, 
  output reg [7:0] s, // 8 bits
  output reg co
);
  parameter
    PwrC = 0;
  // for 8 bits 
  reg wc0, wc1, wc2, wc3, wc4, wc5, wc6, wc7;
  reg ws0, ws1, ws2, ws3, ws4, ws5, ws6, ws7;

  sumador_completo sumador_completo0(
    //outputs
    .s      (ws0),
    .co     (wc0),
    //inputs
    .a      (a[0]),
    .b      (b[0]),
    .ci     (ci)
  );

  sumador_completo sumador_completo1(
    //outputs
    .s      (ws1),
    .co     (wc1),
    //inputs
    .a      (a[1]),
    .b      (b[1]),
    .ci     (wc0)
  );

  sumador_completo sumador_completo2(
    //outputs
    .s      (ws2),
    .co     (wc2),
    //inputs
    .a      (a[2]),
    .b      (b[2]),
    .ci     (wc1)
  );

  sumador_completo sumador_completo3(
    //outputs
    .s      (ws3),
    .co     (wc3),
    //inputs
    .a      (a[3]),
    .b      (b[3]),
    .ci     (wc2)
  );


  sumador_completo sumador_completo4(
    //outputs
    .s      (ws4),
    .co     (wc4),
    //inputs
    .a      (a[4]),
    .b      (b[4]),
    .ci     (wc3)
  );


  sumador_completo sumador_completo5(
    //outputs
    .s      (ws5),
    .co     (wc5),
    //inputs
    .a      (a[5]),
    .b      (b[5]),
    .ci     (wc4)
  );


  sumador_completo sumador_completo6(
    //outputs
    .s      (ws6),
    .co     (wc6),
    //inputs
    .a      (a[6]),
    .b      (b[6]),
    .ci     (wc5)
  );

  sumador_completo sumador_completo7(
    //outputs
    .s      (ws7),
    .co     (wc7),
    //inputs
    .a      (a[7]),
    .b      (b[7]),
    .ci     (wc6)
  );

  always@(*) begin
    s = {ws0,ws1,ws2,ws3,ws4,ws5,ws6,ws7,ws8};
    co = wc7;
  end


endmodule

// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
