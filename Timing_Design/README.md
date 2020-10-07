# Timing Design

----------

University of Costa Rica

Belinda Brown, timna.brown@ucr.ac.cr

October, 2020

----------


This project consists of designing a behavioral description of a counter for which a synthesis analysis will
be carried out in order to visualize the different aspects of timing.


## How to run

To analyze the soreboard behavior:
~~~~
<FOLDER PATH>$ make scb 
~~~~

That includes:

~~~~
<FOLDER PATH>$ make v_C
~~~~

~~~~
<FOLDER PATH>$ make gtkw_C 
~~~~


To analyze the counter ideal behavior (no delay time):
~~~~
<FOLDER PATH>$ make ideal
~~~~

Including:

~~~~
<FOLDER PATH>$ make y_top
~~~~

~~~~
<FOLDER PATH>$ make r_top
~~~~


~~~~
<FOLDER PATH>$ make v_top
~~~~

~~~~
<FOLDER PATH>$ make gtkw_top
~~~~

To analyze the counter delayed behavior:
~~~~
<FOLDER PATH>$ make delyd
~~~~

So:

~~~~
<FOLDER PATH>$ make y_delyd
~~~~

~~~~
<FOLDER PATH>$ make r_delyd
~~~~

~~~~
<FOLDER PATH>$ make gtkw_delyd
~~~~


To crean:
~~~~
<FOLDER PATH>$ make clean
~~~~



