*SPICE netlist created from BLIF module arbiter by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt arbiter vdd gnd clk rst req3 req2 req1 req0 gnt3 gnt2 gnt1 gnt0 
XAOI21X1_1 gnd vdd _36_ _39_ _4_ rst AOI21X1
XNAND2X1_1 vdd _40_ gnd req1 _21_ NAND2X1
XINVX1_1 _40_ _41_ vdd gnd INVX1
XNOR2X1_1 vdd req2 gnd _42_ req3 NOR2X1
XINVX1_2 _42_ _43_ vdd gnd INVX1
XNOR3X1_1 vdd gnd _43_ _27_ _12_ _44_ NOR3X1
XOAI21X1_1 gnd vdd _35_ _44_ _45_ _41_ OAI21X1
XNOR3X1_2 vdd gnd _20_ _27_ lmask0 _46_ NOR3X1
XNOR3X1_3 vdd gnd _40_ _18_ _12_ _47_ NOR3X1
XAND2X2_1 vdd gnd _17_ _62_ _48_ AND2X2
XNOR3X1_4 vdd gnd _46_ _47_ _48_ _49_ NOR3X1
XAOI21X1_2 gnd vdd _49_ _45_ _3_ rst AOI21X1
XOAI21X1_2 gnd vdd _35_ _44_ _50_ req0 OAI21X1
XNOR3X1_5 vdd gnd _21_ _18_ _12_ _51_ NOR3X1
XNAND3X1_1 req0 vdd gnd _20_ _42_ _52_ NAND3X1
XNOR3X1_6 vdd gnd _52_ _27_ lmask0 _53_ NOR3X1
XAND2X2_2 vdd gnd _17_ _61_ _54_ AND2X2
XNOR3X1_7 vdd gnd _51_ _53_ _54_ _55_ NOR3X1
XAOI21X1_3 gnd vdd _55_ _50_ _2_ rst AOI21X1
XINVX1_3 _17_ _56_ vdd gnd INVX1
XOAI21X1_3 gnd vdd _22_ _43_ _57_ _56_ OAI21X1
XOR2X2_1 _58_ ledge vdd gnd lasmask OR2X2
XNOR2X1_2 vdd _57_ gnd _0_ _58_ NOR2X1
XNAND2X1_2 vdd _59_ gnd lasmask ledge NAND2X1
XNAND2X1_3 vdd _60_ gnd _59_ _58_ NAND2X1
XNOR2X1_3 vdd _57_ gnd _1_ _60_ NOR2X1
XBUFX2_1 vdd gnd _61_ gnt0 BUFX2
XBUFX2_2 vdd gnd _62_ gnt1 BUFX2
XBUFX2_3 vdd gnd _63_ gnt2 BUFX2
XBUFX2_4 vdd gnd _64_ gnt3 BUFX2
XDFFPOSX1_1 vdd _6_ gnd lmask0 clk DFFPOSX1
XDFFPOSX1_2 vdd _7_ gnd lmask1 clk DFFPOSX1
XDFFPOSX1_3 vdd _0_ gnd lasmask clk DFFPOSX1
XDFFPOSX1_4 vdd _1_ gnd ledge clk DFFPOSX1
XDFFPOSX1_5 vdd _2_ gnd _61_ clk DFFPOSX1
XDFFPOSX1_6 vdd _3_ gnd _62_ clk DFFPOSX1
XDFFPOSX1_7 vdd _4_ gnd _63_ clk DFFPOSX1
XDFFPOSX1_8 vdd _5_ gnd _64_ clk DFFPOSX1
XINVX1_4 rst _8_ vdd gnd INVX1
XINVX1_5 lmask1 _9_ vdd gnd INVX1
XOAI21X1_4 gnd vdd _64_ _63_ _10_ lasmask OAI21X1
XOAI21X1_5 gnd vdd lasmask _9_ _11_ _10_ OAI21X1
XAND2X2_3 vdd gnd _11_ _8_ _7_ AND2X2
XINVX4_1 vdd gnd _12_ lmask0 INVX4
XOAI21X1_6 gnd vdd _64_ _62_ _13_ lasmask OAI21X1
XOAI21X1_7 gnd vdd lasmask _12_ _14_ _13_ OAI21X1
XAND2X2_4 vdd gnd _14_ _8_ _6_ AND2X2
XAOI22X1_1 gnd vdd _61_ req0 _15_ _62_ req1 AOI22X1
XAOI22X1_2 gnd vdd _63_ req2 _16_ _64_ req3 AOI22X1
XNAND2X1_4 vdd _17_ gnd _15_ _16_ NAND2X1
XNAND3X1_2 _15_ vdd gnd lmask1 _16_ _18_ NAND3X1
XNOR2X1_4 vdd _18_ gnd _19_ _12_ NOR2X1
XINVX2_1 vdd gnd _20_ req1 INVX2
XINVX1_6 req0 _21_ vdd gnd INVX1
XNAND2X1_5 vdd _22_ gnd _20_ _21_ NAND2X1
XINVX1_7 req2 _23_ vdd gnd INVX1
XNAND2X1_6 vdd _24_ gnd req3 _23_ NAND2X1
XNOR2X1_5 vdd _22_ gnd _25_ _24_ NOR2X1
XAOI22X1_3 gnd vdd _25_ _19_ _26_ _64_ _17_ AOI22X1
XNAND3X1_3 _15_ vdd gnd _9_ _16_ _27_ NAND3X1
XNOR3X1_8 vdd gnd _24_ _27_ _12_ _28_ NOR3X1
XINVX1_8 req3 _29_ vdd gnd INVX1
XNOR3X1_9 vdd gnd _29_ _18_ lmask0 _30_ NOR3X1
XNAND3X1_4 _23_ vdd gnd req3 _20_ _31_ NAND3X1
XNOR3X1_10 vdd gnd _31_ _27_ lmask0 _32_ NOR3X1
XNOR3X1_11 vdd gnd _30_ _32_ _28_ _33_ NOR3X1
XAOI21X1_4 gnd vdd _33_ _26_ _5_ rst AOI21X1
XNOR2X1_6 vdd _22_ gnd _34_ _23_ NOR2X1
XNOR3X1_12 vdd gnd req3 _18_ lmask0 _35_ NOR3X1
XOAI21X1_8 gnd vdd _19_ _35_ _36_ _34_ OAI21X1
XINVX1_9 _27_ _37_ vdd gnd INVX1
XAOI21X1_5 gnd vdd _12_ req1 _38_ _23_ AOI21X1
XAOI22X1_4 gnd vdd _38_ _37_ _39_ _63_ _17_ AOI22X1
.ends arbiter
 