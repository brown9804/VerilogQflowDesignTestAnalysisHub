# Functional Verification

Functional verification of three counters in order 
to guarantee the correct operation of the designs.


###                  Instructions 
* Work with the verification of scoreboard versus each synthesized module:
~~~~~
<folder path>$ make 
~~~~~

* Extra -> Work with the scoreboard verification:
~~~~~
<folder path>$ make v_SCB
~~~~~

### Important:
Read the makefile because it's using a path to access Gtkwave on OSX, so delete the relative 
path in order to proceed. Also, consider that this comparation is 1 to 1 module (1:1) so the scoreboard 
just pull out the expected behavior. In order to changed go to:

~~~~
tb_all_vs.v
~~~~

Comment and uncomment whatever instance that you want to compare. 
Leaving only one more instance of:

~~~~
///////////////////////////////////////////////////////////////////////////////////////////
              ////////////  Scoreboard
              ////////////
///////////////////////////////////////////////////////////////////////////////////////////

tb_scoreboard scoreboard_all_vs(/*AUTOINST*/
  // outputs
.scb_Q        (scb_Q),
.scb_load     (scb_load),
.scb_rco      (scb_rco),
.clk         (clk),
.reset       (reset),
.tb_enable   (tb_all_vs_enable),
.tb_mode     (tb_all_vs_mode), // choose from 00, 01, 10, 11
.tb_D        (tb_all_vs_D),

// inputs
.C_syn_rco          (C_syn_rco),
.C_syn_load         (C_syn_load),
.C_syn_Q            (C_syn_Q)
);

~~~~
