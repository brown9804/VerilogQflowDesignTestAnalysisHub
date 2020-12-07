# Electric Design

Design of NOR3, NAND3 and AOI22 (AND-OR-Invert logic and AOI gates are two-level compound or complex) using electric in a 
Linux VM.
 
## University of Costa Rica
#### December, 2020

### Dependencies
#### 1. Install Electric VLSI 9.07, two download options:
 - By https://www.staticfreesoft.com/productsFree.html
 - Enter in your console:
 
~~~~~
<user>~: sudo apt-get install electric 
~~~~~

Considerations: 
- NMOS width min 3 so PMOS 2*3 = 6.
- Double click on component to see properties. 
- Connections from NMOS or PMOS to nActive or pActive, and right click to confirm conecction.
- Try to maintain the same size of components related.
- Comments with Explore/Create
- Click on MISC and SPICE Code, control + I. Tools/Simulation/WriteSpiceDeck 

#### 2. Install Spice 

- See: http://web.engr.oregonstate.edu/~traylor/ece391/smith_NGSPICE_USERGUIDE_ECE391.pdf
- Enter your in console:

~~~~~
<user>~: sudo apt-get update -y
<user>~: sudo apt-get install -y ngspice
~~~~~


### Instructions 

#### ELECTRIC VSLI
 
* To run:
~~~~~
<user>~: electric
~~~~~

* Check cables:

~~~~~
Click on F5
~~~~~

#### SPICE

1. First open ngspice:
~~~~
<user>~:  ngspice 
~~~~

2. Run the file that you want, for example:

~~~~
ngspice 1 -> source /home/belindabrown/Desktop/NOR3.spi
~~~~




