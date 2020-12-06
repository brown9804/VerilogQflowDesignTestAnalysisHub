*SPICE netlist created from BLIF module counter_b32 by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt counter_b32 vdd gnd b32_enable b32_clk b32_reset b32_mode<0> b32_mode<1> b32_D<0> b32_D<1> b32_D<2> b32_D<3> b32_D<4> b32_D<5> b32_D<6> b32_D<7> b32_D<8> b32_D<9> b32_D<10> b32_D<11> b32_D<12> b32_D<13> b32_D<14> b32_D<15> b32_D<16> b32_D<17> b32_D<18> b32_D<19> b32_D<20> b32_D<21> b32_D<22> b32_D<23> b32_D<24> b32_D<25> b32_D<26> b32_D<27> b32_D<28> b32_D<29> b32_D<30> b32_D<31> b32_load<0> b32_load<1> b32_load<2> b32_load<3> b32_load<4> b32_load<5> b32_load<6> b32_load<7> b32_rco<0> b32_rco<1> b32_rco<2> b32_rco<3> b32_rco<4> b32_rco<5> b32_rco<6> b32_rco<7> b32_Q<0> b32_Q<1> b32_Q<2> b32_Q<3> b32_Q<4> b32_Q<5> b32_Q<6> b32_Q<7> b32_Q<8> b32_Q<9> b32_Q<10> b32_Q<11> b32_Q<12> b32_Q<13> b32_Q<14> b32_Q<15> b32_Q<16> b32_Q<17> b32_Q<18> b32_Q<19> b32_Q<20> b32_Q<21> b32_Q<22> b32_Q<23> b32_Q<24> b32_Q<25> b32_Q<26> b32_Q<27> b32_Q<28> b32_Q<29> b32_Q<30> b32_Q<31> 
XBUFX4_1 vdd gnd b32_mode<0> b32_mode_0_bF$buf4 BUFX4
XBUFX4_2 vdd gnd b32_mode<0> b32_mode_0_bF$buf3 BUFX4
XBUFX4_3 vdd gnd b32_mode<0> b32_mode_0_bF$buf2 BUFX4
XBUFX4_4 vdd gnd b32_mode<0> b32_mode_0_bF$buf1 BUFX4
XBUFX4_5 vdd gnd b32_mode<0> b32_mode_0_bF$buf0 BUFX4
XBUFX4_6 vdd gnd b32_clk b32_clk_bF$buf7 BUFX4
XBUFX4_7 vdd gnd b32_clk b32_clk_bF$buf6 BUFX4
XBUFX4_8 vdd gnd b32_clk b32_clk_bF$buf5 BUFX4
XBUFX4_9 vdd gnd b32_clk b32_clk_bF$buf4 BUFX4
XBUFX4_10 vdd gnd b32_clk b32_clk_bF$buf3 BUFX4
XBUFX4_11 vdd gnd b32_clk b32_clk_bF$buf2 BUFX4
XBUFX4_12 vdd gnd b32_clk b32_clk_bF$buf1 BUFX4
XBUFX4_13 vdd gnd b32_clk b32_clk_bF$buf0 BUFX4
XBUFX4_14 vdd gnd b32_mode<1> b32_mode_1_bF$buf4 BUFX4
XBUFX4_15 vdd gnd b32_mode<1> b32_mode_1_bF$buf3 BUFX4
XBUFX4_16 vdd gnd b32_mode<1> b32_mode_1_bF$buf2 BUFX4
XBUFX4_17 vdd gnd b32_mode<1> b32_mode_1_bF$buf1 BUFX4
XBUFX4_18 vdd gnd b32_mode<1> b32_mode_1_bF$buf0 BUFX4
XDFFPOSX1_1 vdd _340_<3> gnd _0_<7> b32_clk_bF$buf7 DFFPOSX1
XINVX1_1 b32_enable _397_ vdd gnd INVX1
XNOR2X1_1 vdd _397_ gnd _398_ b32_reset NOR2X1
XINVX4_1 vdd gnd _399_ _398_ INVX4
XOAI21X1_1 gnd vdd b32_reset _397_ _400_ _0_<8> OAI21X1
XNAND2X1_1 vdd _401_ gnd b32_mode_0_bF$buf4 b32_mode_1_bF$buf4 NAND2X1
XINVX1_2 b32_mode_0_bF$buf3 _402_ vdd gnd INVX1
XINVX1_3 b32_mode_1_bF$buf3 _403_ vdd gnd INVX1
XOAI21X1_2 gnd vdd _402_ _403_ _404_ _0_<8> OAI21X1
XOAI21X1_3 gnd vdd b32_D<8> _401_ _405_ _404_ OAI21X1
XOAI21X1_4 gnd vdd _399_ _405_ _396_<0> _400_ OAI21X1
XINVX1_4 _0_<9> _406_ vdd gnd INVX1
XINVX1_5 _401_ _407_ vdd gnd INVX1
XNOR2X1_2 vdd _0_<9> gnd _408_ _0_<8> NOR2X1
XINVX1_6 _0_<8> _409_ vdd gnd INVX1
XNOR2X1_3 vdd _406_ gnd _410_ _409_ NOR2X1
XOR2X2_1 _411_ _408_ vdd gnd _410_ OR2X2
XNOR2X1_4 vdd _402_ gnd _412_ b32_mode_1_bF$buf2 NOR2X1
XAOI22X1_1 gnd vdd _412_ _411_ _413_ b32_D<9> _407_ AOI22X1
XNOR2X1_5 vdd _410_ gnd _414_ _408_ NOR2X1
XAOI21X1_1 gnd vdd _414_ _402_ _415_ _399_ AOI21X1
XAOI22X1_2 gnd vdd _415_ _413_ _396_<1> _406_ _399_ AOI22X1
XINVX2_1 vdd gnd _416_ _0_<10> INVX2
XNOR2X1_6 vdd _403_ gnd _417_ b32_mode_0_bF$buf2 NOR2X1
XNAND3X1_1 _0_<9> vdd gnd _0_<8> _0_<10> _418_ NAND3X1
XINVX1_7 _418_ _419_ vdd gnd INVX1
XAOI21X1_2 gnd vdd _0_<8> _0_<9> _420_ _0_<10> AOI21X1
XOR2X2_2 _421_ _420_ vdd gnd _419_ OR2X2
XINVX1_8 b32_D<10> _422_ vdd gnd INVX1
XOAI21X1_5 gnd vdd _422_ _401_ _423_ _398_ OAI21X1
XAOI21X1_3 gnd vdd _421_ _417_ _424_ _423_ AOI21X1
XNOR2X1_7 vdd b32_mode_1_bF$buf1 gnd _425_ b32_mode_0_bF$buf1 NOR2X1
XNOR2X1_8 vdd _419_ gnd _426_ _420_ NOR2X1
XNAND2X1_2 vdd _427_ gnd _416_ _408_ NAND2X1
XOAI21X1_6 gnd vdd _0_<8> _0_<9> _428_ _0_<10> OAI21X1
XNAND2X1_3 vdd _429_ gnd _428_ _427_ NAND2X1
XAOI22X1_3 gnd vdd _425_ _426_ _430_ _429_ _412_ AOI22X1
XAOI22X1_4 gnd vdd _430_ _424_ _396_<2> _416_ _399_ AOI22X1
XINVX4_2 vdd gnd _431_ _0_<11> INVX4
XNOR2X1_9 vdd _418_ gnd _432_ _431_ NOR2X1
XINVX1_9 _432_ _433_ vdd gnd INVX1
XINVX1_10 _425_ _434_ vdd gnd INVX1
XAOI21X1_4 gnd vdd _431_ _418_ _435_ _434_ AOI21X1
XINVX1_11 b32_D<11> _436_ vdd gnd INVX1
XOAI21X1_7 gnd vdd _436_ _401_ _437_ _398_ OAI21X1
XAOI21X1_5 gnd vdd _433_ _435_ _438_ _437_ AOI21X1
XNAND3X1_2 _431_ vdd gnd _416_ _408_ _439_ NAND3X1
XOR2X2_3 _440_ _0_<9> vdd gnd _0_<8> OR2X2
XOAI21X1_8 gnd vdd _0_<10> _440_ _441_ _0_<11> OAI21X1
XNAND2X1_4 vdd _442_ gnd _439_ _441_ NAND2X1
XXNOR2X1_1 _420_ _431_ gnd vdd _443_ XNOR2X1
XAOI22X1_5 gnd vdd _412_ _442_ _444_ _417_ _443_ AOI22X1
XAOI22X1_6 gnd vdd _438_ _444_ _396_<3> _431_ _399_ AOI22X1
XNOR2X1_10 vdd _399_ gnd _393_<0> _409_ NOR2X1
XNOR2X1_11 vdd _399_ gnd _393_<1> _406_ NOR2X1
XNOR2X1_12 vdd _399_ gnd _393_<2> _416_ NOR2X1
XNOR2X1_13 vdd _399_ gnd _393_<3> _431_ NOR2X1
XINVX1_12 _439_ _445_ vdd gnd INVX1
XNAND2X1_5 vdd _446_ gnd _412_ _445_ NAND2X1
XAND2X2_1 vdd gnd _420_ _431_ _447_ AND2X2
XAOI22X1_7 gnd vdd _417_ _447_ _448_ _425_ _432_ AOI22X1
XAOI21X1_6 gnd vdd _446_ _448_ _395_ _399_ AOI21X1
XNOR2X1_14 vdd _399_ gnd _394_ _401_ NOR2X1
XDFFPOSX1_2 vdd _394_ gnd counter_8b11.b4_load b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_3 vdd _395_ gnd counter_8b11.b4_rco b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_4 vdd _393_<0> gnd _0_<8> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_5 vdd _393_<1> gnd _0_<9> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_6 vdd _393_<2> gnd _0_<10> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_7 vdd _393_<3> gnd _0_<11> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_8 vdd _396_<0> gnd _0_<8> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_9 vdd _396_<1> gnd _0_<9> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_10 vdd _396_<2> gnd _0_<10> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_11 vdd _396_<3> gnd _0_<11> b32_clk_bF$buf5 DFFPOSX1
XBUFX2_1 vdd gnd _0_<0> b32_Q<0> BUFX2
XBUFX2_2 vdd gnd _0_<1> b32_Q<1> BUFX2
XBUFX2_3 vdd gnd _0_<2> b32_Q<2> BUFX2
XBUFX2_4 vdd gnd _0_<3> b32_Q<3> BUFX2
XBUFX2_5 vdd gnd _0_<4> b32_Q<4> BUFX2
XBUFX2_6 vdd gnd _0_<5> b32_Q<5> BUFX2
XBUFX2_7 vdd gnd _0_<6> b32_Q<6> BUFX2
XBUFX2_8 vdd gnd _0_<7> b32_Q<7> BUFX2
XBUFX2_9 vdd gnd _0_<8> b32_Q<8> BUFX2
XBUFX2_10 vdd gnd _0_<9> b32_Q<9> BUFX2
XBUFX2_11 vdd gnd _0_<10> b32_Q<10> BUFX2
XBUFX2_12 vdd gnd _0_<11> b32_Q<11> BUFX2
XBUFX2_13 vdd gnd _0_<12> b32_Q<12> BUFX2
XBUFX2_14 vdd gnd _0_<13> b32_Q<13> BUFX2
XBUFX2_15 vdd gnd _0_<14> b32_Q<14> BUFX2
XBUFX2_16 vdd gnd _0_<15> b32_Q<15> BUFX2
XBUFX2_17 vdd gnd _0_<16> b32_Q<16> BUFX2
XBUFX2_18 vdd gnd _0_<17> b32_Q<17> BUFX2
XBUFX2_19 vdd gnd _0_<18> b32_Q<18> BUFX2
XBUFX2_20 vdd gnd _0_<19> b32_Q<19> BUFX2
XBUFX2_21 vdd gnd _0_<20> b32_Q<20> BUFX2
XBUFX2_22 vdd gnd _0_<21> b32_Q<21> BUFX2
XBUFX2_23 vdd gnd _0_<22> b32_Q<22> BUFX2
XBUFX2_24 vdd gnd _0_<23> b32_Q<23> BUFX2
XBUFX2_25 vdd gnd _0_<24> b32_Q<24> BUFX2
XBUFX2_26 vdd gnd _0_<25> b32_Q<25> BUFX2
XBUFX2_27 vdd gnd _0_<26> b32_Q<26> BUFX2
XBUFX2_28 vdd gnd _0_<27> b32_Q<27> BUFX2
XBUFX2_29 vdd gnd _0_<28> b32_Q<28> BUFX2
XBUFX2_30 vdd gnd _0_<29> b32_Q<29> BUFX2
XBUFX2_31 vdd gnd _0_<30> b32_Q<30> BUFX2
XBUFX2_32 vdd gnd _0_<31> b32_Q<31> BUFX2
XBUFX2_33 vdd gnd counter_0b3.b4_load b32_load<0> BUFX2
XBUFX2_34 vdd gnd counter_4b7.b4_load b32_load<1> BUFX2
XBUFX2_35 vdd gnd counter_8b11.b4_load b32_load<2> BUFX2
XBUFX2_36 vdd gnd counter_12b15.b4_load b32_load<3> BUFX2
XBUFX2_37 vdd gnd counter_16b19.b4_load b32_load<4> BUFX2
XBUFX2_38 vdd gnd counter_20b23.b4_load b32_load<5> BUFX2
XBUFX2_39 vdd gnd counter_24b27.b4_load b32_load<6> BUFX2
XBUFX2_40 vdd gnd counter_28b31.b4_load b32_load<7> BUFX2
XBUFX2_41 vdd gnd counter_0b3.b4_rco b32_rco<0> BUFX2
XBUFX2_42 vdd gnd counter_4b7.b4_rco b32_rco<1> BUFX2
XBUFX2_43 vdd gnd counter_8b11.b4_rco b32_rco<2> BUFX2
XBUFX2_44 vdd gnd counter_12b15.b4_rco b32_rco<3> BUFX2
XBUFX2_45 vdd gnd counter_16b19.b4_rco b32_rco<4> BUFX2
XBUFX2_46 vdd gnd counter_20b23.b4_rco b32_rco<5> BUFX2
XBUFX2_47 vdd gnd counter_24b27.b4_rco b32_rco<6> BUFX2
XBUFX2_48 vdd gnd counter_28b31.b4_rco b32_rco<7> BUFX2
XINVX1_13 b32_enable _5_ vdd gnd INVX1
XNOR2X1_15 vdd _5_ gnd _6_ b32_reset NOR2X1
XINVX4_3 vdd gnd _7_ _6_ INVX4
XOAI21X1_9 gnd vdd b32_reset _5_ _8_ _0_<0> OAI21X1
XNAND2X1_6 vdd _9_ gnd b32_mode_0_bF$buf0 b32_mode_1_bF$buf0 NAND2X1
XINVX1_14 b32_mode_0_bF$buf4 _10_ vdd gnd INVX1
XINVX1_15 b32_mode_1_bF$buf4 _11_ vdd gnd INVX1
XOAI21X1_10 gnd vdd _10_ _11_ _12_ _0_<0> OAI21X1
XOAI21X1_11 gnd vdd b32_D<0> _9_ _13_ _12_ OAI21X1
XOAI21X1_12 gnd vdd _7_ _13_ _4_<0> _8_ OAI21X1
XINVX1_16 _0_<1> _14_ vdd gnd INVX1
XINVX1_17 _9_ _15_ vdd gnd INVX1
XNOR2X1_16 vdd _0_<1> gnd _16_ _0_<0> NOR2X1
XINVX1_18 _0_<0> _17_ vdd gnd INVX1
XNOR2X1_17 vdd _14_ gnd _18_ _17_ NOR2X1
XOR2X2_4 _19_ _16_ vdd gnd _18_ OR2X2
XNOR2X1_18 vdd _10_ gnd _20_ b32_mode_1_bF$buf3 NOR2X1
XAOI22X1_8 gnd vdd _20_ _19_ _21_ b32_D<1> _15_ AOI22X1
XNOR2X1_19 vdd _18_ gnd _22_ _16_ NOR2X1
XAOI21X1_7 gnd vdd _22_ _10_ _23_ _7_ AOI21X1
XAOI22X1_9 gnd vdd _23_ _21_ _4_<1> _14_ _7_ AOI22X1
XINVX2_2 vdd gnd _24_ _0_<2> INVX2
XNOR2X1_20 vdd _11_ gnd _25_ b32_mode_0_bF$buf3 NOR2X1
XNAND3X1_3 _0_<1> vdd gnd _0_<0> _0_<2> _26_ NAND3X1
XINVX1_19 _26_ _27_ vdd gnd INVX1
XAOI21X1_8 gnd vdd _0_<0> _0_<1> _28_ _0_<2> AOI21X1
XOR2X2_5 _29_ _28_ vdd gnd _27_ OR2X2
XINVX1_20 b32_D<2> _30_ vdd gnd INVX1
XOAI21X1_13 gnd vdd _30_ _9_ _31_ _6_ OAI21X1
XAOI21X1_9 gnd vdd _29_ _25_ _32_ _31_ AOI21X1
XNOR2X1_21 vdd b32_mode_1_bF$buf2 gnd _33_ b32_mode_0_bF$buf2 NOR2X1
XNOR2X1_22 vdd _27_ gnd _34_ _28_ NOR2X1
XNAND2X1_7 vdd _35_ gnd _24_ _16_ NAND2X1
XOAI21X1_14 gnd vdd _0_<0> _0_<1> _36_ _0_<2> OAI21X1
XNAND2X1_8 vdd _37_ gnd _36_ _35_ NAND2X1
XAOI22X1_10 gnd vdd _33_ _34_ _38_ _37_ _20_ AOI22X1
XAOI22X1_11 gnd vdd _38_ _32_ _4_<2> _24_ _7_ AOI22X1
XINVX4_4 vdd gnd _39_ _0_<3> INVX4
XNOR2X1_23 vdd _26_ gnd _40_ _39_ NOR2X1
XINVX1_21 _40_ _41_ vdd gnd INVX1
XINVX1_22 _33_ _42_ vdd gnd INVX1
XAOI21X1_10 gnd vdd _39_ _26_ _43_ _42_ AOI21X1
XINVX1_23 b32_D<3> _44_ vdd gnd INVX1
XOAI21X1_15 gnd vdd _44_ _9_ _45_ _6_ OAI21X1
XAOI21X1_11 gnd vdd _41_ _43_ _46_ _45_ AOI21X1
XNAND3X1_4 _39_ vdd gnd _24_ _16_ _47_ NAND3X1
XOR2X2_6 _48_ _0_<1> vdd gnd _0_<0> OR2X2
XOAI21X1_16 gnd vdd _0_<2> _48_ _49_ _0_<3> OAI21X1
XNAND2X1_9 vdd _50_ gnd _47_ _49_ NAND2X1
XXNOR2X1_2 _28_ _39_ gnd vdd _51_ XNOR2X1
XAOI22X1_12 gnd vdd _20_ _50_ _52_ _25_ _51_ AOI22X1
XAOI22X1_13 gnd vdd _46_ _52_ _4_<3> _39_ _7_ AOI22X1
XNOR2X1_24 vdd _7_ gnd _1_<0> _17_ NOR2X1
XNOR2X1_25 vdd _7_ gnd _1_<1> _14_ NOR2X1
XNOR2X1_26 vdd _7_ gnd _1_<2> _24_ NOR2X1
XNOR2X1_27 vdd _7_ gnd _1_<3> _39_ NOR2X1
XINVX1_24 _47_ _53_ vdd gnd INVX1
XNAND2X1_10 vdd _54_ gnd _20_ _53_ NAND2X1
XAND2X2_2 vdd gnd _28_ _39_ _55_ AND2X2
XAOI22X1_14 gnd vdd _25_ _55_ _56_ _33_ _40_ AOI22X1
XAOI21X1_12 gnd vdd _54_ _56_ _3_ _7_ AOI21X1
XNOR2X1_28 vdd _7_ gnd _2_ _9_ NOR2X1
XDFFPOSX1_12 vdd _2_ gnd counter_0b3.b4_load b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_13 vdd _3_ gnd counter_0b3.b4_rco b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_14 vdd _1_<0> gnd _0_<0> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_15 vdd _1_<1> gnd _0_<1> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_16 vdd _1_<2> gnd _0_<2> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_17 vdd _1_<3> gnd _0_<3> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_18 vdd _4_<0> gnd _0_<0> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_19 vdd _4_<1> gnd _0_<1> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_20 vdd _4_<2> gnd _0_<2> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_21 vdd _4_<3> gnd _0_<3> b32_clk_bF$buf3 DFFPOSX1
XINVX1_25 b32_enable _61_ vdd gnd INVX1
XNOR2X1_29 vdd _61_ gnd _62_ b32_reset NOR2X1
XINVX4_5 vdd gnd _63_ _62_ INVX4
XOAI21X1_17 gnd vdd b32_reset _61_ _64_ _0_<12> OAI21X1
XNAND2X1_11 vdd _65_ gnd b32_mode_0_bF$buf1 b32_mode_1_bF$buf1 NAND2X1
XINVX1_26 b32_mode_0_bF$buf0 _66_ vdd gnd INVX1
XINVX1_27 b32_mode_1_bF$buf0 _67_ vdd gnd INVX1
XOAI21X1_18 gnd vdd _66_ _67_ _68_ _0_<12> OAI21X1
XOAI21X1_19 gnd vdd b32_D<12> _65_ _69_ _68_ OAI21X1
XOAI21X1_20 gnd vdd _63_ _69_ _60_<0> _64_ OAI21X1
XINVX1_28 _0_<13> _70_ vdd gnd INVX1
XINVX1_29 _65_ _71_ vdd gnd INVX1
XNOR2X1_30 vdd _0_<13> gnd _72_ _0_<12> NOR2X1
XINVX1_30 _0_<12> _73_ vdd gnd INVX1
XNOR2X1_31 vdd _70_ gnd _74_ _73_ NOR2X1
XOR2X2_7 _75_ _72_ vdd gnd _74_ OR2X2
XNOR2X1_32 vdd _66_ gnd _76_ b32_mode_1_bF$buf4 NOR2X1
XAOI22X1_15 gnd vdd _76_ _75_ _77_ b32_D<13> _71_ AOI22X1
XNOR2X1_33 vdd _74_ gnd _78_ _72_ NOR2X1
XAOI21X1_13 gnd vdd _78_ _66_ _79_ _63_ AOI21X1
XAOI22X1_16 gnd vdd _79_ _77_ _60_<1> _70_ _63_ AOI22X1
XINVX2_3 vdd gnd _80_ _0_<14> INVX2
XNOR2X1_34 vdd _67_ gnd _81_ b32_mode_0_bF$buf4 NOR2X1
XNAND3X1_5 _0_<13> vdd gnd _0_<12> _0_<14> _82_ NAND3X1
XINVX1_31 _82_ _83_ vdd gnd INVX1
XAOI21X1_14 gnd vdd _0_<12> _0_<13> _84_ _0_<14> AOI21X1
XOR2X2_8 _85_ _84_ vdd gnd _83_ OR2X2
XINVX1_32 b32_D<14> _86_ vdd gnd INVX1
XOAI21X1_21 gnd vdd _86_ _65_ _87_ _62_ OAI21X1
XAOI21X1_15 gnd vdd _85_ _81_ _88_ _87_ AOI21X1
XNOR2X1_35 vdd b32_mode_1_bF$buf3 gnd _89_ b32_mode_0_bF$buf3 NOR2X1
XNOR2X1_36 vdd _83_ gnd _90_ _84_ NOR2X1
XNAND2X1_12 vdd _91_ gnd _80_ _72_ NAND2X1
XOAI21X1_22 gnd vdd _0_<12> _0_<13> _92_ _0_<14> OAI21X1
XNAND2X1_13 vdd _93_ gnd _92_ _91_ NAND2X1
XAOI22X1_17 gnd vdd _89_ _90_ _94_ _93_ _76_ AOI22X1
XAOI22X1_18 gnd vdd _94_ _88_ _60_<2> _80_ _63_ AOI22X1
XINVX4_6 vdd gnd _95_ _0_<15> INVX4
XNOR2X1_37 vdd _82_ gnd _96_ _95_ NOR2X1
XINVX1_33 _96_ _97_ vdd gnd INVX1
XINVX1_34 _89_ _98_ vdd gnd INVX1
XAOI21X1_16 gnd vdd _95_ _82_ _99_ _98_ AOI21X1
XINVX1_35 b32_D<15> _100_ vdd gnd INVX1
XOAI21X1_23 gnd vdd _100_ _65_ _101_ _62_ OAI21X1
XAOI21X1_17 gnd vdd _97_ _99_ _102_ _101_ AOI21X1
XNAND3X1_6 _95_ vdd gnd _80_ _72_ _103_ NAND3X1
XOR2X2_9 _104_ _0_<13> vdd gnd _0_<12> OR2X2
XOAI21X1_24 gnd vdd _0_<14> _104_ _105_ _0_<15> OAI21X1
XNAND2X1_14 vdd _106_ gnd _103_ _105_ NAND2X1
XXNOR2X1_3 _84_ _95_ gnd vdd _107_ XNOR2X1
XAOI22X1_19 gnd vdd _76_ _106_ _108_ _81_ _107_ AOI22X1
XAOI22X1_20 gnd vdd _102_ _108_ _60_<3> _95_ _63_ AOI22X1
XNOR2X1_38 vdd _63_ gnd _57_<0> _73_ NOR2X1
XNOR2X1_39 vdd _63_ gnd _57_<1> _70_ NOR2X1
XNOR2X1_40 vdd _63_ gnd _57_<2> _80_ NOR2X1
XNOR2X1_41 vdd _63_ gnd _57_<3> _95_ NOR2X1
XINVX1_36 _103_ _109_ vdd gnd INVX1
XNAND2X1_15 vdd _110_ gnd _76_ _109_ NAND2X1
XAND2X2_3 vdd gnd _84_ _95_ _111_ AND2X2
XAOI22X1_21 gnd vdd _81_ _111_ _112_ _89_ _96_ AOI22X1
XAOI21X1_18 gnd vdd _110_ _112_ _59_ _63_ AOI21X1
XNOR2X1_42 vdd _63_ gnd _58_ _65_ NOR2X1
XDFFPOSX1_22 vdd _58_ gnd counter_12b15.b4_load b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_23 vdd _59_ gnd counter_12b15.b4_rco b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_24 vdd _57_<0> gnd _0_<12> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_25 vdd _57_<1> gnd _0_<13> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_26 vdd _57_<2> gnd _0_<14> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_27 vdd _57_<3> gnd _0_<15> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_28 vdd _60_<0> gnd _0_<12> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_29 vdd _60_<1> gnd _0_<13> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_30 vdd _60_<2> gnd _0_<14> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_31 vdd _60_<3> gnd _0_<15> b32_clk_bF$buf1 DFFPOSX1
XINVX1_37 b32_enable _117_ vdd gnd INVX1
XNOR2X1_43 vdd _117_ gnd _118_ b32_reset NOR2X1
XINVX4_7 vdd gnd _119_ _118_ INVX4
XOAI21X1_25 gnd vdd b32_reset _117_ _120_ _0_<16> OAI21X1
XNAND2X1_16 vdd _121_ gnd b32_mode_0_bF$buf2 b32_mode_1_bF$buf2 NAND2X1
XINVX1_38 b32_mode_0_bF$buf1 _122_ vdd gnd INVX1
XINVX1_39 b32_mode_1_bF$buf1 _123_ vdd gnd INVX1
XOAI21X1_26 gnd vdd _122_ _123_ _124_ _0_<16> OAI21X1
XOAI21X1_27 gnd vdd b32_D<16> _121_ _125_ _124_ OAI21X1
XOAI21X1_28 gnd vdd _119_ _125_ _116_<0> _120_ OAI21X1
XINVX1_40 _0_<17> _126_ vdd gnd INVX1
XINVX1_41 _121_ _127_ vdd gnd INVX1
XNOR2X1_44 vdd _0_<17> gnd _128_ _0_<16> NOR2X1
XINVX1_42 _0_<16> _129_ vdd gnd INVX1
XNOR2X1_45 vdd _126_ gnd _130_ _129_ NOR2X1
XOR2X2_10 _131_ _128_ vdd gnd _130_ OR2X2
XNOR2X1_46 vdd _122_ gnd _132_ b32_mode_1_bF$buf0 NOR2X1
XAOI22X1_22 gnd vdd _132_ _131_ _133_ b32_D<17> _127_ AOI22X1
XNOR2X1_47 vdd _130_ gnd _134_ _128_ NOR2X1
XAOI21X1_19 gnd vdd _134_ _122_ _135_ _119_ AOI21X1
XAOI22X1_23 gnd vdd _135_ _133_ _116_<1> _126_ _119_ AOI22X1
XINVX2_4 vdd gnd _136_ _0_<18> INVX2
XNOR2X1_48 vdd _123_ gnd _137_ b32_mode_0_bF$buf0 NOR2X1
XNAND3X1_7 _0_<17> vdd gnd _0_<16> _0_<18> _138_ NAND3X1
XINVX1_43 _138_ _139_ vdd gnd INVX1
XAOI21X1_20 gnd vdd _0_<16> _0_<17> _140_ _0_<18> AOI21X1
XOR2X2_11 _141_ _140_ vdd gnd _139_ OR2X2
XINVX1_44 b32_D<18> _142_ vdd gnd INVX1
XOAI21X1_29 gnd vdd _142_ _121_ _143_ _118_ OAI21X1
XAOI21X1_21 gnd vdd _141_ _137_ _144_ _143_ AOI21X1
XNOR2X1_49 vdd b32_mode_1_bF$buf4 gnd _145_ b32_mode_0_bF$buf4 NOR2X1
XNOR2X1_50 vdd _139_ gnd _146_ _140_ NOR2X1
XNAND2X1_17 vdd _147_ gnd _136_ _128_ NAND2X1
XOAI21X1_30 gnd vdd _0_<16> _0_<17> _148_ _0_<18> OAI21X1
XNAND2X1_18 vdd _149_ gnd _148_ _147_ NAND2X1
XAOI22X1_24 gnd vdd _145_ _146_ _150_ _149_ _132_ AOI22X1
XAOI22X1_25 gnd vdd _150_ _144_ _116_<2> _136_ _119_ AOI22X1
XINVX4_8 vdd gnd _151_ _0_<19> INVX4
XNOR2X1_51 vdd _138_ gnd _152_ _151_ NOR2X1
XINVX1_45 _152_ _153_ vdd gnd INVX1
XINVX1_46 _145_ _154_ vdd gnd INVX1
XAOI21X1_22 gnd vdd _151_ _138_ _155_ _154_ AOI21X1
XINVX1_47 b32_D<19> _156_ vdd gnd INVX1
XOAI21X1_31 gnd vdd _156_ _121_ _157_ _118_ OAI21X1
XAOI21X1_23 gnd vdd _153_ _155_ _158_ _157_ AOI21X1
XNAND3X1_8 _151_ vdd gnd _136_ _128_ _159_ NAND3X1
XOR2X2_12 _160_ _0_<17> vdd gnd _0_<16> OR2X2
XOAI21X1_32 gnd vdd _0_<18> _160_ _161_ _0_<19> OAI21X1
XNAND2X1_19 vdd _162_ gnd _159_ _161_ NAND2X1
XXNOR2X1_4 _140_ _151_ gnd vdd _163_ XNOR2X1
XAOI22X1_26 gnd vdd _132_ _162_ _164_ _137_ _163_ AOI22X1
XAOI22X1_27 gnd vdd _158_ _164_ _116_<3> _151_ _119_ AOI22X1
XNOR2X1_52 vdd _119_ gnd _113_<0> _129_ NOR2X1
XNOR2X1_53 vdd _119_ gnd _113_<1> _126_ NOR2X1
XNOR2X1_54 vdd _119_ gnd _113_<2> _136_ NOR2X1
XNOR2X1_55 vdd _119_ gnd _113_<3> _151_ NOR2X1
XINVX1_48 _159_ _165_ vdd gnd INVX1
XNAND2X1_20 vdd _166_ gnd _132_ _165_ NAND2X1
XAND2X2_4 vdd gnd _140_ _151_ _167_ AND2X2
XAOI22X1_28 gnd vdd _137_ _167_ _168_ _145_ _152_ AOI22X1
XAOI21X1_24 gnd vdd _166_ _168_ _115_ _119_ AOI21X1
XNOR2X1_56 vdd _119_ gnd _114_ _121_ NOR2X1
XDFFPOSX1_32 vdd _114_ gnd counter_16b19.b4_load b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_33 vdd _115_ gnd counter_16b19.b4_rco b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_34 vdd _113_<0> gnd _0_<16> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_35 vdd _113_<1> gnd _0_<17> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_36 vdd _113_<2> gnd _0_<18> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_37 vdd _113_<3> gnd _0_<19> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_38 vdd _116_<0> gnd _0_<16> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_39 vdd _116_<1> gnd _0_<17> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_40 vdd _116_<2> gnd _0_<18> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_41 vdd _116_<3> gnd _0_<19> b32_clk_bF$buf7 DFFPOSX1
XINVX1_49 b32_enable _173_ vdd gnd INVX1
XNOR2X1_57 vdd _173_ gnd _174_ b32_reset NOR2X1
XINVX4_9 vdd gnd _175_ _174_ INVX4
XOAI21X1_33 gnd vdd b32_reset _173_ _176_ _0_<20> OAI21X1
XNAND2X1_21 vdd _177_ gnd b32_mode_0_bF$buf3 b32_mode_1_bF$buf3 NAND2X1
XINVX1_50 b32_mode_0_bF$buf2 _178_ vdd gnd INVX1
XINVX1_51 b32_mode_1_bF$buf2 _179_ vdd gnd INVX1
XOAI21X1_34 gnd vdd _178_ _179_ _180_ _0_<20> OAI21X1
XOAI21X1_35 gnd vdd b32_D<20> _177_ _181_ _180_ OAI21X1
XOAI21X1_36 gnd vdd _175_ _181_ _172_<0> _176_ OAI21X1
XINVX1_52 _0_<21> _182_ vdd gnd INVX1
XINVX1_53 _177_ _183_ vdd gnd INVX1
XNOR2X1_58 vdd _0_<21> gnd _184_ _0_<20> NOR2X1
XINVX1_54 _0_<20> _185_ vdd gnd INVX1
XNOR2X1_59 vdd _182_ gnd _186_ _185_ NOR2X1
XOR2X2_13 _187_ _184_ vdd gnd _186_ OR2X2
XNOR2X1_60 vdd _178_ gnd _188_ b32_mode_1_bF$buf1 NOR2X1
XAOI22X1_29 gnd vdd _188_ _187_ _189_ b32_D<21> _183_ AOI22X1
XNOR2X1_61 vdd _186_ gnd _190_ _184_ NOR2X1
XAOI21X1_25 gnd vdd _190_ _178_ _191_ _175_ AOI21X1
XAOI22X1_30 gnd vdd _191_ _189_ _172_<1> _182_ _175_ AOI22X1
XINVX2_5 vdd gnd _192_ _0_<22> INVX2
XNOR2X1_62 vdd _179_ gnd _193_ b32_mode_0_bF$buf1 NOR2X1
XNAND3X1_9 _0_<21> vdd gnd _0_<20> _0_<22> _194_ NAND3X1
XINVX1_55 _194_ _195_ vdd gnd INVX1
XAOI21X1_26 gnd vdd _0_<20> _0_<21> _196_ _0_<22> AOI21X1
XOR2X2_14 _197_ _196_ vdd gnd _195_ OR2X2
XINVX1_56 b32_D<22> _198_ vdd gnd INVX1
XOAI21X1_37 gnd vdd _198_ _177_ _199_ _174_ OAI21X1
XAOI21X1_27 gnd vdd _197_ _193_ _200_ _199_ AOI21X1
XNOR2X1_63 vdd b32_mode_1_bF$buf0 gnd _201_ b32_mode_0_bF$buf0 NOR2X1
XNOR2X1_64 vdd _195_ gnd _202_ _196_ NOR2X1
XNAND2X1_22 vdd _203_ gnd _192_ _184_ NAND2X1
XOAI21X1_38 gnd vdd _0_<20> _0_<21> _204_ _0_<22> OAI21X1
XNAND2X1_23 vdd _205_ gnd _204_ _203_ NAND2X1
XAOI22X1_31 gnd vdd _201_ _202_ _206_ _205_ _188_ AOI22X1
XAOI22X1_32 gnd vdd _206_ _200_ _172_<2> _192_ _175_ AOI22X1
XINVX4_10 vdd gnd _207_ _0_<23> INVX4
XNOR2X1_65 vdd _194_ gnd _208_ _207_ NOR2X1
XINVX1_57 _208_ _209_ vdd gnd INVX1
XINVX1_58 _201_ _210_ vdd gnd INVX1
XAOI21X1_28 gnd vdd _207_ _194_ _211_ _210_ AOI21X1
XINVX1_59 b32_D<23> _212_ vdd gnd INVX1
XOAI21X1_39 gnd vdd _212_ _177_ _213_ _174_ OAI21X1
XAOI21X1_29 gnd vdd _209_ _211_ _214_ _213_ AOI21X1
XNAND3X1_10 _207_ vdd gnd _192_ _184_ _215_ NAND3X1
XOR2X2_15 _216_ _0_<21> vdd gnd _0_<20> OR2X2
XOAI21X1_40 gnd vdd _0_<22> _216_ _217_ _0_<23> OAI21X1
XNAND2X1_24 vdd _218_ gnd _215_ _217_ NAND2X1
XXNOR2X1_5 _196_ _207_ gnd vdd _219_ XNOR2X1
XAOI22X1_33 gnd vdd _188_ _218_ _220_ _193_ _219_ AOI22X1
XAOI22X1_34 gnd vdd _214_ _220_ _172_<3> _207_ _175_ AOI22X1
XNOR2X1_66 vdd _175_ gnd _169_<0> _185_ NOR2X1
XNOR2X1_67 vdd _175_ gnd _169_<1> _182_ NOR2X1
XNOR2X1_68 vdd _175_ gnd _169_<2> _192_ NOR2X1
XNOR2X1_69 vdd _175_ gnd _169_<3> _207_ NOR2X1
XINVX1_60 _215_ _221_ vdd gnd INVX1
XNAND2X1_25 vdd _222_ gnd _188_ _221_ NAND2X1
XAND2X2_5 vdd gnd _196_ _207_ _223_ AND2X2
XAOI22X1_35 gnd vdd _193_ _223_ _224_ _201_ _208_ AOI22X1
XAOI21X1_30 gnd vdd _222_ _224_ _171_ _175_ AOI21X1
XNOR2X1_70 vdd _175_ gnd _170_ _177_ NOR2X1
XDFFPOSX1_42 vdd _170_ gnd counter_20b23.b4_load b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_43 vdd _171_ gnd counter_20b23.b4_rco b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_44 vdd _169_<0> gnd _0_<20> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_45 vdd _169_<1> gnd _0_<21> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_46 vdd _169_<2> gnd _0_<22> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_47 vdd _169_<3> gnd _0_<23> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_48 vdd _172_<0> gnd _0_<20> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_49 vdd _172_<1> gnd _0_<21> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_50 vdd _172_<2> gnd _0_<22> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_51 vdd _172_<3> gnd _0_<23> b32_clk_bF$buf5 DFFPOSX1
XINVX1_61 b32_enable _229_ vdd gnd INVX1
XNOR2X1_71 vdd _229_ gnd _230_ b32_reset NOR2X1
XINVX4_11 vdd gnd _231_ _230_ INVX4
XOAI21X1_41 gnd vdd b32_reset _229_ _232_ _0_<24> OAI21X1
XNAND2X1_26 vdd _233_ gnd b32_mode_0_bF$buf4 b32_mode_1_bF$buf4 NAND2X1
XINVX1_62 b32_mode_0_bF$buf3 _234_ vdd gnd INVX1
XINVX1_63 b32_mode_1_bF$buf3 _235_ vdd gnd INVX1
XOAI21X1_42 gnd vdd _234_ _235_ _236_ _0_<24> OAI21X1
XOAI21X1_43 gnd vdd b32_D<24> _233_ _237_ _236_ OAI21X1
XOAI21X1_44 gnd vdd _231_ _237_ _228_<0> _232_ OAI21X1
XINVX1_64 _0_<25> _238_ vdd gnd INVX1
XINVX1_65 _233_ _239_ vdd gnd INVX1
XNOR2X1_72 vdd _0_<25> gnd _240_ _0_<24> NOR2X1
XINVX1_66 _0_<24> _241_ vdd gnd INVX1
XNOR2X1_73 vdd _238_ gnd _242_ _241_ NOR2X1
XOR2X2_16 _243_ _240_ vdd gnd _242_ OR2X2
XNOR2X1_74 vdd _234_ gnd _244_ b32_mode_1_bF$buf2 NOR2X1
XAOI22X1_36 gnd vdd _244_ _243_ _245_ b32_D<25> _239_ AOI22X1
XNOR2X1_75 vdd _242_ gnd _246_ _240_ NOR2X1
XAOI21X1_31 gnd vdd _246_ _234_ _247_ _231_ AOI21X1
XAOI22X1_37 gnd vdd _247_ _245_ _228_<1> _238_ _231_ AOI22X1
XINVX2_6 vdd gnd _248_ _0_<26> INVX2
XNOR2X1_76 vdd _235_ gnd _249_ b32_mode_0_bF$buf2 NOR2X1
XNAND3X1_11 _0_<25> vdd gnd _0_<24> _0_<26> _250_ NAND3X1
XINVX1_67 _250_ _251_ vdd gnd INVX1
XAOI21X1_32 gnd vdd _0_<24> _0_<25> _252_ _0_<26> AOI21X1
XOR2X2_17 _253_ _252_ vdd gnd _251_ OR2X2
XINVX1_68 b32_D<26> _254_ vdd gnd INVX1
XOAI21X1_45 gnd vdd _254_ _233_ _255_ _230_ OAI21X1
XAOI21X1_33 gnd vdd _253_ _249_ _256_ _255_ AOI21X1
XNOR2X1_77 vdd b32_mode_1_bF$buf1 gnd _257_ b32_mode_0_bF$buf1 NOR2X1
XNOR2X1_78 vdd _251_ gnd _258_ _252_ NOR2X1
XNAND2X1_27 vdd _259_ gnd _248_ _240_ NAND2X1
XOAI21X1_46 gnd vdd _0_<24> _0_<25> _260_ _0_<26> OAI21X1
XNAND2X1_28 vdd _261_ gnd _260_ _259_ NAND2X1
XAOI22X1_38 gnd vdd _257_ _258_ _262_ _261_ _244_ AOI22X1
XAOI22X1_39 gnd vdd _262_ _256_ _228_<2> _248_ _231_ AOI22X1
XINVX4_12 vdd gnd _263_ _0_<27> INVX4
XNOR2X1_79 vdd _250_ gnd _264_ _263_ NOR2X1
XINVX1_69 _264_ _265_ vdd gnd INVX1
XINVX1_70 _257_ _266_ vdd gnd INVX1
XAOI21X1_34 gnd vdd _263_ _250_ _267_ _266_ AOI21X1
XINVX1_71 b32_D<27> _268_ vdd gnd INVX1
XOAI21X1_47 gnd vdd _268_ _233_ _269_ _230_ OAI21X1
XAOI21X1_35 gnd vdd _265_ _267_ _270_ _269_ AOI21X1
XNAND3X1_12 _263_ vdd gnd _248_ _240_ _271_ NAND3X1
XOR2X2_18 _272_ _0_<25> vdd gnd _0_<24> OR2X2
XOAI21X1_48 gnd vdd _0_<26> _272_ _273_ _0_<27> OAI21X1
XNAND2X1_29 vdd _274_ gnd _271_ _273_ NAND2X1
XXNOR2X1_6 _252_ _263_ gnd vdd _275_ XNOR2X1
XAOI22X1_40 gnd vdd _244_ _274_ _276_ _249_ _275_ AOI22X1
XAOI22X1_41 gnd vdd _270_ _276_ _228_<3> _263_ _231_ AOI22X1
XNOR2X1_80 vdd _231_ gnd _225_<0> _241_ NOR2X1
XNOR2X1_81 vdd _231_ gnd _225_<1> _238_ NOR2X1
XNOR2X1_82 vdd _231_ gnd _225_<2> _248_ NOR2X1
XNOR2X1_83 vdd _231_ gnd _225_<3> _263_ NOR2X1
XINVX1_72 _271_ _277_ vdd gnd INVX1
XNAND2X1_30 vdd _278_ gnd _244_ _277_ NAND2X1
XAND2X2_6 vdd gnd _252_ _263_ _279_ AND2X2
XAOI22X1_42 gnd vdd _249_ _279_ _280_ _257_ _264_ AOI22X1
XAOI21X1_36 gnd vdd _278_ _280_ _227_ _231_ AOI21X1
XNOR2X1_84 vdd _231_ gnd _226_ _233_ NOR2X1
XDFFPOSX1_52 vdd _226_ gnd counter_24b27.b4_load b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_53 vdd _227_ gnd counter_24b27.b4_rco b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_54 vdd _225_<0> gnd _0_<24> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_55 vdd _225_<1> gnd _0_<25> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_56 vdd _225_<2> gnd _0_<26> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_57 vdd _225_<3> gnd _0_<27> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_58 vdd _228_<0> gnd _0_<24> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_59 vdd _228_<1> gnd _0_<25> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_60 vdd _228_<2> gnd _0_<26> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_61 vdd _228_<3> gnd _0_<27> b32_clk_bF$buf3 DFFPOSX1
XINVX1_73 b32_enable _285_ vdd gnd INVX1
XNOR2X1_85 vdd _285_ gnd _286_ b32_reset NOR2X1
XINVX4_13 vdd gnd _287_ _286_ INVX4
XOAI21X1_49 gnd vdd b32_reset _285_ _288_ _0_<28> OAI21X1
XNAND2X1_31 vdd _289_ gnd b32_mode_0_bF$buf0 b32_mode_1_bF$buf0 NAND2X1
XINVX1_74 b32_mode_0_bF$buf4 _290_ vdd gnd INVX1
XINVX1_75 b32_mode_1_bF$buf4 _291_ vdd gnd INVX1
XOAI21X1_50 gnd vdd _290_ _291_ _292_ _0_<28> OAI21X1
XOAI21X1_51 gnd vdd b32_D<28> _289_ _293_ _292_ OAI21X1
XOAI21X1_52 gnd vdd _287_ _293_ _284_<0> _288_ OAI21X1
XINVX1_76 _0_<29> _294_ vdd gnd INVX1
XINVX1_77 _289_ _295_ vdd gnd INVX1
XNOR2X1_86 vdd _0_<29> gnd _296_ _0_<28> NOR2X1
XINVX1_78 _0_<28> _297_ vdd gnd INVX1
XNOR2X1_87 vdd _294_ gnd _298_ _297_ NOR2X1
XOR2X2_19 _299_ _296_ vdd gnd _298_ OR2X2
XNOR2X1_88 vdd _290_ gnd _300_ b32_mode_1_bF$buf3 NOR2X1
XAOI22X1_43 gnd vdd _300_ _299_ _301_ b32_D<29> _295_ AOI22X1
XNOR2X1_89 vdd _298_ gnd _302_ _296_ NOR2X1
XAOI21X1_37 gnd vdd _302_ _290_ _303_ _287_ AOI21X1
XAOI22X1_44 gnd vdd _303_ _301_ _284_<1> _294_ _287_ AOI22X1
XINVX2_7 vdd gnd _304_ _0_<30> INVX2
XNOR2X1_90 vdd _291_ gnd _305_ b32_mode_0_bF$buf3 NOR2X1
XNAND3X1_13 _0_<29> vdd gnd _0_<28> _0_<30> _306_ NAND3X1
XINVX1_79 _306_ _307_ vdd gnd INVX1
XAOI21X1_38 gnd vdd _0_<28> _0_<29> _308_ _0_<30> AOI21X1
XOR2X2_20 _309_ _308_ vdd gnd _307_ OR2X2
XINVX1_80 b32_D<30> _310_ vdd gnd INVX1
XOAI21X1_53 gnd vdd _310_ _289_ _311_ _286_ OAI21X1
XAOI21X1_39 gnd vdd _309_ _305_ _312_ _311_ AOI21X1
XNOR2X1_91 vdd b32_mode_1_bF$buf2 gnd _313_ b32_mode_0_bF$buf2 NOR2X1
XNOR2X1_92 vdd _307_ gnd _314_ _308_ NOR2X1
XNAND2X1_32 vdd _315_ gnd _304_ _296_ NAND2X1
XOAI21X1_54 gnd vdd _0_<28> _0_<29> _316_ _0_<30> OAI21X1
XNAND2X1_33 vdd _317_ gnd _316_ _315_ NAND2X1
XAOI22X1_45 gnd vdd _313_ _314_ _318_ _317_ _300_ AOI22X1
XAOI22X1_46 gnd vdd _318_ _312_ _284_<2> _304_ _287_ AOI22X1
XINVX4_14 vdd gnd _319_ _0_<31> INVX4
XNOR2X1_93 vdd _306_ gnd _320_ _319_ NOR2X1
XINVX1_81 _320_ _321_ vdd gnd INVX1
XINVX1_82 _313_ _322_ vdd gnd INVX1
XAOI21X1_40 gnd vdd _319_ _306_ _323_ _322_ AOI21X1
XINVX1_83 b32_D<31> _324_ vdd gnd INVX1
XOAI21X1_55 gnd vdd _324_ _289_ _325_ _286_ OAI21X1
XAOI21X1_41 gnd vdd _321_ _323_ _326_ _325_ AOI21X1
XNAND3X1_14 _319_ vdd gnd _304_ _296_ _327_ NAND3X1
XOR2X2_21 _328_ _0_<29> vdd gnd _0_<28> OR2X2
XOAI21X1_56 gnd vdd _0_<30> _328_ _329_ _0_<31> OAI21X1
XNAND2X1_34 vdd _330_ gnd _327_ _329_ NAND2X1
XXNOR2X1_7 _308_ _319_ gnd vdd _331_ XNOR2X1
XAOI22X1_47 gnd vdd _300_ _330_ _332_ _305_ _331_ AOI22X1
XAOI22X1_48 gnd vdd _326_ _332_ _284_<3> _319_ _287_ AOI22X1
XNOR2X1_94 vdd _287_ gnd _281_<0> _297_ NOR2X1
XNOR2X1_95 vdd _287_ gnd _281_<1> _294_ NOR2X1
XNOR2X1_96 vdd _287_ gnd _281_<2> _304_ NOR2X1
XNOR2X1_97 vdd _287_ gnd _281_<3> _319_ NOR2X1
XINVX1_84 _327_ _333_ vdd gnd INVX1
XNAND2X1_35 vdd _334_ gnd _300_ _333_ NAND2X1
XAND2X2_7 vdd gnd _308_ _319_ _335_ AND2X2
XAOI22X1_49 gnd vdd _305_ _335_ _336_ _313_ _320_ AOI22X1
XAOI21X1_42 gnd vdd _334_ _336_ _283_ _287_ AOI21X1
XNOR2X1_98 vdd _287_ gnd _282_ _289_ NOR2X1
XDFFPOSX1_62 vdd _282_ gnd counter_28b31.b4_load b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_63 vdd _283_ gnd counter_28b31.b4_rco b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_64 vdd _281_<0> gnd _0_<28> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_65 vdd _281_<1> gnd _0_<29> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_66 vdd _281_<2> gnd _0_<30> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_67 vdd _281_<3> gnd _0_<31> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_68 vdd _284_<0> gnd _0_<28> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_69 vdd _284_<1> gnd _0_<29> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_70 vdd _284_<2> gnd _0_<30> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_71 vdd _284_<3> gnd _0_<31> b32_clk_bF$buf1 DFFPOSX1
XINVX1_85 b32_enable _341_ vdd gnd INVX1
XNOR2X1_99 vdd _341_ gnd _342_ b32_reset NOR2X1
XINVX4_15 vdd gnd _343_ _342_ INVX4
XOAI21X1_57 gnd vdd b32_reset _341_ _344_ _0_<4> OAI21X1
XNAND2X1_36 vdd _345_ gnd b32_mode_0_bF$buf1 b32_mode_1_bF$buf1 NAND2X1
XINVX1_86 b32_mode_0_bF$buf0 _346_ vdd gnd INVX1
XINVX1_87 b32_mode_1_bF$buf0 _347_ vdd gnd INVX1
XOAI21X1_58 gnd vdd _346_ _347_ _348_ _0_<4> OAI21X1
XOAI21X1_59 gnd vdd b32_D<4> _345_ _349_ _348_ OAI21X1
XOAI21X1_60 gnd vdd _343_ _349_ _340_<0> _344_ OAI21X1
XINVX1_88 _0_<5> _350_ vdd gnd INVX1
XINVX1_89 _345_ _351_ vdd gnd INVX1
XNOR2X1_100 vdd _0_<5> gnd _352_ _0_<4> NOR2X1
XINVX1_90 _0_<4> _353_ vdd gnd INVX1
XNOR2X1_101 vdd _350_ gnd _354_ _353_ NOR2X1
XOR2X2_22 _355_ _352_ vdd gnd _354_ OR2X2
XNOR2X1_102 vdd _346_ gnd _356_ b32_mode_1_bF$buf4 NOR2X1
XAOI22X1_50 gnd vdd _356_ _355_ _357_ b32_D<5> _351_ AOI22X1
XNOR2X1_103 vdd _354_ gnd _358_ _352_ NOR2X1
XAOI21X1_43 gnd vdd _358_ _346_ _359_ _343_ AOI21X1
XAOI22X1_51 gnd vdd _359_ _357_ _340_<1> _350_ _343_ AOI22X1
XINVX2_8 vdd gnd _360_ _0_<6> INVX2
XNOR2X1_104 vdd _347_ gnd _361_ b32_mode_0_bF$buf4 NOR2X1
XNAND3X1_15 _0_<5> vdd gnd _0_<4> _0_<6> _362_ NAND3X1
XINVX1_91 _362_ _363_ vdd gnd INVX1
XAOI21X1_44 gnd vdd _0_<4> _0_<5> _364_ _0_<6> AOI21X1
XOR2X2_23 _365_ _364_ vdd gnd _363_ OR2X2
XINVX1_92 b32_D<6> _366_ vdd gnd INVX1
XOAI21X1_61 gnd vdd _366_ _345_ _367_ _342_ OAI21X1
XAOI21X1_45 gnd vdd _365_ _361_ _368_ _367_ AOI21X1
XNOR2X1_105 vdd b32_mode_1_bF$buf3 gnd _369_ b32_mode_0_bF$buf3 NOR2X1
XNOR2X1_106 vdd _363_ gnd _370_ _364_ NOR2X1
XNAND2X1_37 vdd _371_ gnd _360_ _352_ NAND2X1
XOAI21X1_62 gnd vdd _0_<4> _0_<5> _372_ _0_<6> OAI21X1
XNAND2X1_38 vdd _373_ gnd _372_ _371_ NAND2X1
XAOI22X1_52 gnd vdd _369_ _370_ _374_ _373_ _356_ AOI22X1
XAOI22X1_53 gnd vdd _374_ _368_ _340_<2> _360_ _343_ AOI22X1
XINVX4_16 vdd gnd _375_ _0_<7> INVX4
XNOR2X1_107 vdd _362_ gnd _376_ _375_ NOR2X1
XINVX1_93 _376_ _377_ vdd gnd INVX1
XINVX1_94 _369_ _378_ vdd gnd INVX1
XAOI21X1_46 gnd vdd _375_ _362_ _379_ _378_ AOI21X1
XINVX1_95 b32_D<7> _380_ vdd gnd INVX1
XOAI21X1_63 gnd vdd _380_ _345_ _381_ _342_ OAI21X1
XAOI21X1_47 gnd vdd _377_ _379_ _382_ _381_ AOI21X1
XNAND3X1_16 _375_ vdd gnd _360_ _352_ _383_ NAND3X1
XOR2X2_24 _384_ _0_<5> vdd gnd _0_<4> OR2X2
XOAI21X1_64 gnd vdd _0_<6> _384_ _385_ _0_<7> OAI21X1
XNAND2X1_39 vdd _386_ gnd _383_ _385_ NAND2X1
XXNOR2X1_8 _364_ _375_ gnd vdd _387_ XNOR2X1
XAOI22X1_54 gnd vdd _356_ _386_ _388_ _361_ _387_ AOI22X1
XAOI22X1_55 gnd vdd _382_ _388_ _340_<3> _375_ _343_ AOI22X1
XNOR2X1_108 vdd _343_ gnd _337_<0> _353_ NOR2X1
XNOR2X1_109 vdd _343_ gnd _337_<1> _350_ NOR2X1
XNOR2X1_110 vdd _343_ gnd _337_<2> _360_ NOR2X1
XNOR2X1_111 vdd _343_ gnd _337_<3> _375_ NOR2X1
XINVX1_96 _383_ _389_ vdd gnd INVX1
XNAND2X1_40 vdd _390_ gnd _356_ _389_ NAND2X1
XAND2X2_8 vdd gnd _364_ _375_ _391_ AND2X2
XAOI22X1_56 gnd vdd _361_ _391_ _392_ _369_ _376_ AOI22X1
XAOI21X1_48 gnd vdd _390_ _392_ _339_ _343_ AOI21X1
XNOR2X1_112 vdd _343_ gnd _338_ _345_ NOR2X1
XDFFPOSX1_72 vdd _338_ gnd counter_4b7.b4_load b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_73 vdd _339_ gnd counter_4b7.b4_rco b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_74 vdd _337_<0> gnd _0_<4> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_75 vdd _337_<1> gnd _0_<5> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_76 vdd _337_<2> gnd _0_<6> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_77 vdd _337_<3> gnd _0_<7> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_78 vdd _340_<0> gnd _0_<4> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_79 vdd _340_<1> gnd _0_<5> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_80 vdd _340_<2> gnd _0_<6> b32_clk_bF$buf0 DFFPOSX1
.ends counter_b32
 