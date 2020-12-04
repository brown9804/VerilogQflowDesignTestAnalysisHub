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
4B_SYN = counter_b4_syn.v
32B_SYN = counter_b32_syn.v


TESTBENCHES = ./testbenches/
TB_4B = tb_counter_b4.v
TB_32B = tb_counter_b32.v

TESTERS = ./testers/
T_4B = t_counter_b4.v
T_32B = t_counter_b32.v


OVVP = ./vvp/
VVP_4B = counter_b4.vvp
VVP_32B = counter_b32.vvp

YOSYS = ./yosys/
YC4B = counter_b4_y.ys
YC32B = counter_b32_y.ys

LOG_FILE4B = counter_b4_compile.log
LOG_FILE32B = counter_b32_compile.log



#-------
VCD_4B = counter_b4.vcd
VCD_32B = counter_b32.vcd


#******************************************************************************

# # IVERILOG
# %.vvp: %.v
# 	iverilog -o $@ $^

all: v_4B
#******************************************************************************
#### 					4 BITS
#******************************************************************************
y0:
	yosys $(YOSYS)$(YC4B)

#target phony
.PHONY: r_4B
r_4B: y0
	sed -i 's/counter_b4/counter_b4_syn/g' $(SYN)$(4B_SYN)


v_4B: r_4B
	iverilog -o $(OVVP)$(VVP_4B) $(TESTBENCHES)$(TB_4B)
	vvp $(OVVP)$(VVP_4B) > $(LOG_TXT)$(LOG_FILE4B)


#target phony
.PHONY: gtkw_b4
gtkw_b4: v_4B
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(VCD_4B)


#******************************************************************************
#### 				32 BITS
#******************************************************************************
32: v_32B

y32:
	yosys $(YOSYS)$(YC32B)

#target phony
.PHONY: r_32B
r_32B: y32
	sed -i 's/counter_b4/counter_b4_syn/g' $(SYN)$(32B_SYN)
	sed -i 's/counter_b32/counter_b32_syn/g' $(SYN)$(32B_SYN)


v_32B: r_32B
	iverilog -o $(OVVP)$(VVP_32B) $(TESTBENCHES)$(TB_32B)
	vvp $(OVVP)$(VVP_32B) > $(LOG_TXT)$(LOG_FILE32B)


#target phony
.PHONY: gtkw_b32
gtkw_b32: v_32B
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave $(VCD_32B)


#******************************************************************************
############ CLEAN FOR ALL
#******************************************************************************

.PHONY: clean
clean:
	rm -rf $(OVVP)*.vvp *.vcd $(SYN)*syn.v $(DIAGRAMS_GENERATED)*.dot $(DIAGRAMS_GENERATED)*.ps $(LOG_TXT)*log 
