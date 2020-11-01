// ----------------------------------------------
// Sumador de 4 bits basado en el sumador MSI 74x283
// ----------------------------------------------

// scale time unit (value of one) / precision
`timescale 	1ns				/ 1ps


module SUM4_logico(a, b, c0, s, c4);
  parameter
    PwrC = 0;

  /***********************************
  a:  sumando a
  b:  sumando b
  co: carry in
  c4: carry out
  s:  resultado
  ***********************************/

  input [3:0] a, b;
  input c0;

  output [3:0] s;
  output c4;

  //gk= a[k]*b[k]
  and2_p  #(PwrC)   g_00(g3, a[3], b[3]);
  and2_p  #(PwrC)   g_02(g2, a[2], b[2]);
  and2_p  #(PwrC)   g_04(g1, a[1], b[1]);
  and2_p  #(PwrC)   g_06(g0, a[0], b[0]);

  //pk= a[k]+b[k]
  or2_p   #(PwrC)   g_01(p3, a[3], b[3]);
  or2_p   #(PwrC)   g_03(p2, a[2], b[2]);
  or2_p   #(PwrC)   g_05(p1, a[1], b[1]);
  or2_p   #(PwrC)   g_07(p0, a[0], b[0]);

  //c4= p3*(g3+p2)*(g3+g2+p1)*(g3+g2+g1+p0)*(g3+g2+g1+g0+c0)
  or2_p   #(PwrC)   g_08(x0, g3, p2);
  or3_p   #(PwrC)   g_09(x1, g3, g2, p1);
  or4_p   #(PwrC)   g_10(x2, g3, g2, g1, p0);
  or5_p   #(PwrC)   g_11(x3, g3, g2, g1, g0, c0);
  and5_p  #(PwrC)   g_12(c4, p3, x0, x1, x2, x3);

  //c3= p2*(g2+p1)*(g2+g1+p0)*(g2+g1+g0+c0)
  or2_p   #(PwrC)   g_13(x4, g2, p1);
  or3_p   #(PwrC)   g_14(x5, g2, g1, p0);
  or4_p   #(PwrC)   g_15(x6, g2, g1, g0, c0);
  and4_p  #(PwrC)   g_16(c3, p2, x4, x5, x6);

  //c2= p1*(g1+p0)*(g1+g0+c0)
  or2_p   #(PwrC)   g_17(x7, g1, p0);
  or3_p   #(PwrC)   g_18(x8, g1, g0, c0);
  and3_p  #(PwrC)   g_19(c2, p1, x7, x8);

  //c1= p0*(g0+c0)
  or2_p   #(PwrC)   g_20(x9, g0, c0);
  and2_p  #(PwrC)   g_21(c1, p0, x9);

  //_gk= gk'
  inv_p   #(PwrC)   g_22(_g3, g3);
  inv_p   #(PwrC)   g_24(_g2, g2);
  inv_p   #(PwrC)   g_26(_g1, g1);
  inv_p   #(PwrC)   g_28(_g0, g0);

  //hsk= pk*gk'
  and2_p  #(PwrC)   g_23(hs3, _g3, p3);
  and2_p  #(PwrC)   g_25(hs2, _g2, p2);
  and2_p  #(PwrC)   g_27(hs1, _g1, p1);
  and2_p  #(PwrC)   g_29(hs0, _g0, p0);

  //s[k]= hsk^ck
  xor2_p  #(PwrC)   g_30(s[3], hs3, c3);
  xor2_p  #(PwrC)   g_31(s[2], hs2, c2);
  xor2_p  #(PwrC)   g_32(s[1], hs1, c1);
  xor2_p  #(PwrC)   g_33(s[0], hs0, c0);

endmodule

// ----------------------------------------------
// Sumador de 8 bits basado en dos sumadores MSI 74x283
// ----------------------------------------------
module SUM8_LOGICO(a, b, ci, s, co);
  parameter
    PwrC = 0;

  input   [7:0]   a, b;
  input           ci;
  output  [7:0]   s;
  output          co;

  wire    [7:0]   a, b, s;
  wire    [3:0]   a_L, a_H, b_L, b_H, s_L, s_H;
  wire            ci, co;

  SUM4_logico #(PwrC) sum4_L(a_L, b_L, ci, s_L, co_L);
  SUM4_logico #(PwrC) sum4_H(a_H, b_H, co_L, s_H, co);

  assign a_L[3:0]=a[3:0];
  assign b_L[3:0]=b[3:0];
  assign a_H[3:0]=a[7:4];
  assign b_H[3:0]=b[7:4];
  assign s[3:0]=s_L[3:0];
  assign s[7:4]=s_H[3:0];
endmodule
