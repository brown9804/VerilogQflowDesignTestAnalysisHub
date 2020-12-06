# Design - Complete Process

Complete process of the design of a 4 bit and 32 bits counters in order 
to guarantee the correct operation of the designs.


###                  Instructions 

#### A. Desing - counter 4 bits 
~~~~~
<folder path>$ make 4b
~~~~~

#### B. Desing - counter 32 bits [RCO half cycle]

~~~~~
<folder path>$ make 32b
~~~~~

#### C. Desing - counter 32 bits [RCO complete cycle]
Read ./src/counter_b4.v and comment the always (@ negedge clk). Then:

~~~~~
<folder path>$ make 32b
~~~~~

#### D. Qflow Analysis 

Go to ./layout ad read the README.md.

### Important:
Read the makefile because it's using a path to access Gtkwave on OSX, so delete the relative 
path in order to proceed.
