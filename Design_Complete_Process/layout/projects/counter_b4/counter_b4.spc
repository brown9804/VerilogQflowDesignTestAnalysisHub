*SPICE netlist created from BLIF module counter_b4 by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt counter_b4 vdd gnd b4_enable b4_clk b4_reset b4_mode<0> b4_mode<1> b4_D<0> b4_D<1> b4_D<2> b4_D<3> b4_load b4_rco b4_Q<0> b4_Q<1> b4_Q<2> b4_Q<3> 
XNOR2X1_1 vdd _5_ gnd _0_<1> _12_ NOR2X1
XNOR2X1_2 vdd _5_ gnd _0_<2> _22_ NOR2X1
XNOR2X1_3 vdd _5_ gnd _0_<3> _36_ NOR2X1
XNOR2X1_4 vdd _5_ gnd _1_ _7_ NOR2X1
XBUFX2_1 vdd gnd _48_<0> b4_Q<0> BUFX2
XBUFX2_2 vdd gnd _48_<1> b4_Q<1> BUFX2
XBUFX2_3 vdd gnd _48_<2> b4_Q<2> BUFX2
XBUFX2_4 vdd gnd _48_<3> b4_Q<3> BUFX2
XBUFX2_5 vdd gnd _49_ b4_load BUFX2
XBUFX2_6 vdd gnd gnd b4_rco BUFX2
XDFFPOSX1_1 vdd _1_ gnd _49_ b4_clk DFFPOSX1
XDFFPOSX1_2 vdd _0_<0> gnd _48_<0> b4_clk DFFPOSX1
XDFFPOSX1_3 vdd _0_<1> gnd _48_<1> b4_clk DFFPOSX1
XDFFPOSX1_4 vdd _0_<2> gnd _48_<2> b4_clk DFFPOSX1
XDFFPOSX1_5 vdd _0_<3> gnd _48_<3> b4_clk DFFPOSX1
XDFFPOSX1_6 vdd _2_<0> gnd _48_<0> b4_clk DFFPOSX1
XDFFPOSX1_7 vdd _2_<1> gnd _48_<1> b4_clk DFFPOSX1
XDFFPOSX1_8 vdd _2_<2> gnd _48_<2> b4_clk DFFPOSX1
XDFFPOSX1_9 vdd _2_<3> gnd _48_<3> b4_clk DFFPOSX1
XINVX1_1 b4_enable _3_ vdd gnd INVX1
XNOR2X1_5 vdd _3_ gnd _4_ b4_reset NOR2X1
XINVX4_1 vdd gnd _5_ _4_ INVX4
XOAI21X1_1 gnd vdd b4_reset _3_ _6_ _48_<0> OAI21X1
XNAND2X1_1 vdd _7_ gnd b4_mode<0> b4_mode<1> NAND2X1
XINVX1_2 b4_mode<0> _8_ vdd gnd INVX1
XINVX1_3 b4_mode<1> _9_ vdd gnd INVX1
XOAI21X1_2 gnd vdd _8_ _9_ _10_ _48_<0> OAI21X1
XOAI21X1_3 gnd vdd b4_D<0> _7_ _11_ _10_ OAI21X1
XOAI21X1_4 gnd vdd _5_ _11_ _2_<0> _6_ OAI21X1
XINVX1_4 _48_<1> _12_ vdd gnd INVX1
XINVX1_5 _48_<0> _13_ vdd gnd INVX1
XNOR2X1_6 vdd _12_ gnd _14_ _13_ NOR2X1
XNOR2X1_7 vdd _48_<1> gnd _15_ _48_<0> NOR2X1
XOR2X2_1 _16_ _15_ vdd gnd _14_ OR2X2
XOR2X2_2 _17_ b4_mode<0> vdd gnd _16_ OR2X2
XNOR2X1_8 vdd _8_ gnd _18_ b4_mode<1> NOR2X1
XINVX1_6 b4_D<1> _19_ vdd gnd INVX1
XOAI21X1_5 gnd vdd _19_ _7_ _20_ _4_ OAI21X1
XAOI21X1_1 gnd vdd _16_ _18_ _21_ _20_ AOI21X1
XAOI22X1_1 gnd vdd _21_ _17_ _2_<1> _12_ _5_ AOI22X1
XINVX2_1 vdd gnd _22_ _48_<2> INVX2
XNOR2X1_9 vdd b4_mode<1> gnd _23_ b4_mode<0> NOR2X1
XNAND3X1_1 _48_<1> vdd gnd _48_<0> _48_<2> _24_ NAND3X1
XINVX1_7 _24_ _25_ vdd gnd INVX1
XAOI21X1_2 gnd vdd _48_<0> _48_<1> _26_ _48_<2> AOI21X1
XNOR2X1_10 vdd _25_ gnd _27_ _26_ NOR2X1
XINVX1_8 b4_D<2> _28_ vdd gnd INVX1
XOAI21X1_6 gnd vdd _28_ _7_ _29_ _4_ OAI21X1
XAOI21X1_3 gnd vdd _27_ _23_ _30_ _29_ AOI21X1
XXNOR2X1_1 _15_ _22_ gnd vdd _31_ XNOR2X1
XNAND2X1_2 vdd _32_ gnd b4_mode<1> _8_ NAND2X1
XINVX1_9 _26_ _33_ vdd gnd INVX1
XAOI21X1_4 gnd vdd _33_ _24_ _34_ _32_ AOI21X1
XAOI21X1_5 gnd vdd _31_ _18_ _35_ _34_ AOI21X1
XAOI22X1_2 gnd vdd _30_ _35_ _2_<2> _22_ _5_ AOI22X1
XINVX2_2 vdd gnd _36_ _48_<3> INVX2
XINVX1_10 _23_ _37_ vdd gnd INVX1
XOAI22X1_1 gnd vdd _25_ _37_ _32_ _26_ _38_ OAI22X1
XINVX1_11 b4_D<3> _39_ vdd gnd INVX1
XOAI21X1_7 gnd vdd _39_ _7_ _40_ _4_ OAI21X1
XAOI21X1_6 gnd vdd _38_ _48_<3> _41_ _40_ AOI21X1
XOR2X2_3 _42_ _48_<1> vdd gnd _48_<0> OR2X2
XOAI21X1_8 gnd vdd _48_<2> _42_ _43_ _48_<3> OAI21X1
XNAND3X1_2 _36_ vdd gnd _22_ _15_ _44_ NAND3X1
XNAND2X1_3 vdd _45_ gnd _44_ _43_ NAND2X1
XOAI22X1_2 gnd vdd _33_ _32_ _37_ _24_ _46_ OAI22X1
XAOI22X1_3 gnd vdd _18_ _45_ _47_ _36_ _46_ AOI22X1
XAOI22X1_4 gnd vdd _41_ _47_ _2_<3> _36_ _5_ AOI22X1
XNOR2X1_11 vdd _5_ gnd _0_<0> _13_ NOR2X1
.ends counter_b4
 