/******************Definiciones***********/
// ---------------------
// Retardo de compuertas
// ---------------------


// scale time unit (value of one) / precision
`timescale 	1ns				/ 1ps


`define d_inv  1
`define d_and2 2
`define d_and3 3
`define d_and4 4
`define d_and5 5
`define d_or2  2
`define d_or3  3
`define d_or4  4
`define d_or5  5
`define d_xor2 2
`define d_xor3 4

// ----------------------------------------------
//"Ponderaciones" de potencia para las compuertas
// ----------------------------------------------

`define Pinv  60
`define Pand2 2*`Pinv
`define Pand3 3*`Pinv
`define Pand4 4*`Pinv
`define Pand5 5*`Pinv
`define Por2  1/2*`Pinv
`define Por3  1/3*`Pinv
`define Por4  1/4*`Pinv
`define Por5  1/5*`Pinv
`define Pxor2 1*`Pinv
`define Pxor3 2*`Pinv
