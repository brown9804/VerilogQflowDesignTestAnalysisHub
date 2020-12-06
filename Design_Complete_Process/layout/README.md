# Qflow Analysis

There is two folders one for the counter_b4 and another one for the counter_b32. If follows the ideal setup based on the reference of http://opencircuitdesign.com/qflow/.

![image](https://github.com/brown9804/Designs_Verification/blob/main/Qflow_Analysis/docs/img/ideal_setup.png)


Aspects analyzed:

*. Frequency.

*. Area.

*. Number and type of gates.

*. Path delays.

*. Place and route.

## Dependencies

Make sure qflow is install:

~~~~
$ sudo apt-get update
$ sudo apt-get install qflow
~~~~

* yosys:

Verilog parser/synthesis (yosys)
* graywolf:

Cell and pin placement

* qrouter 1.3:

Detail router

* magic 8.1:

Layout viewer



## Instructions 

~~~~
<inside specific project> make qflow
<inside specific project> make sta
<inside specific project> magic
~~~~

### Magic for counter_b4 
~~~~~~
<inside magic terminal> lef read /usr/share/qflow/tech/osu035/osu035_stdcells.lef
<inside magic terminal> def read ././layout/counter_b4.def
<inside magic terminal> grid 1.6um 2.0um
<inside magic terminal> measure horizontal
<inside magic terminal> measure vertical
~~~~~~

### Magic for counter_b32
~~~~~~
<inside magic terminal> lef read /usr/share/qflow/tech/osu035/osu035_stdcells.lef
<inside magic terminal> def read ././layout/counter_b32.def
<inside magic terminal> grid 1.6um 2.0um
<inside magic terminal> measure horizontal
<inside magic terminal> measure vertical
~~~~~~

### Tech change 
~~~~~~~
<inside specific project> make qflow
~~~~~~~

Now inside `qflow_vars.sh` set:

~~~~
<set> techdir=/usr/share/qflow/tech/osu050
<set> techname=osu050
~~~~

Run the commands inside ` qflow_exec.sh ` one by one:

For counter 4 bits:
~~~~~
/usr/lib/qflow/scripts/synthesize.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 
/usr/lib/qflow/scripts/placement.sh -d /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 
# /usr/lib/qflow/scripts/vesta.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 
/usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 
# /usr/lib/qflow/scripts/placement.sh -f -d /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 
# /usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 
# /usr/lib/qflow/scripts/cleanup.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 
# /usr/lib/qflow/scripts/display.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 
~~~~~

For counter 32 bits with osu035:

~~~~
/usr/lib/qflow/scripts/synthesize.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
/usr/lib/qflow/scripts/placement.sh -d /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
# /usr/lib/qflow/scripts/vesta.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
/usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
# /usr/lib/qflow/scripts/placement.sh -f -d /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
# /usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32
# /usr/lib/qflow/scripts/cleanup.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32
# /usr/lib/qflow/scripts/display.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
~~~~

For counter 32 bits with osu050:

~~~~
/usr/lib/qflow/scripts/synthesize.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
/usr/lib/qflow/scripts/placement.sh -d /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
# /usr/lib/qflow/scripts/vesta.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
#/usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
# /usr/lib/qflow/scripts/placement.sh -f -d /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
# /usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32
# /usr/lib/qflow/scripts/cleanup.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32
# /usr/lib/qflow/scripts/display.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b32 counter_b32 
~~~~

And magic using `osu050` instead of `osu035`.
