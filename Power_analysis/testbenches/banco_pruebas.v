`include "./lib/libreria.v"
`include "./src/sumador_logico.v"
`include "./src/sumador_rizado.v"
`include "./src/sumador_look.v"

// -----------------------------------------------
// Contadores de transiciónes
// -----------------------------------------------
// NumPwrCntr debe tener el numero de contadores N, menos uno: NumPwrCntr = N - 1
// Ndir debe ser tal que (2^(Ndir+1) - 1) > NumPwrCntr.
// Nota: Si no se cumple las condiciones se genera un loop infinito.
`define NumPwrCntr 2
`define Ndir 1


// -----------------------------------------------
// Modulo: Contador de transicion
// -----------------------------------------------

module contador_Transicion (dir, LE, dato);
  input [`Ndir:0] dir;
  input LE;
  inout [31:0] dato;
  reg [31:0] PwrCntr [`NumPwrCntr:0];

  //Control de E/S del puerto de datos
  assign dato = (LE)? PwrCntr[dir] : 32'bz;

  //Ciclo de escritura para la memoria
  always @(dir or negedge LE or dato)
    begin
      if (~LE) //escritura
        PwrCntr[dir] = dato;
    end
endmodule



// -----------------------------------------------
// Banco de pruebas
// -----------------------------------------------

module BancoPruebas;
  reg [7:0] oprA, oprB;
  reg [31:0] Contador;
  reg [`Ndir:0] dir;
  reg LE;
  integer semilla,Contador_sumas, valor;
  wire [31:0] dato;
  wire [7:0] Suma, Suma_logico, Suma_look;
  wire carry_rizado, carry_logico, carry_look;

  //Conexion a la memoria de contadores de transicion
  contador_Transicion mem_trans (dir, LE, dato);
  //Control de E/S del puerto de dato de la memoria de contadores
  assign dato = (~LE)? Contador : 32'bz;

  // ---------------------------------------------------------------
  // Nota:
  // Sumador de rizado usa contador 0 de la memoria
  // Sumador de logico usa contador 1 de la memoria
  // Sumador lookahead usa contador 2 de la memoria
  // ---------------------------------------------------------------

  SUM_RIZADO #(0)  sumadorRizado (oprA, oprB, 1'b0, Suma, carry_rizado);
  SUM8_LOGICO #(1)  sumadorLogico (oprA, oprB, 1'b0, Suma_logico, carry_logico);
  SUM8_LOOKAHEAD #(2) sumadorLookahead (oprA, oprB, 1'b0, Suma_look, carry_look);

  initial
    begin
      $dumpfile ("1and8-full-adder.vcd");
      $dumpvars;

      // Borrar memoria de transiciones
      #1 LE = 0;
      Contador = 0;
      Contador_sumas = 0;

      for (dir=0; dir<=`NumPwrCntr; dir=dir+1)
        #1 Contador = 0;

      // ------------------------------------------------------
      //Semilla inicial para el generador de numeros aleatorios
      // ------------------------------------------------------

      semilla = 10;

      #50
      // Cada llamada de una suma se va a variar el contador de sumas
      Contador_sumas = Contador_sumas + 1;
      //Primer par de operandos para los sumadores
      oprA = $random(semilla);
      oprB = $random(semilla);

      // Código ciclico por el número de sumas deseadas.
      repeat (100)
        begin
          #50
	         $display ("No. Suma = %d: Operador A = %d, Operador B = %d, Sumador_1 = %d, Sumador_2 = %d, Sumador_3=%d",Contador_sumas,oprA,oprB,Suma,Suma_logico,Suma_look);
	          Contador_sumas = Contador_sumas + 1;
            oprB = $random(semilla);
            oprA = $random(semilla);
        end

      #50 $display ("No. Suma = %d: Operador A = %d, Operador B = %d, Sumador_1 = %d, Sumador_2 = %d, Sumador_3=%d",Contador_sumas,oprA,oprB,Suma,Suma_logico,Suma_look);
      //Lea y despliegue la memoria con contadores de transicion
      $display ("Semilla: ", semilla);
      #50 LE = 1;

      for (dir=0; dir<=`NumPwrCntr; dir=dir+1)
        begin
          #1 Contador = dato;
          $display(,,"PwrCntr[%d]: %d", dir, Contador);
        end
      #1 $finish;
    end

endmodule
