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
S_C = contador_synt.v

TESTBENCHES = ./testbenches/
_TB_C = tb_counter.v
_TB_TOP = tb_top.v

_VCD_C= counter.vcd
_VCD_TOP = top.vcd

OVVP = ./vvp/
_VVP_C = counter.vvp
_VVP_TOP = top.vvp


YOSYS = ./yosys/
_YC = counter.ys

#******************************************************************************

# # IVERILOG
# %.vvp: %.v
# 	iverilog -o $@ $^


scb: v_C gtkw_C
ideal: y_top r_top v_top gtkw_top
delayed: y_delayed, r_delayed v_delayed gtkw_delayed


#******************************************************************************
#### 													SCOREBOARD
#******************************************************************************

v_C:
	iverilog -o $(OVVP)$(_VVP_C) $(TESTBENCHES)$(_TB_C)
	vvp $(OVVP)$(_VVP_C) > $(LOG_TXT)$(_VVP_C)_log.txt

#target phony
.PHONY: gtkw_C
gtkw_C: v_C
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_C)


#******************************************************************************
#### 			       	TOP      MODULE  			IDEAL
#******************************************************************************


y_top:
	yosys $(YOSYS)$(_YC)

r_top:
	sed -i 's/counter/contador_synt/g' $(SYN)$(S_C)

v_top:
	iverilog -o $(OVVP)$(_VVP_TOP) $(TESTBENCHES)$(_TB_TOP)
	vvp $(OVVP)$(_VVP_TOP) > $(LOG_TXT)$(_VVP_TOP)_log.txt

#target phony
.PHONY: gtkw_top
gtkw_top: v_top
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_TOP)



#******************************************************************************
#### 			       	TOP      MODULE  			DELAYED
#******************************************************************************


y_delayed:
	yosys $(YOSYS)$(_YC)

r_delayed:
	sed -i 's/counter/contador_synt/g' $(SYN)$(S_C)

v_delayed:
	iverilog -o $(OVVP)$(_VVP_TOP) -gspecify $(TESTBENCHES)$(_TB_TOP)
	vvp $(OVVP)$(_VVP_TOP) > $(LOG_TXT)$(_VVP_TOP)_log.txt

#target phony
.PHONY: gtkw_delayed
gtkw_delayed: v_delayed
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(_VCD_TOP)




#******************************************************************************
############ CLEAN FOR ALL
#******************************************************************************

.PHONY: clean
clean:
	rm -rf $(OVVP)*.vvp *.vcd $(LOG_TXT)*_log.txt $(SYN)*syn.v $(DIAGRAMS_GENERATED)*.dot $(DIAGRAMS_GENERATED)*.ps
