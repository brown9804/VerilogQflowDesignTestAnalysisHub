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
CA = contadorA.v
CB = contadorB.v
CC = contadorC.v

TESTBENCHES = ./testbenches/
_TB_SCB = tb_scoreboard.v
_TB_ALL_VS = tb_all_vs.v

TESTERS = ./testers/
_T_DRIVER = driver.v

_VCD_SCB = scoreboard.vcd
_VCD_ALL_VS = all_vs.vcd

OVVP = ./vvp/
_VVP_SCB = scoreboard.vvp
_VVP_ALL_VS = all_vs.vvp


#******************************************************************************

# # IVERILOG
# %.vvp: %.v
# 	iverilog -o $@ $^

# all: v_SCB
all: v_all_vs
#******************************************************************************
#### 													SCOREBOARD
#******************************************************************************


v_SCB:
	iverilog -o $(OVVP)$(_VVP_SCB) $(TESTBENCHES)$(_TB_SCB)
	vvp $(OVVP)$(_VVP_SCB) > $(LOG_TXT)$(_VVP_SCB)_log.txt

#target phony
.PHONY: gtkw_scb
gtkw_scb: v_SCB
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_SCB)


#******************************************************************************
#### 				Functional Verification - scoreboard vs contadorA, B & C
#******************************************************************************


v_all_vs:
	iverilog -o $(OVVP)$(_VVP_ALL_VS) $(TESTBENCHES)$(_TB_ALL_VS)
	vvp $(OVVP)$(_VVP_ALL_VS) > $(LOG_TXT)$(_VVP_ALL_VS)_log.txt

#target phony
.PHONY: gtkwall_vs
gtkwall_vs: v_all_vs
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_ALL_VS)


#******************************************************************************
############ CLEAN FOR ALL
#******************************************************************************

.PHONY: clean
clean:
	rm -rf $(OVVP)*.vvp *.vcd $(LOG_TXT)*_log.txt $(SYN)*syn.v $(DIAGRAMS_GENERATED)*.dot $(DIAGRAMS_GENERATED)*.ps
