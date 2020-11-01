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
    wire w0,w1,w2,w3,w4,w5;
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
    .b     (b)
  );

  /////////
  /// w3
  ////////
  and2_p andw3(
    // Outputs
    .a     ( w3),
    //Inputs
    .c     (b),
    .b     (a)
  );

  /////////
  /// w4
  ////////
  xor2_p xorw4(
    // Outputs
    .a     ( w4),
    //Inputs
    .c     (w0),
    .b     (ci)
  );

  /////////
  /// w5
  ////////
    or3_p orw5(
    // Outputs
    .a     ( w5),
    //Inputs
    .b     (w1),
    .c     (w2),
    .d     (w3)
  );

  always@(*) begin
   s = w4;
   co = w5;
 end

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
  wire ws0, ws1, ws2, ws3, ws4, ws5, ws6, ws7;
  wire [7:0] carry_8bit;
  
  sumador_completo sumador_completo0(
    //outputs
    .s      (ws0),
    .co     (carry_8bit[0]),
    //inputs
    .a      (a[0]),
    .b      (b[0]),
    .ci     (ci)
  );

  sumador_completo sumador_completo1(
    //outputs
    .s      (ws1),
    .co     (carry_8bit[1]),
    //inputs
    .a      (a[1]),
    .b      (b[1]),
    .ci     (carry_8bit[0])
  );

  sumador_completo sumador_completo2(
    //outputs
    .s      (ws2),
    .co     (carry_8bit[2]),
    //inputs
    .a      (a[2]),
    .b      (b[2]),
    .ci     (carry_8bit[1])
  );

  sumador_completo sumador_completo3(
    //outputs
    .s      (ws3),
    .co     (carry_8bit[3]),
    //inputs
    .a      (a[3]),
    .b      (b[3]),
    .ci     (carry_8bit[2])
  );


  sumador_completo sumador_completo4(
    //outputs
    .s      (ws4),
    .co     (carry_8bit[4]),
    //inputs
    .a      (a[4]),
    .b      (b[4]),
    .ci     (carry_8bit[3])
  );


  sumador_completo sumador_completo5(
    //outputs
    .s      (ws5),
    .co     (carry_8bit[5]),
    //inputs
    .a      (a[5]),
    .b      (b[5]),
    .ci     (carry_8bit[4])
  );


  sumador_completo sumador_completo6(
    //outputs
    .s      (ws6),
    .co     (carry_8bit[6]),
    //inputs
    .a      (a[6]),
    .b      (b[6]),
    .ci     (carry_8bit[5])
  );

  sumador_completo sumador_completo7(
    //outputs
    .s      (ws7),
    .co     (carry_8bit[7]),
    //inputs
    .a      (a[7]),
    .b      (b[7]),
    .ci     (carry_8bit[6])
  );

  always@(*) begin
    co = carry_8bit[7];
    s = {ws0,ws1,ws2,ws3,ws4,ws5,ws6,ws7};
  end


endmodule

// Local Variables:
// verilog-library-directories:("."):
// verilog-auto-wire-type:\"logic\"
// End:

`endif
