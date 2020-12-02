#Verilog


##--------------------------------Makefile------------------------------------
##
##				 Copyright (C) 2020 by
##				 Belinda Brown Ramírez
##				 timna.brown@ucr.ac.cr
##
##-----------------------------------------------------------------------------


# Making verilog makefile
# Makefile to simulate Verilog HDL designs under OSX.

###### IMPORTANT !!!!!!!!!
###### NEED TO BE READED
# Please note that the gtkwave command referes to a specific
# path so removed or just do in the command line console:
# <folder path>$ gtkwave <vcd file with the vcd extention>

# 							Makefile logic:
# To create this file you need these files:
# $ @ replace left
# $ ^ right

#******************************************************************************
#										TARGETS
#******************************************************************************
### 						YOSYS
# To generate the structural design of the
# behavioral design automatically through synthesis
#It is defined as a roughly RTL (Register Transfer Level)
#synthesizer that allows you to convert the HDL (Hardware
# Description Language) code into an electronic scheme.
# Coming to show the components connected to each other what
# is usually called RTL network list which is associated with
# the level of registry transfer. Considering that what it allows
# is to model a synchronous digital circuit in terms of digital signal
# flow (this being data) relating it to the hardware registers and the
# logical operations that are carried out in each signal.


### 						SED
# Replaces on the synthesized file the name module,
# because for making the stuctural decription we use the
# behavioral on yosys

#### 					 IVERILOG
# It is defined as an HDL (Hardware Description Language),
#  this being a modeled hardware language, that is, it allows
#  describing a simulation of digital circuits. It can be seen
# as the tool that allows to provide the specifications to carry
# out a physical component which is being modeled.
# 	Example of command:
# iverilog -o ./vvp/TestBench_21_2.vvp ./TestBenchAUTONST/TestBench_21_2.v
# Its automatic, because each time you are asked for a vvp
# you need one with con.v

### 					GTKWAVE
# We can define it as a visualization of simulation results
# where one of its advantages is that by means of a visualization
# of signal waves we can understand the problem when it
# is found by using the testbench.

#******************************************************************************
# Modify this part with your own folders paths.

DIAGRAMS_GENERATED = ./diagrams_generated/

LIB = ./lib/

LOG_TXT = ./log_txt/

SYN = ./syn/
4B_SYN = counter_4b_syn.v

TESTBENCHES = ./testbenches/
TB_4B = tb_counter_4b.v

TESTERS = ./testers/
T_4B = t_counter_4b.v


OVVP = ./vvp/
VVP_4B = counter_4b.vvp


#-------
VCD_4B = counter_4b.vcd


#******************************************************************************

# # IVERILOG
# %.vvp: %.v
# 	iverilog -o $@ $^

all: v_4B
#******************************************************************************
#### 													SCOREBOARD
#******************************************************************************


v_4B:
	iverilog -o $(OVVP)$(VVP_4B) $(TESTBENCHES)$(TB_4B)
	vvp $(OVVP)$(VVP_4B) > $(LOG_TXT)$(VVP_4B)_log.txt

#target phony
.PHONY: gtkw_4b
gtkw_4b: v_4B
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(VCD_4B)


#******************************************************************************
############ CLEAN FOR ALL
#******************************************************************************

.PHONY: clean
clean:
	rm -rf $(OVVP)*.vvp *.vcd $(LOG_TXT)*_log.txt $(SYN)*syn.v $(DIAGRAMS_GENERATED)*.dot $(DIAGRAMS_GENERATED)*.ps
