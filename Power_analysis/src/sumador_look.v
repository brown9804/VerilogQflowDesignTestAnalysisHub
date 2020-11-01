//*************************************************************************
//Sumador de 4 bits con anticipacion de acarreo (carry look-ahead)


// scale time unit (value of one) / precision
`timescale 	1ns				/ 1ps


module SUM4_lookahead(a, b, ci, s, co);
  parameter
    PwrC = 0;

  input [3:0] a,b;
  input ci;
  output [3:0] s;
  output co;

  //g[k] = a[k]&b[k]
  and2_p #(PwrC) g_0(g0,a[0],b[0]);
  and2_p #(PwrC) g_1(g1,a[1],b[1]);
  and2_p #(PwrC) g_2(g2,a[2],b[2]);
  and2_p #(PwrC) g_3(g3,a[3],b[3]);

  //p[k] = a[k]|b[k]
  or2_p #(PwrC) g_4(p0,a[0],b[0]);
  or2_p #(PwrC) g_5(p1,a[1],b[1]);
  or2_p #(PwrC) g_6(p2,a[2],b[2]);
  or2_p #(PwrC) g_7(p3,a[3],b[3]);

  //c0 = g0 + p0*Cin
  and2_p #(PwrC) g_8(x8,ci,p0);
  or2_p #(PwrC)   g_9(c0,g0,x8);

  //c1 = g1 + p1*g0 + p1*p0*Cin
  and3_p #(PwrC) g_10(x10,p1,p0,ci);
  and2_p #(PwrC) g_11(x11,p1,g0);
  or3_p #(PwrC)  g_12(c1,x10,x11,g1);

  //c2 = g2 + p2*g1 + p2*p1*g0 + p2*p1*p0*Cin
  and4_p #(PwrC) g_13(x13,p2,p1,p0,ci);
  and3_p #(PwrC) g_14(x14,p2,p1,g0);
  and2_p #(PwrC) g_15(x15,p2,g1);
  or4_p  #(PwrC) g_16(c2,x13,x14,x15,g2);

  //c3 = g3 + p3*g2 + p3*p2*g1 + p3*p2*p1*g0 + p3*p2*p1*p0*cin
  and5_p #(PwrC) g_17(x17,p3,p2,p1,p0,ci);
  and4_p #(PwrC) g_18(x18,p3,p2,p1,g0);
  and3_p #(PwrC) g_19(x19,p3,p2,g1);
  and2_p #(PwrC) g_20(x20,p3,g2);
  or5_p  #(PwrC) g_21(co,x20,x19,x18,x17,g3);

  //s[k] = p[k]^g[k]^c[k-1]
  xor3_p #(PwrC) g_22(s[0],p0,g0,ci);
  xor3_p #(PwrC) g_23(s[1],p1,g1,c0);
  xor3_p #(PwrC) g_24(s[2],p2,g2,c1);
  xor3_p #(PwrC) g_25(s[3],p3,g3,c2);

endmodule

//*************************************************************************
//Sumador de 8 bits a partir de modulos con anticipacion de acarreo de 4 bits(carry look-ahead)

module SUM8_LOOKAHEAD(a, b, ci, s, co);
  parameter
    PwrC = 0;

  input   [7:0]   a, b;
  input           ci;
  output  [7:0]   s;
  output          co;

  wire    [7:0]   a, b, s;
  wire    [3:0]   a_L, a_H, b_L, b_H, s_L, s_H;
  wire            ci, co;

  SUM4_lookahead  #(PwrC)   sum4look_L(a_L, b_L, ci, s_L, co_L);
  SUM4_lookahead  #(PwrC)   sum4look_H(a_H, b_H, co_L, s_H, co);

  assign a_L[3:0]=a[3:0];
  assign b_L[3:0]=b[3:0];
  assign a_H[3:0]=a[7:4];
  assign b_H[3:0]=b[7:4];
  assign s[3:0]=s_L[3:0];
  assign s[7:4]=s_H[3:0];

endmodule
