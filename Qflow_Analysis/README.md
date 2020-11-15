# Qflow Analysis

There is two folders one for the arbiter and another one for the uart. If follows the ideal setup based on the reference of http://opencircuitdesign.com/qflow/.

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
<inside specific project> make stat
<inside specific project> magic
~~~~

### Magic for arbiter 
~~~~~~
<inside magic terminal> lef read /usr/share/qflow/tech/osu035/osu035_stdcells.lef
<inside magic terminal> def read ././layout/arbiter.def
<inside magic terminal> grid 1.6um 2.0um
<inside magic terminal> measure horizontal
~~~~~~

### Magic for uart
~~~~~~
<inside magic terminal> lef read /usr/share/qflow/tech/osu035/osu035_stdcells.lef
<inside magic terminal> def read ././layout/uart.def
<inside magic terminal> grid 1.6um 2.0um
<inside magic terminal> measure horizontal
~~~~~~
