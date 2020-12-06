# Electric Design

Design of NOR3, NAND3 and AOI22 using electric in a 
Linux VM.
 
## University of Costa Rica
#### December, 2020

### Dependencies
1. Install Electric VSLI 9.07, two download options:
 - By https://www.staticfreesoft.com/productsFree.html
 - Enter your console:
 
~~~~~
<user>~: sudo apt-get install electric 
~~~~~

Considerations: 
NMOS width min 3 so PMOS 2*3 = 6.
Double click on component to see properties. 
Connections from NMOS or PMOS to nActive or pActive, and right click to confirm conecction.
Try to maintain the same size of components related.
Comments with Explore/Create
Click on MISC and SPICE Code, control + I. Tools/Simulation/WriteSpiceDeck 

2. Install Spice 


### Instructions 

*: To run:
~~~~~
<user>~: electric
~~~~~

*: Check cables:

~~~~~
Click on F5
~~~~~