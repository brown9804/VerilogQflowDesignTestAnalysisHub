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
XBUFX4_14 vdd gnd b32_mode<1> b32_mode_1_bF$buf5 BUFX4
XBUFX4_15 vdd gnd b32_mode<1> b32_mode_1_bF$buf4 BUFX4
XBUFX4_16 vdd gnd b32_mode<1> b32_mode_1_bF$buf3 BUFX4
XBUFX4_17 vdd gnd b32_mode<1> b32_mode_1_bF$buf2 BUFX4
XBUFX4_18 vdd gnd b32_mode<1> b32_mode_1_bF$buf1 BUFX4
XBUFX4_19 vdd gnd b32_mode<1> b32_mode_1_bF$buf0 BUFX4
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
XBUFX2_41 vdd gnd gnd b32_rco<0> BUFX2
XBUFX2_42 vdd gnd gnd b32_rco<1> BUFX2
XBUFX2_43 vdd gnd gnd b32_rco<2> BUFX2
XBUFX2_44 vdd gnd gnd b32_rco<3> BUFX2
XBUFX2_45 vdd gnd gnd b32_rco<4> BUFX2
XBUFX2_46 vdd gnd gnd b32_rco<5> BUFX2
XBUFX2_47 vdd gnd gnd b32_rco<6> BUFX2
XBUFX2_48 vdd gnd gnd b32_rco<7> BUFX2
XINVX1_1 b32_enable _4_ vdd gnd INVX1
XNOR2X1_1 vdd _4_ gnd _5_ b32_reset NOR2X1
XINVX4_1 vdd gnd _6_ _5_ INVX4
XOAI21X1_1 gnd vdd b32_reset _4_ _7_ _0_<0> OAI21X1
XNAND2X1_1 vdd _8_ gnd b32_mode_0_bF$buf4 b32_mode_1_bF$buf5 NAND2X1
XINVX1_2 b32_mode_0_bF$buf3 _9_ vdd gnd INVX1
XINVX1_3 b32_mode_1_bF$buf4 _10_ vdd gnd INVX1
XOAI21X1_2 gnd vdd _9_ _10_ _11_ _0_<0> OAI21X1
XOAI21X1_3 gnd vdd b32_D<0> _8_ _12_ _11_ OAI21X1
XOAI21X1_4 gnd vdd _6_ _12_ _3_<0> _7_ OAI21X1
XINVX1_4 _0_<1> _13_ vdd gnd INVX1
XINVX1_5 _0_<0> _14_ vdd gnd INVX1
XNOR2X1_2 vdd _13_ gnd _15_ _14_ NOR2X1
XNOR2X1_3 vdd _0_<1> gnd _16_ _0_<0> NOR2X1
XOR2X2_1 _17_ _16_ vdd gnd _15_ OR2X2
XOR2X2_2 _18_ b32_mode_0_bF$buf2 vdd gnd _17_ OR2X2
XNOR2X1_4 vdd _9_ gnd _19_ b32_mode_1_bF$buf3 NOR2X1
XINVX1_6 b32_D<1> _20_ vdd gnd INVX1
XOAI21X1_5 gnd vdd _20_ _8_ _21_ _5_ OAI21X1
XAOI21X1_1 gnd vdd _17_ _19_ _22_ _21_ AOI21X1
XAOI22X1_1 gnd vdd _22_ _18_ _3_<1> _13_ _6_ AOI22X1
XINVX2_1 vdd gnd _23_ _0_<2> INVX2
XNOR2X1_5 vdd b32_mode_1_bF$buf2 gnd _24_ b32_mode_0_bF$buf1 NOR2X1
XNAND3X1_1 _0_<1> vdd gnd _0_<0> _0_<2> _25_ NAND3X1
XINVX1_7 _25_ _26_ vdd gnd INVX1
XAOI21X1_2 gnd vdd _0_<0> _0_<1> _27_ _0_<2> AOI21X1
XNOR2X1_6 vdd _26_ gnd _28_ _27_ NOR2X1
XINVX1_8 b32_D<2> _29_ vdd gnd INVX1
XOAI21X1_6 gnd vdd _29_ _8_ _30_ _5_ OAI21X1
XAOI21X1_3 gnd vdd _28_ _24_ _31_ _30_ AOI21X1
XXNOR2X1_1 _16_ _23_ gnd vdd _32_ XNOR2X1
XNAND2X1_2 vdd _33_ gnd b32_mode_1_bF$buf1 _9_ NAND2X1
XINVX1_9 _27_ _34_ vdd gnd INVX1
XAOI21X1_4 gnd vdd _34_ _25_ _35_ _33_ AOI21X1
XAOI21X1_5 gnd vdd _32_ _19_ _36_ _35_ AOI21X1
XAOI22X1_2 gnd vdd _31_ _36_ _3_<2> _23_ _6_ AOI22X1
XINVX2_2 vdd gnd _37_ _0_<3> INVX2
XINVX1_10 _24_ _38_ vdd gnd INVX1
XOAI22X1_1 gnd vdd _26_ _38_ _33_ _27_ _39_ OAI22X1
XINVX1_11 b32_D<3> _40_ vdd gnd INVX1
XOAI21X1_7 gnd vdd _40_ _8_ _41_ _5_ OAI21X1
XAOI21X1_6 gnd vdd _39_ _0_<3> _42_ _41_ AOI21X1
XOR2X2_3 _43_ _0_<1> vdd gnd _0_<0> OR2X2
XOAI21X1_8 gnd vdd _0_<2> _43_ _44_ _0_<3> OAI21X1
XNAND3X1_2 _37_ vdd gnd _23_ _16_ _45_ NAND3X1
XNAND2X1_3 vdd _46_ gnd _45_ _44_ NAND2X1
XOAI22X1_2 gnd vdd _34_ _33_ _38_ _25_ _47_ OAI22X1
XAOI22X1_3 gnd vdd _19_ _46_ _48_ _37_ _47_ AOI22X1
XAOI22X1_4 gnd vdd _42_ _48_ _3_<3> _37_ _6_ AOI22X1
XNOR2X1_7 vdd _6_ gnd _1_<0> _14_ NOR2X1
XNOR2X1_8 vdd _6_ gnd _1_<1> _13_ NOR2X1
XNOR2X1_9 vdd _6_ gnd _1_<2> _23_ NOR2X1
XNOR2X1_10 vdd _6_ gnd _1_<3> _37_ NOR2X1
XNOR2X1_11 vdd _6_ gnd _2_ _8_ NOR2X1
XDFFPOSX1_1 vdd _2_ gnd counter_0b3.b4_load b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_2 vdd _1_<0> gnd _0_<0> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_3 vdd _1_<1> gnd _0_<1> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_4 vdd _1_<2> gnd _0_<2> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_5 vdd _1_<3> gnd _0_<3> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_6 vdd _3_<0> gnd _0_<0> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_7 vdd _3_<1> gnd _0_<1> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_8 vdd _3_<2> gnd _0_<2> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_9 vdd _3_<3> gnd _0_<3> b32_clk_bF$buf7 DFFPOSX1
XINVX1_12 b32_enable _52_ vdd gnd INVX1
XNOR2X1_12 vdd _52_ gnd _53_ b32_reset NOR2X1
XINVX4_2 vdd gnd _54_ _53_ INVX4
XOAI21X1_9 gnd vdd b32_reset _52_ _55_ _0_<12> OAI21X1
XNAND2X1_4 vdd _56_ gnd b32_mode_0_bF$buf0 b32_mode_1_bF$buf0 NAND2X1
XINVX1_13 b32_mode_0_bF$buf4 _57_ vdd gnd INVX1
XINVX1_14 b32_mode_1_bF$buf5 _58_ vdd gnd INVX1
XOAI21X1_10 gnd vdd _57_ _58_ _59_ _0_<12> OAI21X1
XOAI21X1_11 gnd vdd b32_D<12> _56_ _60_ _59_ OAI21X1
XOAI21X1_12 gnd vdd _54_ _60_ _51_<0> _55_ OAI21X1
XINVX1_15 _0_<13> _61_ vdd gnd INVX1
XINVX1_16 _0_<12> _62_ vdd gnd INVX1
XNOR2X1_13 vdd _61_ gnd _63_ _62_ NOR2X1
XNOR2X1_14 vdd _0_<13> gnd _64_ _0_<12> NOR2X1
XOR2X2_4 _65_ _64_ vdd gnd _63_ OR2X2
XOR2X2_5 _66_ b32_mode_0_bF$buf3 vdd gnd _65_ OR2X2
XNOR2X1_15 vdd _57_ gnd _67_ b32_mode_1_bF$buf4 NOR2X1
XINVX1_17 b32_D<13> _68_ vdd gnd INVX1
XOAI21X1_13 gnd vdd _68_ _56_ _69_ _53_ OAI21X1
XAOI21X1_7 gnd vdd _65_ _67_ _70_ _69_ AOI21X1
XAOI22X1_5 gnd vdd _70_ _66_ _51_<1> _61_ _54_ AOI22X1
XINVX2_3 vdd gnd _71_ _0_<14> INVX2
XNOR2X1_16 vdd b32_mode_1_bF$buf3 gnd _72_ b32_mode_0_bF$buf2 NOR2X1
XNAND3X1_3 _0_<13> vdd gnd _0_<12> _0_<14> _73_ NAND3X1
XINVX1_18 _73_ _74_ vdd gnd INVX1
XAOI21X1_8 gnd vdd _0_<12> _0_<13> _75_ _0_<14> AOI21X1
XNOR2X1_17 vdd _74_ gnd _76_ _75_ NOR2X1
XINVX1_19 b32_D<14> _77_ vdd gnd INVX1
XOAI21X1_14 gnd vdd _77_ _56_ _78_ _53_ OAI21X1
XAOI21X1_9 gnd vdd _76_ _72_ _79_ _78_ AOI21X1
XXNOR2X1_2 _64_ _71_ gnd vdd _80_ XNOR2X1
XNAND2X1_5 vdd _81_ gnd b32_mode_1_bF$buf2 _57_ NAND2X1
XINVX1_20 _75_ _82_ vdd gnd INVX1
XAOI21X1_10 gnd vdd _82_ _73_ _83_ _81_ AOI21X1
XAOI21X1_11 gnd vdd _80_ _67_ _84_ _83_ AOI21X1
XAOI22X1_6 gnd vdd _79_ _84_ _51_<2> _71_ _54_ AOI22X1
XINVX2_4 vdd gnd _85_ _0_<15> INVX2
XINVX1_21 _72_ _86_ vdd gnd INVX1
XOAI22X1_3 gnd vdd _74_ _86_ _81_ _75_ _87_ OAI22X1
XINVX1_22 b32_D<15> _88_ vdd gnd INVX1
XOAI21X1_15 gnd vdd _88_ _56_ _89_ _53_ OAI21X1
XAOI21X1_12 gnd vdd _87_ _0_<15> _90_ _89_ AOI21X1
XOR2X2_6 _91_ _0_<13> vdd gnd _0_<12> OR2X2
XOAI21X1_16 gnd vdd _0_<14> _91_ _92_ _0_<15> OAI21X1
XNAND3X1_4 _85_ vdd gnd _71_ _64_ _93_ NAND3X1
XNAND2X1_6 vdd _94_ gnd _93_ _92_ NAND2X1
XOAI22X1_4 gnd vdd _82_ _81_ _86_ _73_ _95_ OAI22X1
XAOI22X1_7 gnd vdd _67_ _94_ _96_ _85_ _95_ AOI22X1
XAOI22X1_8 gnd vdd _90_ _96_ _51_<3> _85_ _54_ AOI22X1
XNOR2X1_18 vdd _54_ gnd _49_<0> _62_ NOR2X1
XNOR2X1_19 vdd _54_ gnd _49_<1> _61_ NOR2X1
XNOR2X1_20 vdd _54_ gnd _49_<2> _71_ NOR2X1
XNOR2X1_21 vdd _54_ gnd _49_<3> _85_ NOR2X1
XNOR2X1_22 vdd _54_ gnd _50_ _56_ NOR2X1
XDFFPOSX1_10 vdd _50_ gnd counter_12b15.b4_load b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_11 vdd _49_<0> gnd _0_<12> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_12 vdd _49_<1> gnd _0_<13> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_13 vdd _49_<2> gnd _0_<14> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_14 vdd _49_<3> gnd _0_<15> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_15 vdd _51_<0> gnd _0_<12> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_16 vdd _51_<1> gnd _0_<13> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_17 vdd _51_<2> gnd _0_<14> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_18 vdd _51_<3> gnd _0_<15> b32_clk_bF$buf6 DFFPOSX1
XINVX1_23 b32_enable _100_ vdd gnd INVX1
XNOR2X1_23 vdd _100_ gnd _101_ b32_reset NOR2X1
XINVX4_3 vdd gnd _102_ _101_ INVX4
XOAI21X1_17 gnd vdd b32_reset _100_ _103_ _0_<16> OAI21X1
XNAND2X1_7 vdd _104_ gnd b32_mode_0_bF$buf1 b32_mode_1_bF$buf1 NAND2X1
XINVX1_24 b32_mode_0_bF$buf0 _105_ vdd gnd INVX1
XINVX1_25 b32_mode_1_bF$buf0 _106_ vdd gnd INVX1
XOAI21X1_18 gnd vdd _105_ _106_ _107_ _0_<16> OAI21X1
XOAI21X1_19 gnd vdd b32_D<16> _104_ _108_ _107_ OAI21X1
XOAI21X1_20 gnd vdd _102_ _108_ _99_<0> _103_ OAI21X1
XINVX1_26 _0_<17> _109_ vdd gnd INVX1
XINVX1_27 _0_<16> _110_ vdd gnd INVX1
XNOR2X1_24 vdd _109_ gnd _111_ _110_ NOR2X1
XNOR2X1_25 vdd _0_<17> gnd _112_ _0_<16> NOR2X1
XOR2X2_7 _113_ _112_ vdd gnd _111_ OR2X2
XOR2X2_8 _114_ b32_mode_0_bF$buf4 vdd gnd _113_ OR2X2
XNOR2X1_26 vdd _105_ gnd _115_ b32_mode_1_bF$buf5 NOR2X1
XINVX1_28 b32_D<17> _116_ vdd gnd INVX1
XOAI21X1_21 gnd vdd _116_ _104_ _117_ _101_ OAI21X1
XAOI21X1_13 gnd vdd _113_ _115_ _118_ _117_ AOI21X1
XAOI22X1_9 gnd vdd _118_ _114_ _99_<1> _109_ _102_ AOI22X1
XINVX2_5 vdd gnd _119_ _0_<18> INVX2
XNOR2X1_27 vdd b32_mode_1_bF$buf4 gnd _120_ b32_mode_0_bF$buf3 NOR2X1
XNAND3X1_5 _0_<17> vdd gnd _0_<16> _0_<18> _121_ NAND3X1
XINVX1_29 _121_ _122_ vdd gnd INVX1
XAOI21X1_14 gnd vdd _0_<16> _0_<17> _123_ _0_<18> AOI21X1
XNOR2X1_28 vdd _122_ gnd _124_ _123_ NOR2X1
XINVX1_30 b32_D<18> _125_ vdd gnd INVX1
XOAI21X1_22 gnd vdd _125_ _104_ _126_ _101_ OAI21X1
XAOI21X1_15 gnd vdd _124_ _120_ _127_ _126_ AOI21X1
XXNOR2X1_3 _112_ _119_ gnd vdd _128_ XNOR2X1
XNAND2X1_8 vdd _129_ gnd b32_mode_1_bF$buf3 _105_ NAND2X1
XINVX1_31 _123_ _130_ vdd gnd INVX1
XAOI21X1_16 gnd vdd _130_ _121_ _131_ _129_ AOI21X1
XAOI21X1_17 gnd vdd _128_ _115_ _132_ _131_ AOI21X1
XAOI22X1_10 gnd vdd _127_ _132_ _99_<2> _119_ _102_ AOI22X1
XINVX2_6 vdd gnd _133_ _0_<19> INVX2
XINVX1_32 _120_ _134_ vdd gnd INVX1
XOAI22X1_5 gnd vdd _122_ _134_ _129_ _123_ _135_ OAI22X1
XINVX1_33 b32_D<19> _136_ vdd gnd INVX1
XOAI21X1_23 gnd vdd _136_ _104_ _137_ _101_ OAI21X1
XAOI21X1_18 gnd vdd _135_ _0_<19> _138_ _137_ AOI21X1
XOR2X2_9 _139_ _0_<17> vdd gnd _0_<16> OR2X2
XOAI21X1_24 gnd vdd _0_<18> _139_ _140_ _0_<19> OAI21X1
XNAND3X1_6 _133_ vdd gnd _119_ _112_ _141_ NAND3X1
XNAND2X1_9 vdd _142_ gnd _141_ _140_ NAND2X1
XOAI22X1_6 gnd vdd _130_ _129_ _134_ _121_ _143_ OAI22X1
XAOI22X1_11 gnd vdd _115_ _142_ _144_ _133_ _143_ AOI22X1
XAOI22X1_12 gnd vdd _138_ _144_ _99_<3> _133_ _102_ AOI22X1
XNOR2X1_29 vdd _102_ gnd _97_<0> _110_ NOR2X1
XNOR2X1_30 vdd _102_ gnd _97_<1> _109_ NOR2X1
XNOR2X1_31 vdd _102_ gnd _97_<2> _119_ NOR2X1
XNOR2X1_32 vdd _102_ gnd _97_<3> _133_ NOR2X1
XNOR2X1_33 vdd _102_ gnd _98_ _104_ NOR2X1
XDFFPOSX1_19 vdd _98_ gnd counter_16b19.b4_load b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_20 vdd _97_<0> gnd _0_<16> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_21 vdd _97_<1> gnd _0_<17> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_22 vdd _97_<2> gnd _0_<18> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_23 vdd _97_<3> gnd _0_<19> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_24 vdd _99_<0> gnd _0_<16> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_25 vdd _99_<1> gnd _0_<17> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_26 vdd _99_<2> gnd _0_<18> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_27 vdd _99_<3> gnd _0_<19> b32_clk_bF$buf5 DFFPOSX1
XINVX1_34 b32_enable _148_ vdd gnd INVX1
XNOR2X1_34 vdd _148_ gnd _149_ b32_reset NOR2X1
XINVX4_4 vdd gnd _150_ _149_ INVX4
XOAI21X1_25 gnd vdd b32_reset _148_ _151_ _0_<20> OAI21X1
XNAND2X1_10 vdd _152_ gnd b32_mode_0_bF$buf2 b32_mode_1_bF$buf2 NAND2X1
XINVX1_35 b32_mode_0_bF$buf1 _153_ vdd gnd INVX1
XINVX1_36 b32_mode_1_bF$buf1 _154_ vdd gnd INVX1
XOAI21X1_26 gnd vdd _153_ _154_ _155_ _0_<20> OAI21X1
XOAI21X1_27 gnd vdd b32_D<20> _152_ _156_ _155_ OAI21X1
XOAI21X1_28 gnd vdd _150_ _156_ _147_<0> _151_ OAI21X1
XINVX1_37 _0_<21> _157_ vdd gnd INVX1
XINVX1_38 _0_<20> _158_ vdd gnd INVX1
XNOR2X1_35 vdd _157_ gnd _159_ _158_ NOR2X1
XNOR2X1_36 vdd _0_<21> gnd _160_ _0_<20> NOR2X1
XOR2X2_10 _161_ _160_ vdd gnd _159_ OR2X2
XOR2X2_11 _162_ b32_mode_0_bF$buf0 vdd gnd _161_ OR2X2
XNOR2X1_37 vdd _153_ gnd _163_ b32_mode_1_bF$buf0 NOR2X1
XINVX1_39 b32_D<21> _164_ vdd gnd INVX1
XOAI21X1_29 gnd vdd _164_ _152_ _165_ _149_ OAI21X1
XAOI21X1_19 gnd vdd _161_ _163_ _166_ _165_ AOI21X1
XAOI22X1_13 gnd vdd _166_ _162_ _147_<1> _157_ _150_ AOI22X1
XINVX2_7 vdd gnd _167_ _0_<22> INVX2
XNOR2X1_38 vdd b32_mode_1_bF$buf5 gnd _168_ b32_mode_0_bF$buf4 NOR2X1
XNAND3X1_7 _0_<21> vdd gnd _0_<20> _0_<22> _169_ NAND3X1
XINVX1_40 _169_ _170_ vdd gnd INVX1
XAOI21X1_20 gnd vdd _0_<20> _0_<21> _171_ _0_<22> AOI21X1
XNOR2X1_39 vdd _170_ gnd _172_ _171_ NOR2X1
XINVX1_41 b32_D<22> _173_ vdd gnd INVX1
XOAI21X1_30 gnd vdd _173_ _152_ _174_ _149_ OAI21X1
XAOI21X1_21 gnd vdd _172_ _168_ _175_ _174_ AOI21X1
XXNOR2X1_4 _160_ _167_ gnd vdd _176_ XNOR2X1
XNAND2X1_11 vdd _177_ gnd b32_mode_1_bF$buf4 _153_ NAND2X1
XINVX1_42 _171_ _178_ vdd gnd INVX1
XAOI21X1_22 gnd vdd _178_ _169_ _179_ _177_ AOI21X1
XAOI21X1_23 gnd vdd _176_ _163_ _180_ _179_ AOI21X1
XAOI22X1_14 gnd vdd _175_ _180_ _147_<2> _167_ _150_ AOI22X1
XINVX2_8 vdd gnd _181_ _0_<23> INVX2
XINVX1_43 _168_ _182_ vdd gnd INVX1
XOAI22X1_7 gnd vdd _170_ _182_ _177_ _171_ _183_ OAI22X1
XINVX1_44 b32_D<23> _184_ vdd gnd INVX1
XOAI21X1_31 gnd vdd _184_ _152_ _185_ _149_ OAI21X1
XAOI21X1_24 gnd vdd _183_ _0_<23> _186_ _185_ AOI21X1
XOR2X2_12 _187_ _0_<21> vdd gnd _0_<20> OR2X2
XOAI21X1_32 gnd vdd _0_<22> _187_ _188_ _0_<23> OAI21X1
XNAND3X1_8 _181_ vdd gnd _167_ _160_ _189_ NAND3X1
XNAND2X1_12 vdd _190_ gnd _189_ _188_ NAND2X1
XOAI22X1_8 gnd vdd _178_ _177_ _182_ _169_ _191_ OAI22X1
XAOI22X1_15 gnd vdd _163_ _190_ _192_ _181_ _191_ AOI22X1
XAOI22X1_16 gnd vdd _186_ _192_ _147_<3> _181_ _150_ AOI22X1
XNOR2X1_40 vdd _150_ gnd _145_<0> _158_ NOR2X1
XNOR2X1_41 vdd _150_ gnd _145_<1> _157_ NOR2X1
XNOR2X1_42 vdd _150_ gnd _145_<2> _167_ NOR2X1
XNOR2X1_43 vdd _150_ gnd _145_<3> _181_ NOR2X1
XNOR2X1_44 vdd _150_ gnd _146_ _152_ NOR2X1
XDFFPOSX1_28 vdd _146_ gnd counter_20b23.b4_load b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_29 vdd _145_<0> gnd _0_<20> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_30 vdd _145_<1> gnd _0_<21> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_31 vdd _145_<2> gnd _0_<22> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_32 vdd _145_<3> gnd _0_<23> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_33 vdd _147_<0> gnd _0_<20> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_34 vdd _147_<1> gnd _0_<21> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_35 vdd _147_<2> gnd _0_<22> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_36 vdd _147_<3> gnd _0_<23> b32_clk_bF$buf4 DFFPOSX1
XINVX1_45 b32_enable _196_ vdd gnd INVX1
XNOR2X1_45 vdd _196_ gnd _197_ b32_reset NOR2X1
XINVX4_5 vdd gnd _198_ _197_ INVX4
XOAI21X1_33 gnd vdd b32_reset _196_ _199_ _0_<24> OAI21X1
XNAND2X1_13 vdd _200_ gnd b32_mode_0_bF$buf3 b32_mode_1_bF$buf3 NAND2X1
XINVX1_46 b32_mode_0_bF$buf2 _201_ vdd gnd INVX1
XINVX1_47 b32_mode_1_bF$buf2 _202_ vdd gnd INVX1
XOAI21X1_34 gnd vdd _201_ _202_ _203_ _0_<24> OAI21X1
XOAI21X1_35 gnd vdd b32_D<24> _200_ _204_ _203_ OAI21X1
XOAI21X1_36 gnd vdd _198_ _204_ _195_<0> _199_ OAI21X1
XINVX1_48 _0_<25> _205_ vdd gnd INVX1
XINVX1_49 _0_<24> _206_ vdd gnd INVX1
XNOR2X1_46 vdd _205_ gnd _207_ _206_ NOR2X1
XNOR2X1_47 vdd _0_<25> gnd _208_ _0_<24> NOR2X1
XOR2X2_13 _209_ _208_ vdd gnd _207_ OR2X2
XOR2X2_14 _210_ b32_mode_0_bF$buf1 vdd gnd _209_ OR2X2
XNOR2X1_48 vdd _201_ gnd _211_ b32_mode_1_bF$buf1 NOR2X1
XINVX1_50 b32_D<25> _212_ vdd gnd INVX1
XOAI21X1_37 gnd vdd _212_ _200_ _213_ _197_ OAI21X1
XAOI21X1_25 gnd vdd _209_ _211_ _214_ _213_ AOI21X1
XAOI22X1_17 gnd vdd _214_ _210_ _195_<1> _205_ _198_ AOI22X1
XINVX2_9 vdd gnd _215_ _0_<26> INVX2
XNOR2X1_49 vdd b32_mode_1_bF$buf0 gnd _216_ b32_mode_0_bF$buf0 NOR2X1
XNAND3X1_9 _0_<25> vdd gnd _0_<24> _0_<26> _217_ NAND3X1
XINVX1_51 _217_ _218_ vdd gnd INVX1
XAOI21X1_26 gnd vdd _0_<24> _0_<25> _219_ _0_<26> AOI21X1
XNOR2X1_50 vdd _218_ gnd _220_ _219_ NOR2X1
XINVX1_52 b32_D<26> _221_ vdd gnd INVX1
XOAI21X1_38 gnd vdd _221_ _200_ _222_ _197_ OAI21X1
XAOI21X1_27 gnd vdd _220_ _216_ _223_ _222_ AOI21X1
XXNOR2X1_5 _208_ _215_ gnd vdd _224_ XNOR2X1
XNAND2X1_14 vdd _225_ gnd b32_mode_1_bF$buf5 _201_ NAND2X1
XINVX1_53 _219_ _226_ vdd gnd INVX1
XAOI21X1_28 gnd vdd _226_ _217_ _227_ _225_ AOI21X1
XAOI21X1_29 gnd vdd _224_ _211_ _228_ _227_ AOI21X1
XAOI22X1_18 gnd vdd _223_ _228_ _195_<2> _215_ _198_ AOI22X1
XINVX2_10 vdd gnd _229_ _0_<27> INVX2
XINVX1_54 _216_ _230_ vdd gnd INVX1
XOAI22X1_9 gnd vdd _218_ _230_ _225_ _219_ _231_ OAI22X1
XINVX1_55 b32_D<27> _232_ vdd gnd INVX1
XOAI21X1_39 gnd vdd _232_ _200_ _233_ _197_ OAI21X1
XAOI21X1_30 gnd vdd _231_ _0_<27> _234_ _233_ AOI21X1
XOR2X2_15 _235_ _0_<25> vdd gnd _0_<24> OR2X2
XOAI21X1_40 gnd vdd _0_<26> _235_ _236_ _0_<27> OAI21X1
XNAND3X1_10 _229_ vdd gnd _215_ _208_ _237_ NAND3X1
XNAND2X1_15 vdd _238_ gnd _237_ _236_ NAND2X1
XOAI22X1_10 gnd vdd _226_ _225_ _230_ _217_ _239_ OAI22X1
XAOI22X1_19 gnd vdd _211_ _238_ _240_ _229_ _239_ AOI22X1
XAOI22X1_20 gnd vdd _234_ _240_ _195_<3> _229_ _198_ AOI22X1
XNOR2X1_51 vdd _198_ gnd _193_<0> _206_ NOR2X1
XNOR2X1_52 vdd _198_ gnd _193_<1> _205_ NOR2X1
XNOR2X1_53 vdd _198_ gnd _193_<2> _215_ NOR2X1
XNOR2X1_54 vdd _198_ gnd _193_<3> _229_ NOR2X1
XNOR2X1_55 vdd _198_ gnd _194_ _200_ NOR2X1
XDFFPOSX1_37 vdd _194_ gnd counter_24b27.b4_load b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_38 vdd _193_<0> gnd _0_<24> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_39 vdd _193_<1> gnd _0_<25> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_40 vdd _193_<2> gnd _0_<26> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_41 vdd _193_<3> gnd _0_<27> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_42 vdd _195_<0> gnd _0_<24> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_43 vdd _195_<1> gnd _0_<25> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_44 vdd _195_<2> gnd _0_<26> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_45 vdd _195_<3> gnd _0_<27> b32_clk_bF$buf3 DFFPOSX1
XINVX1_56 b32_enable _244_ vdd gnd INVX1
XNOR2X1_56 vdd _244_ gnd _245_ b32_reset NOR2X1
XINVX4_6 vdd gnd _246_ _245_ INVX4
XOAI21X1_41 gnd vdd b32_reset _244_ _247_ _0_<28> OAI21X1
XNAND2X1_16 vdd _248_ gnd b32_mode_0_bF$buf4 b32_mode_1_bF$buf4 NAND2X1
XINVX1_57 b32_mode_0_bF$buf3 _249_ vdd gnd INVX1
XINVX1_58 b32_mode_1_bF$buf3 _250_ vdd gnd INVX1
XOAI21X1_42 gnd vdd _249_ _250_ _251_ _0_<28> OAI21X1
XOAI21X1_43 gnd vdd b32_D<28> _248_ _252_ _251_ OAI21X1
XOAI21X1_44 gnd vdd _246_ _252_ _243_<0> _247_ OAI21X1
XINVX1_59 _0_<29> _253_ vdd gnd INVX1
XINVX1_60 _0_<28> _254_ vdd gnd INVX1
XNOR2X1_57 vdd _253_ gnd _255_ _254_ NOR2X1
XNOR2X1_58 vdd _0_<29> gnd _256_ _0_<28> NOR2X1
XOR2X2_16 _257_ _256_ vdd gnd _255_ OR2X2
XOR2X2_17 _258_ b32_mode_0_bF$buf2 vdd gnd _257_ OR2X2
XNOR2X1_59 vdd _249_ gnd _259_ b32_mode_1_bF$buf2 NOR2X1
XINVX1_61 b32_D<29> _260_ vdd gnd INVX1
XOAI21X1_45 gnd vdd _260_ _248_ _261_ _245_ OAI21X1
XAOI21X1_31 gnd vdd _257_ _259_ _262_ _261_ AOI21X1
XAOI22X1_21 gnd vdd _262_ _258_ _243_<1> _253_ _246_ AOI22X1
XINVX2_11 vdd gnd _263_ _0_<30> INVX2
XNOR2X1_60 vdd b32_mode_1_bF$buf1 gnd _264_ b32_mode_0_bF$buf1 NOR2X1
XNAND3X1_11 _0_<29> vdd gnd _0_<28> _0_<30> _265_ NAND3X1
XINVX1_62 _265_ _266_ vdd gnd INVX1
XAOI21X1_32 gnd vdd _0_<28> _0_<29> _267_ _0_<30> AOI21X1
XNOR2X1_61 vdd _266_ gnd _268_ _267_ NOR2X1
XINVX1_63 b32_D<30> _269_ vdd gnd INVX1
XOAI21X1_46 gnd vdd _269_ _248_ _270_ _245_ OAI21X1
XAOI21X1_33 gnd vdd _268_ _264_ _271_ _270_ AOI21X1
XXNOR2X1_6 _256_ _263_ gnd vdd _272_ XNOR2X1
XNAND2X1_17 vdd _273_ gnd b32_mode_1_bF$buf0 _249_ NAND2X1
XINVX1_64 _267_ _274_ vdd gnd INVX1
XAOI21X1_34 gnd vdd _274_ _265_ _275_ _273_ AOI21X1
XAOI21X1_35 gnd vdd _272_ _259_ _276_ _275_ AOI21X1
XAOI22X1_22 gnd vdd _271_ _276_ _243_<2> _263_ _246_ AOI22X1
XINVX2_12 vdd gnd _277_ _0_<31> INVX2
XINVX1_65 _264_ _278_ vdd gnd INVX1
XOAI22X1_11 gnd vdd _266_ _278_ _273_ _267_ _279_ OAI22X1
XINVX1_66 b32_D<31> _280_ vdd gnd INVX1
XOAI21X1_47 gnd vdd _280_ _248_ _281_ _245_ OAI21X1
XAOI21X1_36 gnd vdd _279_ _0_<31> _282_ _281_ AOI21X1
XOR2X2_18 _283_ _0_<29> vdd gnd _0_<28> OR2X2
XOAI21X1_48 gnd vdd _0_<30> _283_ _284_ _0_<31> OAI21X1
XNAND3X1_12 _277_ vdd gnd _263_ _256_ _285_ NAND3X1
XNAND2X1_18 vdd _286_ gnd _285_ _284_ NAND2X1
XOAI22X1_12 gnd vdd _274_ _273_ _278_ _265_ _287_ OAI22X1
XAOI22X1_23 gnd vdd _259_ _286_ _288_ _277_ _287_ AOI22X1
XAOI22X1_24 gnd vdd _282_ _288_ _243_<3> _277_ _246_ AOI22X1
XNOR2X1_62 vdd _246_ gnd _241_<0> _254_ NOR2X1
XNOR2X1_63 vdd _246_ gnd _241_<1> _253_ NOR2X1
XNOR2X1_64 vdd _246_ gnd _241_<2> _263_ NOR2X1
XNOR2X1_65 vdd _246_ gnd _241_<3> _277_ NOR2X1
XNOR2X1_66 vdd _246_ gnd _242_ _248_ NOR2X1
XDFFPOSX1_46 vdd _242_ gnd counter_28b31.b4_load b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_47 vdd _241_<0> gnd _0_<28> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_48 vdd _241_<1> gnd _0_<29> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_49 vdd _241_<2> gnd _0_<30> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_50 vdd _241_<3> gnd _0_<31> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_51 vdd _243_<0> gnd _0_<28> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_52 vdd _243_<1> gnd _0_<29> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_53 vdd _243_<2> gnd _0_<30> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_54 vdd _243_<3> gnd _0_<31> b32_clk_bF$buf2 DFFPOSX1
XINVX1_67 b32_enable _292_ vdd gnd INVX1
XNOR2X1_67 vdd _292_ gnd _293_ b32_reset NOR2X1
XINVX4_7 vdd gnd _294_ _293_ INVX4
XOAI21X1_49 gnd vdd b32_reset _292_ _295_ _0_<4> OAI21X1
XNAND2X1_19 vdd _296_ gnd b32_mode_0_bF$buf0 b32_mode_1_bF$buf5 NAND2X1
XINVX1_68 b32_mode_0_bF$buf4 _297_ vdd gnd INVX1
XINVX1_69 b32_mode_1_bF$buf4 _298_ vdd gnd INVX1
XOAI21X1_50 gnd vdd _297_ _298_ _299_ _0_<4> OAI21X1
XOAI21X1_51 gnd vdd b32_D<4> _296_ _300_ _299_ OAI21X1
XOAI21X1_52 gnd vdd _294_ _300_ _291_<0> _295_ OAI21X1
XINVX1_70 _0_<5> _301_ vdd gnd INVX1
XINVX1_71 _0_<4> _302_ vdd gnd INVX1
XNOR2X1_68 vdd _301_ gnd _303_ _302_ NOR2X1
XNOR2X1_69 vdd _0_<5> gnd _304_ _0_<4> NOR2X1
XOR2X2_19 _305_ _304_ vdd gnd _303_ OR2X2
XOR2X2_20 _306_ b32_mode_0_bF$buf3 vdd gnd _305_ OR2X2
XNOR2X1_70 vdd _297_ gnd _307_ b32_mode_1_bF$buf3 NOR2X1
XINVX1_72 b32_D<5> _308_ vdd gnd INVX1
XOAI21X1_53 gnd vdd _308_ _296_ _309_ _293_ OAI21X1
XAOI21X1_37 gnd vdd _305_ _307_ _310_ _309_ AOI21X1
XAOI22X1_25 gnd vdd _310_ _306_ _291_<1> _301_ _294_ AOI22X1
XINVX2_13 vdd gnd _311_ _0_<6> INVX2
XNOR2X1_71 vdd b32_mode_1_bF$buf2 gnd _312_ b32_mode_0_bF$buf2 NOR2X1
XNAND3X1_13 _0_<5> vdd gnd _0_<4> _0_<6> _313_ NAND3X1
XINVX1_73 _313_ _314_ vdd gnd INVX1
XAOI21X1_38 gnd vdd _0_<4> _0_<5> _315_ _0_<6> AOI21X1
XNOR2X1_72 vdd _314_ gnd _316_ _315_ NOR2X1
XINVX1_74 b32_D<6> _317_ vdd gnd INVX1
XOAI21X1_54 gnd vdd _317_ _296_ _318_ _293_ OAI21X1
XAOI21X1_39 gnd vdd _316_ _312_ _319_ _318_ AOI21X1
XXNOR2X1_7 _304_ _311_ gnd vdd _320_ XNOR2X1
XNAND2X1_20 vdd _321_ gnd b32_mode_1_bF$buf1 _297_ NAND2X1
XINVX1_75 _315_ _322_ vdd gnd INVX1
XAOI21X1_40 gnd vdd _322_ _313_ _323_ _321_ AOI21X1
XAOI21X1_41 gnd vdd _320_ _307_ _324_ _323_ AOI21X1
XAOI22X1_26 gnd vdd _319_ _324_ _291_<2> _311_ _294_ AOI22X1
XINVX2_14 vdd gnd _325_ _0_<7> INVX2
XINVX1_76 _312_ _326_ vdd gnd INVX1
XOAI22X1_13 gnd vdd _314_ _326_ _321_ _315_ _327_ OAI22X1
XINVX1_77 b32_D<7> _328_ vdd gnd INVX1
XOAI21X1_55 gnd vdd _328_ _296_ _329_ _293_ OAI21X1
XAOI21X1_42 gnd vdd _327_ _0_<7> _330_ _329_ AOI21X1
XOR2X2_21 _331_ _0_<5> vdd gnd _0_<4> OR2X2
XOAI21X1_56 gnd vdd _0_<6> _331_ _332_ _0_<7> OAI21X1
XNAND3X1_14 _325_ vdd gnd _311_ _304_ _333_ NAND3X1
XNAND2X1_21 vdd _334_ gnd _333_ _332_ NAND2X1
XOAI22X1_14 gnd vdd _322_ _321_ _326_ _313_ _335_ OAI22X1
XAOI22X1_27 gnd vdd _307_ _334_ _336_ _325_ _335_ AOI22X1
XAOI22X1_28 gnd vdd _330_ _336_ _291_<3> _325_ _294_ AOI22X1
XNOR2X1_73 vdd _294_ gnd _289_<0> _302_ NOR2X1
XNOR2X1_74 vdd _294_ gnd _289_<1> _301_ NOR2X1
XNOR2X1_75 vdd _294_ gnd _289_<2> _311_ NOR2X1
XNOR2X1_76 vdd _294_ gnd _289_<3> _325_ NOR2X1
XNOR2X1_77 vdd _294_ gnd _290_ _296_ NOR2X1
XDFFPOSX1_55 vdd _290_ gnd counter_4b7.b4_load b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_56 vdd _289_<0> gnd _0_<4> b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_57 vdd _289_<1> gnd _0_<5> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_58 vdd _289_<2> gnd _0_<6> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_59 vdd _289_<3> gnd _0_<7> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_60 vdd _291_<0> gnd _0_<4> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_61 vdd _291_<1> gnd _0_<5> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_62 vdd _291_<2> gnd _0_<6> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_63 vdd _291_<3> gnd _0_<7> b32_clk_bF$buf1 DFFPOSX1
XINVX1_78 b32_enable _340_ vdd gnd INVX1
XNOR2X1_78 vdd _340_ gnd _341_ b32_reset NOR2X1
XINVX4_8 vdd gnd _342_ _341_ INVX4
XOAI21X1_57 gnd vdd b32_reset _340_ _343_ _0_<8> OAI21X1
XNAND2X1_22 vdd _344_ gnd b32_mode_0_bF$buf1 b32_mode_1_bF$buf0 NAND2X1
XINVX1_79 b32_mode_0_bF$buf0 _345_ vdd gnd INVX1
XINVX1_80 b32_mode_1_bF$buf5 _346_ vdd gnd INVX1
XOAI21X1_58 gnd vdd _345_ _346_ _347_ _0_<8> OAI21X1
XOAI21X1_59 gnd vdd b32_D<8> _344_ _348_ _347_ OAI21X1
XOAI21X1_60 gnd vdd _342_ _348_ _339_<0> _343_ OAI21X1
XINVX1_81 _0_<9> _349_ vdd gnd INVX1
XINVX1_82 _0_<8> _350_ vdd gnd INVX1
XNOR2X1_79 vdd _349_ gnd _351_ _350_ NOR2X1
XNOR2X1_80 vdd _0_<9> gnd _352_ _0_<8> NOR2X1
XOR2X2_22 _353_ _352_ vdd gnd _351_ OR2X2
XOR2X2_23 _354_ b32_mode_0_bF$buf4 vdd gnd _353_ OR2X2
XNOR2X1_81 vdd _345_ gnd _355_ b32_mode_1_bF$buf4 NOR2X1
XINVX1_83 b32_D<9> _356_ vdd gnd INVX1
XOAI21X1_61 gnd vdd _356_ _344_ _357_ _341_ OAI21X1
XAOI21X1_43 gnd vdd _353_ _355_ _358_ _357_ AOI21X1
XAOI22X1_29 gnd vdd _358_ _354_ _339_<1> _349_ _342_ AOI22X1
XINVX2_15 vdd gnd _359_ _0_<10> INVX2
XNOR2X1_82 vdd b32_mode_1_bF$buf3 gnd _360_ b32_mode_0_bF$buf3 NOR2X1
XNAND3X1_15 _0_<9> vdd gnd _0_<8> _0_<10> _361_ NAND3X1
XINVX1_84 _361_ _362_ vdd gnd INVX1
XAOI21X1_44 gnd vdd _0_<8> _0_<9> _363_ _0_<10> AOI21X1
XNOR2X1_83 vdd _362_ gnd _364_ _363_ NOR2X1
XINVX1_85 b32_D<10> _365_ vdd gnd INVX1
XOAI21X1_62 gnd vdd _365_ _344_ _366_ _341_ OAI21X1
XAOI21X1_45 gnd vdd _364_ _360_ _367_ _366_ AOI21X1
XXNOR2X1_8 _352_ _359_ gnd vdd _368_ XNOR2X1
XNAND2X1_23 vdd _369_ gnd b32_mode_1_bF$buf2 _345_ NAND2X1
XINVX1_86 _363_ _370_ vdd gnd INVX1
XAOI21X1_46 gnd vdd _370_ _361_ _371_ _369_ AOI21X1
XAOI21X1_47 gnd vdd _368_ _355_ _372_ _371_ AOI21X1
XAOI22X1_30 gnd vdd _367_ _372_ _339_<2> _359_ _342_ AOI22X1
XINVX2_16 vdd gnd _373_ _0_<11> INVX2
XINVX1_87 _360_ _374_ vdd gnd INVX1
XOAI22X1_15 gnd vdd _362_ _374_ _369_ _363_ _375_ OAI22X1
XINVX1_88 b32_D<11> _376_ vdd gnd INVX1
XOAI21X1_63 gnd vdd _376_ _344_ _377_ _341_ OAI21X1
XAOI21X1_48 gnd vdd _375_ _0_<11> _378_ _377_ AOI21X1
XOR2X2_24 _379_ _0_<9> vdd gnd _0_<8> OR2X2
XOAI21X1_64 gnd vdd _0_<10> _379_ _380_ _0_<11> OAI21X1
XNAND3X1_16 _373_ vdd gnd _359_ _352_ _381_ NAND3X1
XNAND2X1_24 vdd _382_ gnd _381_ _380_ NAND2X1
XOAI22X1_16 gnd vdd _370_ _369_ _374_ _361_ _383_ OAI22X1
XAOI22X1_31 gnd vdd _355_ _382_ _384_ _373_ _383_ AOI22X1
XAOI22X1_32 gnd vdd _378_ _384_ _339_<3> _373_ _342_ AOI22X1
XNOR2X1_84 vdd _342_ gnd _337_<0> _350_ NOR2X1
XNOR2X1_85 vdd _342_ gnd _337_<1> _349_ NOR2X1
XNOR2X1_86 vdd _342_ gnd _337_<2> _359_ NOR2X1
XNOR2X1_87 vdd _342_ gnd _337_<3> _373_ NOR2X1
XNOR2X1_88 vdd _342_ gnd _338_ _344_ NOR2X1
XDFFPOSX1_64 vdd _338_ gnd counter_8b11.b4_load b32_clk_bF$buf0 DFFPOSX1
XDFFPOSX1_65 vdd _337_<0> gnd _0_<8> b32_clk_bF$buf7 DFFPOSX1
XDFFPOSX1_66 vdd _337_<1> gnd _0_<9> b32_clk_bF$buf6 DFFPOSX1
XDFFPOSX1_67 vdd _337_<2> gnd _0_<10> b32_clk_bF$buf5 DFFPOSX1
XDFFPOSX1_68 vdd _337_<3> gnd _0_<11> b32_clk_bF$buf4 DFFPOSX1
XDFFPOSX1_69 vdd _339_<0> gnd _0_<8> b32_clk_bF$buf3 DFFPOSX1
XDFFPOSX1_70 vdd _339_<1> gnd _0_<9> b32_clk_bF$buf2 DFFPOSX1
XDFFPOSX1_71 vdd _339_<2> gnd _0_<10> b32_clk_bF$buf1 DFFPOSX1
XDFFPOSX1_72 vdd _339_<3> gnd _0_<11> b32_clk_bF$buf0 DFFPOSX1
.ends counter_b32
 