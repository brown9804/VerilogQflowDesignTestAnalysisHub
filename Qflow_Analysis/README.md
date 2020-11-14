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

