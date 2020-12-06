*SPICE netlist created from BLIF module counter_b4 by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt counter_b4 vdd gnd b4_enable b4_clk b4_reset b4_mode<0> b4_mode<1> b4_D<0> b4_D<1> b4_D<2> b4_D<3> b4_load b4_rco b4_Q<0> b4_Q<1> b4_Q<2> b4_Q<3> 
XAOI21X1_1 gnd vdd _38_ _25_ _42_ _41_ AOI21X1
XINVX1_1 b4_D<3> _43_ vdd gnd INVX1
XOAI21X1_1 gnd vdd _43_ _8_ _44_ _5_ OAI21X1
XAOI21X1_2 gnd vdd _40_ _42_ _45_ _44_ AOI21X1
XNAND3X1_1 _38_ vdd gnd _23_ _15_ _46_ NAND3X1
XOR2X2_1 _47_ _56_<1> vdd gnd _56_<0> OR2X2
XOAI21X1_2 gnd vdd _56_<2> _47_ _48_ _56_<3> OAI21X1
XNAND2X1_1 vdd _49_ gnd _46_ _48_ NAND2X1
XXNOR2X1_1 _27_ _38_ gnd vdd _50_ XNOR2X1
XAOI22X1_1 gnd vdd _19_ _49_ _51_ _24_ _50_ AOI22X1
XAOI22X1_2 gnd vdd _45_ _51_ _3_<3> _38_ _6_ AOI22X1
XNOR2X1_1 vdd _6_ gnd _0_<0> _16_ NOR2X1
XNOR2X1_2 vdd _6_ gnd _0_<1> _13_ NOR2X1
XNOR2X1_3 vdd _6_ gnd _0_<2> _23_ NOR2X1
XNOR2X1_4 vdd _6_ gnd _0_<3> _38_ NOR2X1
XINVX1_2 _46_ _52_ vdd gnd INVX1
XNAND2X1_2 vdd _53_ gnd _19_ _52_ NAND2X1
XAND2X2_1 vdd gnd _27_ _38_ _54_ AND2X2
XAOI22X1_3 gnd vdd _24_ _54_ _55_ _32_ _39_ AOI22X1
XAOI21X1_3 gnd vdd _53_ _55_ _2_ _6_ AOI21X1
XNOR2X1_5 vdd _6_ gnd _1_ _8_ NOR2X1
XBUFX2_1 vdd gnd _56_<0> b4_Q<0> BUFX2
XBUFX2_2 vdd gnd _56_<1> b4_Q<1> BUFX2
XBUFX2_3 vdd gnd _56_<2> b4_Q<2> BUFX2
XBUFX2_4 vdd gnd _56_<3> b4_Q<3> BUFX2
XBUFX2_5 vdd gnd _57_ b4_load BUFX2
XBUFX2_6 vdd gnd _58_ b4_rco BUFX2
XDFFPOSX1_1 vdd _1_ gnd _57_ b4_clk DFFPOSX1
XDFFPOSX1_2 vdd _2_ gnd _58_ b4_clk DFFPOSX1
XDFFPOSX1_3 vdd _0_<0> gnd _56_<0> b4_clk DFFPOSX1
XDFFPOSX1_4 vdd _0_<1> gnd _56_<1> b4_clk DFFPOSX1
XDFFPOSX1_5 vdd _0_<2> gnd _56_<2> b4_clk DFFPOSX1
XDFFPOSX1_6 vdd _0_<3> gnd _56_<3> b4_clk DFFPOSX1
XDFFPOSX1_7 vdd _3_<0> gnd _56_<0> b4_clk DFFPOSX1
XDFFPOSX1_8 vdd _3_<1> gnd _56_<1> b4_clk DFFPOSX1
XDFFPOSX1_9 vdd _3_<2> gnd _56_<2> b4_clk DFFPOSX1
XDFFPOSX1_10 vdd _3_<3> gnd _56_<3> b4_clk DFFPOSX1
XINVX1_3 b4_enable _4_ vdd gnd INVX1
XNOR2X1_6 vdd _4_ gnd _5_ b4_reset NOR2X1
XINVX4_1 vdd gnd _6_ _5_ INVX4
XOAI21X1_3 gnd vdd b4_reset _4_ _7_ _56_<0> OAI21X1
XNAND2X1_3 vdd _8_ gnd b4_mode<0> b4_mode<1> NAND2X1
XINVX1_4 b4_mode<0> _9_ vdd gnd INVX1
XINVX1_5 b4_mode<1> _10_ vdd gnd INVX1
XOAI21X1_4 gnd vdd _9_ _10_ _11_ _56_<0> OAI21X1
XOAI21X1_5 gnd vdd b4_D<0> _8_ _12_ _11_ OAI21X1
XOAI21X1_6 gnd vdd _6_ _12_ _3_<0> _7_ OAI21X1
XINVX1_6 _56_<1> _13_ vdd gnd INVX1
XINVX1_7 _8_ _14_ vdd gnd INVX1
XNOR2X1_7 vdd _56_<1> gnd _15_ _56_<0> NOR2X1
XINVX1_8 _56_<0> _16_ vdd gnd INVX1
XNOR2X1_8 vdd _13_ gnd _17_ _16_ NOR2X1
XOR2X2_2 _18_ _15_ vdd gnd _17_ OR2X2
XNOR2X1_9 vdd _9_ gnd _19_ b4_mode<1> NOR2X1
XAOI22X1_4 gnd vdd _19_ _18_ _20_ b4_D<1> _14_ AOI22X1
XNOR2X1_10 vdd _17_ gnd _21_ _15_ NOR2X1
XAOI21X1_4 gnd vdd _21_ _9_ _22_ _6_ AOI21X1
XAOI22X1_5 gnd vdd _22_ _20_ _3_<1> _13_ _6_ AOI22X1
XINVX2_1 vdd gnd _23_ _56_<2> INVX2
XNOR2X1_11 vdd _10_ gnd _24_ b4_mode<0> NOR2X1
XNAND3X1_2 _56_<1> vdd gnd _56_<0> _56_<2> _25_ NAND3X1
XINVX1_9 _25_ _26_ vdd gnd INVX1
XAOI21X1_5 gnd vdd _56_<0> _56_<1> _27_ _56_<2> AOI21X1
XOR2X2_3 _28_ _27_ vdd gnd _26_ OR2X2
XINVX1_10 b4_D<2> _29_ vdd gnd INVX1
XOAI21X1_7 gnd vdd _29_ _8_ _30_ _5_ OAI21X1
XAOI21X1_6 gnd vdd _28_ _24_ _31_ _30_ AOI21X1
XNOR2X1_12 vdd b4_mode<1> gnd _32_ b4_mode<0> NOR2X1
XNOR2X1_13 vdd _26_ gnd _33_ _27_ NOR2X1
XNAND2X1_4 vdd _34_ gnd _23_ _15_ NAND2X1
XOAI21X1_8 gnd vdd _56_<0> _56_<1> _35_ _56_<2> OAI21X1
XNAND2X1_5 vdd _36_ gnd _35_ _34_ NAND2X1
XAOI22X1_6 gnd vdd _32_ _33_ _37_ _36_ _19_ AOI22X1
XAOI22X1_7 gnd vdd _37_ _31_ _3_<2> _23_ _6_ AOI22X1
XINVX4_2 vdd gnd _38_ _56_<3> INVX4
XNOR2X1_14 vdd _25_ gnd _39_ _38_ NOR2X1
XINVX1_11 _39_ _40_ vdd gnd INVX1
XINVX1_12 _32_ _41_ vdd gnd INVX1
.ends counter_b4
 