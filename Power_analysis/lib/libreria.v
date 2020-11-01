`include "./lib/definiciones.v"

// -----------------------------------------------
// Modulos de compuertas
// -----------------------------------------------
// Cada compuerta debe tener la siguiente línea :
//   always @(posedge salida)
//     BancoPruebas.trans.PwrCntr[PwrC] = BancoPruebas.trans.PwrCntr[PwrC] + `Px;
// Donde se guardan las transiciones de 0 a 1 que ocurren en cada módulo
// Recordar que el consumo de potencia se da en las transiciones de la salida.
// 'Px = Tabla de ponderaciones de potencia

// Defina cada compuerta utilizando de ejemplo el modulo inversor, el programa
// no será ejecutado hasta que todas las compuertas sean definidas correctamente.


// -----------------------------------------------
// Inversor a = ~b;
// -----------------------------------------------

module inv_p(a, b);
  parameter
    PwrC = 0;

  input b;
  output a;

  assign #`d_inv a = ~b;

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Pinv;
endmodule



//*************************************************************************
//Compuerta and de 2 entradas

module and2_p(a, b, c);
  parameter
    PwrC = 0;

  input b, c;
  output a;

  assign #`d_and2 a = &{b,c};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Pand2;
endmodule

//*************************************************************************
//Compuerta and de 3 entradas

module and3_p(a, b, c, d);
  parameter
    PwrC = 0;

  input b, c, d;
  output a;

  assign #`d_and3 a = &{b,c,d};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Pand3;

endmodule

//*************************************************************************
//Compuerta and de 4 entradas

module and4_p(a, b, c, d, e);
  parameter
    PwrC = 0;

  input b, c, d, e;
  output a;

  assign #`d_and4 a = &{b,c,d,e};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Pand4;

endmodule

//*************************************************************************
//Compuerta and de 5 entradas

module and5_p(a, b, c, d, e, f);
  parameter
    PwrC = 0;

  input b, c, d, e, f;
  output a;

  assign #`d_and5 a = &{b,c,d,e,f};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Pand5;

endmodule

//*************************************************************************
//Compuerta or de 2 entradas

module or2_p(a, b, c);
  parameter
    PwrC = 0;

  input b, c;
  output a;

  assign #`d_or2 a = |{b,c};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Por2;
endmodule

//*************************************************************************
//Compuerta or de 3 entradas

module or3_p(a, b, c, d);
  parameter
    PwrC = 0;

  input b, c, d;
  output a;

  assign #`d_or3 a = |{b,c,d};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Por3;
endmodule


//*************************************************************************
//Compuerta or de 4 entradas

module or4_p(a, b, c, d, e);
  parameter
    PwrC = 0;

  input b, c, d, e;
  output a;

  assign #`d_or4 a = |{b,c,d,e};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Por4;
endmodule


//*************************************************************************
//Compuerta or de 5 entradas

module or5_p(a, b, c, d, e, f);
  parameter
    PwrC = 0;

  input b, c, d, e, f;
  output a;

  assign #`d_or5 a = |{b,c,d,e,f};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Por5;
endmodule

//*************************************************************************
//Compuerta xor de 2 entradas

module xor2_p(a, b, c);
  parameter
    PwrC = 0;

  input b, c;
  output a;

  assign #`d_xor2 a = ^{b,c};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Pxor2;
endmodule

//*************************************************************************
//Compuerta xor de 3 entradas

module xor3_p(a, b, c, d);
  parameter
    PwrC = 0;

  input b, c, d;
  output a;

  assign #`d_xor3 a = ^{b,c,d};

  //En las transiciones de 0 a 1 en las salidas se consume energia
  always @(posedge a)
    BancoPruebas.mem_trans.PwrCntr[PwrC] = BancoPruebas.mem_trans.PwrCntr[PwrC] + `Pxor3;
endmodule
