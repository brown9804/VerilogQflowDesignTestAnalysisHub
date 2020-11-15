*SPICE netlist created from BLIF module uart by blif2BSpice
.include /usr/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt uart vdd gnd reset txclk ld_tx_data tx_data<0> tx_data<1> tx_data<2> tx_data<3> tx_data<4> tx_data<5> tx_data<6> tx_data<7> tx_enable rxclk uld_rx_data rx_enable rx_in tx_out tx_empty rx_data<0> rx_data<1> rx_data<2> rx_data<3> rx_data<4> rx_data<5> rx_data<6> rx_data<7> rx_empty 
XBUFX2_1 vdd gnd rxclk rxclk_bF$buf4 BUFX2
XBUFX2_2 vdd gnd rxclk rxclk_bF$buf3 BUFX2
XBUFX2_3 vdd gnd rxclk rxclk_bF$buf2 BUFX2
XBUFX2_4 vdd gnd rxclk rxclk_bF$buf1 BUFX2
XBUFX2_5 vdd gnd rxclk rxclk_bF$buf0 BUFX2
XBUFX4_1 vdd gnd _162_ _162__bF$buf5 BUFX4
XBUFX4_2 vdd gnd _162_ _162__bF$buf4 BUFX4
XBUFX4_3 vdd gnd _162_ _162__bF$buf3 BUFX4
XBUFX4_4 vdd gnd _162_ _162__bF$buf2 BUFX4
XBUFX4_5 vdd gnd _162_ _162__bF$buf1 BUFX4
XBUFX4_6 vdd gnd _162_ _162__bF$buf0 BUFX4
XBUFX4_7 vdd gnd uld_rx_data uld_rx_data_bF$buf3 BUFX4
XBUFX2_6 vdd gnd uld_rx_data uld_rx_data_bF$buf2 BUFX2
XBUFX4_8 vdd gnd uld_rx_data uld_rx_data_bF$buf1 BUFX4
XBUFX2_7 vdd gnd uld_rx_data uld_rx_data_bF$buf0 BUFX2
XINVX4_1 vdd gnd _163_ rx_d2 INVX4
XINVX2_1 vdd gnd _164_ rx_cnt<0> INVX2
XNOR2X1_1 vdd _164_ gnd _165_ rx_cnt<1> NOR2X1
XINVX1_1 rx_cnt<3> _166_ vdd gnd INVX1
XINVX2_2 vdd gnd _10_ rx_cnt<2> INVX2
XNOR2X1_2 vdd rx_cnt<0> gnd _11_ rx_cnt<1> NOR2X1
XNAND2X1_1 vdd _12_ gnd _10_ _11_ NAND2X1
XXNOR2X1_1 _12_ _166_ gnd vdd _13_ XNOR2X1
XOAI21X1_1 gnd vdd rx_cnt<1> rx_cnt<0> _14_ rx_cnt<2> OAI21X1
XNAND2X1_2 vdd _15_ gnd _14_ _12_ NAND2X1
XINVX2_3 vdd gnd _16_ rx_enable INVX2
XNAND3X1_1 rx_sample_cnt<0> vdd gnd rx_sample_cnt<1> rx_sample_cnt<2> _17_ NAND3X1
XINVX1_2 rx_sample_cnt<3> _18_ vdd gnd INVX1
XNAND2X1_3 vdd _19_ gnd rx_busy _18_ NAND2X1
XNOR3X1_1 vdd gnd _17_ _19_ _16_ _20_ NOR3X1
XAND2X2_1 vdd gnd _20_ _15_ _21_ AND2X2
XNAND3X1_2 _13_ vdd gnd _165_ _21_ _22_ NAND3X1
XNAND2X1_4 vdd _23_ gnd rx_reg<4> _22_ NAND2X1
XOAI21X1_2 gnd vdd _163_ _22_ _4_<4> _23_ OAI21X1
XINVX1_3 _20_ _24_ vdd gnd INVX1
XNOR2X1_3 vdd _10_ gnd _25_ rx_cnt<3> NOR2X1
XNAND2X1_5 vdd _26_ gnd _11_ _25_ NAND2X1
XOR2X2_1 _27_ _26_ vdd gnd _24_ OR2X2
XOAI21X1_3 gnd vdd _26_ _24_ _28_ rx_reg<3> OAI21X1
XOAI21X1_4 gnd vdd _163_ _27_ _4_<3> _28_ OAI21X1
XNOR2X1_4 vdd _15_ gnd _29_ rx_cnt<3> NOR2X1
XINVX1_4 rx_cnt<1> _30_ vdd gnd INVX1
XNOR2X1_5 vdd _164_ gnd _31_ _30_ NOR2X1
XNAND3X1_3 _31_ vdd gnd _20_ _29_ _32_ NAND3X1
XNAND2X1_6 vdd _33_ gnd rx_reg<2> _32_ NAND2X1
XOAI21X1_5 gnd vdd _163_ _32_ _4_<2> _33_ OAI21X1
XNOR2X1_6 vdd _30_ gnd _34_ rx_cnt<0> NOR2X1
XNAND3X1_4 _34_ vdd gnd _20_ _29_ _35_ NAND3X1
XNAND2X1_7 vdd _36_ gnd rx_reg<1> _35_ NAND2X1
XOAI21X1_6 gnd vdd _163_ _35_ _4_<1> _36_ OAI21X1
XNAND3X1_5 _20_ vdd gnd _165_ _29_ _37_ NAND3X1
XNAND2X1_8 vdd _38_ gnd rx_reg<0> _37_ NAND2X1
XOAI21X1_7 gnd vdd _163_ _37_ _4_<0> _38_ OAI21X1
XOAI21X1_8 gnd vdd rx_busy _163_ _39_ rx_enable OAI21X1
XINVX1_5 _39_ _40_ vdd gnd INVX1
XOAI21X1_9 gnd vdd rx_sample_cnt<3> _17_ _41_ rx_busy OAI21X1
XAND2X2_2 vdd gnd _40_ _41_ _42_ AND2X2
XNOR2X1_7 vdd rx_cnt<2> gnd _43_ rx_cnt<3> NOR2X1
XNAND2X1_9 vdd _44_ gnd _11_ _43_ NAND2X1
XOAI21X1_10 gnd vdd _163_ _44_ _45_ _164_ OAI21X1
XOAI22X1_1 gnd vdd _42_ _164_ _24_ _45_ _1_<0> OAI22X1
XOAI21X1_11 gnd vdd _165_ _34_ _46_ _20_ OAI21X1
XOAI21X1_12 gnd vdd _30_ _42_ _1_<1> _46_ OAI21X1
XNAND2X1_10 vdd _47_ gnd rx_enable _31_ NAND2X1
XINVX1_6 _47_ _48_ vdd gnd INVX1
XNOR2X1_8 vdd _19_ gnd _49_ _17_ NOR2X1
XINVX1_7 _49_ _50_ vdd gnd INVX1
XAOI21X1_1 gnd vdd rx_cnt<2> _31_ _51_ _50_ AOI21X1
XOAI21X1_13 gnd vdd rx_cnt<2> _48_ _52_ _51_ OAI21X1
XOAI21X1_14 gnd vdd _10_ _42_ _1_<2> _52_ OAI21X1
XNAND3X1_6 _25_ vdd gnd _49_ _48_ _53_ NAND3X1
XINVX1_8 _42_ _54_ vdd gnd INVX1
XOAI21X1_15 gnd vdd _51_ _54_ _55_ rx_cnt<3> OAI21X1
XNAND2X1_11 vdd _1_<3> gnd _53_ _55_ NAND2X1
XINVX1_9 rx_sample_cnt<0> _56_ vdd gnd INVX1
XNOR2X1_9 vdd _16_ gnd _57_ _56_ NOR2X1
XAOI22X1_1 gnd vdd _56_ _39_ _5_<0> _57_ rx_busy AOI22X1
XINVX1_10 rx_sample_cnt<1> _58_ vdd gnd INVX1
XNAND2X1_12 vdd _59_ gnd rx_sample_cnt<1> rx_sample_cnt<0> NAND2X1
XAND2X2_3 vdd gnd _59_ rx_busy _60_ AND2X2
XOAI21X1_16 gnd vdd rx_sample_cnt<1> _57_ _61_ _60_ OAI21X1
XOAI21X1_17 gnd vdd _58_ _40_ _5_<1> _61_ OAI21X1
XINVX1_11 rx_sample_cnt<2> _62_ vdd gnd INVX1
XAND2X2_4 vdd gnd _17_ rx_busy _63_ AND2X2
XOAI21X1_18 gnd vdd _16_ _59_ _64_ _62_ OAI21X1
XNAND2X1_13 vdd _65_ gnd _64_ _63_ NAND2X1
XOAI21X1_19 gnd vdd _62_ _40_ _5_<2> _65_ OAI21X1
XOAI21X1_20 gnd vdd _39_ _63_ _66_ rx_sample_cnt<3> OAI21X1
XOAI21X1_21 gnd vdd _16_ _50_ _5_<3> _66_ OAI21X1
XNOR2X1_10 vdd uld_rx_data_bF$buf3 gnd _67_ _168_ NOR2X1
XNAND3X1_7 _10_ vdd gnd rx_cnt<3> _165_ _68_ NAND3X1
XNOR2X1_11 vdd _68_ gnd _69_ _163_ NOR2X1
XAOI21X1_2 gnd vdd _69_ _20_ _3_ _67_ AOI21X1
XINVX1_12 _167_<0> _70_ vdd gnd INVX1
XNAND2X1_14 vdd _71_ gnd rx_reg<0> uld_rx_data_bF$buf2 NAND2X1
XOAI21X1_22 gnd vdd uld_rx_data_bF$buf1 _70_ _2_<0> _71_ OAI21X1
XINVX1_13 _167_<1> _72_ vdd gnd INVX1
XNAND2X1_15 vdd _73_ gnd rx_reg<1> uld_rx_data_bF$buf0 NAND2X1
XOAI21X1_23 gnd vdd uld_rx_data_bF$buf3 _72_ _2_<1> _73_ OAI21X1
XINVX1_14 _167_<2> _74_ vdd gnd INVX1
XNAND2X1_16 vdd _75_ gnd rx_reg<2> uld_rx_data_bF$buf2 NAND2X1
XOAI21X1_24 gnd vdd uld_rx_data_bF$buf1 _74_ _2_<2> _75_ OAI21X1
XINVX1_15 _167_<3> _76_ vdd gnd INVX1
XNAND2X1_17 vdd _77_ gnd rx_reg<3> uld_rx_data_bF$buf0 NAND2X1
XOAI21X1_25 gnd vdd uld_rx_data_bF$buf3 _76_ _2_<3> _77_ OAI21X1
XINVX1_16 _167_<4> _78_ vdd gnd INVX1
XNAND2X1_18 vdd _79_ gnd rx_reg<4> uld_rx_data_bF$buf2 NAND2X1
XOAI21X1_26 gnd vdd uld_rx_data_bF$buf1 _78_ _2_<4> _79_ OAI21X1
XINVX1_17 _167_<5> _80_ vdd gnd INVX1
XNAND2X1_19 vdd _81_ gnd uld_rx_data_bF$buf0 rx_reg<5> NAND2X1
XOAI21X1_27 gnd vdd uld_rx_data_bF$buf3 _80_ _2_<5> _81_ OAI21X1
XINVX1_18 rx_reg<6> _82_ vdd gnd INVX1
XNOR2X1_12 vdd _167_<6> gnd _83_ uld_rx_data_bF$buf2 NOR2X1
XAOI21X1_3 gnd vdd uld_rx_data_bF$buf1 _82_ _2_<6> _83_ AOI21X1
XINVX1_19 rx_reg<7> _84_ vdd gnd INVX1
XNOR2X1_13 vdd _167_<7> gnd _85_ uld_rx_data_bF$buf0 NOR2X1
XAOI21X1_4 gnd vdd uld_rx_data_bF$buf3 _84_ _2_<7> _85_ AOI21X1
XINVX2_4 vdd gnd _86_ tx_cnt<0> INVX2
XOAI21X1_28 gnd vdd _169_ _86_ _87_ tx_enable OAI21X1
XAOI21X1_5 gnd vdd _86_ _169_ _6_<0> _87_ AOI21X1
XINVX2_5 vdd gnd _88_ tx_enable INVX2
XNOR2X1_14 vdd _88_ gnd _89_ _169_ NOR2X1
XNOR2X1_15 vdd tx_cnt<1> gnd _90_ tx_cnt<2> NOR2X1
XNAND3X1_8 tx_cnt<3> vdd gnd tx_cnt<0> _90_ _91_ NAND3X1
XNOR2X1_16 vdd tx_cnt<1> gnd _92_ tx_cnt<0> NOR2X1
XNAND2X1_20 vdd _93_ gnd tx_cnt<0> tx_cnt<1> NAND2X1
XINVX1_20 _93_ _94_ vdd gnd INVX1
XNOR2X1_17 vdd _94_ gnd _95_ _92_ NOR2X1
XNAND3X1_9 _91_ vdd gnd _89_ _95_ _96_ NAND3X1
XOAI21X1_29 gnd vdd _169_ _88_ _97_ tx_cnt<1> OAI21X1
XAOI21X1_6 gnd vdd _96_ _97_ _6_<1> _88_ AOI21X1
XINVX2_6 vdd gnd _98_ tx_cnt<2> INVX2
XINVX1_21 _89_ _99_ vdd gnd INVX1
XOAI21X1_30 gnd vdd _93_ _99_ _100_ _98_ OAI21X1
XNAND2X1_21 vdd _101_ gnd _94_ _89_ NAND2X1
XOR2X2_2 _102_ _98_ vdd gnd _101_ OR2X2
XNAND2X1_22 vdd _103_ gnd _100_ _102_ NAND2X1
XNOR2X1_18 vdd _103_ gnd _6_<2> _88_ NOR2X1
XOAI21X1_31 gnd vdd _169_ _91_ _104_ tx_enable OAI21X1
XOAI21X1_32 gnd vdd _98_ _101_ _105_ tx_cnt<3> OAI21X1
XOR2X2_3 _106_ tx_cnt<3> vdd gnd _102_ OR2X2
XAOI21X1_7 gnd vdd _106_ _105_ _6_<3> _104_ AOI21X1
XINVX1_22 tx_reg<0> _107_ vdd gnd INVX1
XINVX1_23 tx_data<0> _108_ vdd gnd INVX1
XAND2X2_5 vdd gnd _169_ ld_tx_data _109_ AND2X2
XMUX2X1_1 _109_ vdd gnd _9_<0> _108_ _107_ MUX2X1
XINVX1_24 tx_reg<1> _110_ vdd gnd INVX1
XINVX1_25 tx_data<1> _111_ vdd gnd INVX1
XMUX2X1_2 _109_ vdd gnd _9_<1> _111_ _110_ MUX2X1
XINVX1_26 tx_reg<2> _112_ vdd gnd INVX1
XINVX1_27 tx_data<2> _113_ vdd gnd INVX1
XMUX2X1_3 _109_ vdd gnd _9_<2> _113_ _112_ MUX2X1
XINVX1_28 tx_reg<3> _114_ vdd gnd INVX1
XINVX1_29 tx_data<3> _115_ vdd gnd INVX1
XMUX2X1_4 _109_ vdd gnd _9_<3> _115_ _114_ MUX2X1
XINVX1_30 tx_reg<4> _116_ vdd gnd INVX1
XINVX1_31 tx_data<4> _117_ vdd gnd INVX1
XMUX2X1_5 _109_ vdd gnd _9_<4> _117_ _116_ MUX2X1
XINVX1_32 tx_reg<5> _118_ vdd gnd INVX1
XINVX1_33 tx_data<5> _119_ vdd gnd INVX1
XMUX2X1_6 _109_ vdd gnd _9_<5> _119_ _118_ MUX2X1
XINVX1_34 tx_data<6> _120_ vdd gnd INVX1
XNOR2X1_19 vdd _109_ gnd _121_ tx_reg<6> NOR2X1
XAOI21X1_8 gnd vdd _120_ _109_ _9_<6> _121_ AOI21X1
XINVX1_35 tx_data<7> _122_ vdd gnd INVX1
XNOR2X1_20 vdd _109_ gnd _123_ tx_reg<7> NOR2X1
XAOI21X1_9 gnd vdd _122_ _109_ _9_<7> _123_ AOI21X1
XINVX1_36 _169_ _124_ vdd gnd INVX1
XOAI22X1_2 gnd vdd _99_ _91_ _124_ ld_tx_data _7_ OAI22X1
XINVX1_37 tx_cnt<1> _125_ vdd gnd INVX1
XNAND2X1_23 vdd _126_ gnd _86_ _125_ NAND2X1
XNAND2X1_24 vdd _127_ gnd _93_ _126_ NAND2X1
XNAND3X1_10 _98_ vdd gnd _86_ _125_ _128_ NAND3X1
XOAI21X1_33 gnd vdd tx_cnt<0> tx_cnt<1> _129_ tx_cnt<2> OAI21X1
XNAND3X1_11 _129_ vdd gnd _114_ _128_ _130_ NAND3X1
XOAI21X1_34 gnd vdd tx_cnt<0> tx_cnt<1> _131_ _98_ OAI21X1
XNAND3X1_12 _86_ vdd gnd tx_cnt<2> _125_ _132_ NAND3X1
XOAI21X1_35 gnd vdd tx_cnt<3> tx_cnt<2> _133_ tx_reg<7> OAI21X1
XNAND3X1_13 _133_ vdd gnd _131_ _132_ _134_ NAND3X1
XNAND3X1_14 _134_ vdd gnd _127_ _130_ _135_ NAND3X1
XNAND3X1_15 _129_ vdd gnd _110_ _128_ _136_ NAND3X1
XNAND2X1_25 vdd _137_ gnd tx_cnt<2> _118_ NAND2X1
XNAND3X1_16 _137_ vdd gnd _95_ _136_ _138_ NAND3X1
XNAND3X1_17 _138_ vdd gnd _86_ _135_ _139_ NAND3X1
XNAND3X1_18 _129_ vdd gnd _112_ _128_ _140_ NAND3X1
XOAI21X1_36 gnd vdd tx_cnt<3> tx_cnt<2> _141_ tx_reg<6> OAI21X1
XNAND3X1_19 _141_ vdd gnd _131_ _132_ _142_ NAND3X1
XNAND3X1_20 _142_ vdd gnd _127_ _140_ _143_ NAND3X1
XNAND3X1_21 _129_ vdd gnd _107_ _128_ _144_ NAND3X1
XNAND2X1_26 vdd _145_ gnd tx_cnt<2> _116_ NAND2X1
XNAND3X1_22 _145_ vdd gnd _95_ _144_ _146_ NAND3X1
XNAND3X1_23 _146_ vdd gnd tx_cnt<0> _143_ _147_ NAND3X1
XNOR2X1_21 vdd _128_ gnd _148_ tx_cnt<3> NOR2X1
XOAI21X1_37 gnd vdd tx_cnt<2> _126_ _149_ tx_cnt<3> OAI21X1
XNAND2X1_27 vdd _150_ gnd _89_ _149_ NAND2X1
XNOR2X1_22 vdd _150_ gnd _151_ _148_ NOR2X1
XNAND3X1_24 _139_ vdd gnd _151_ _147_ _152_ NAND3X1
XNOR2X1_23 vdd _99_ gnd _153_ _91_ NOR2X1
XAOI21X1_10 gnd vdd _150_ _170_ _154_ _153_ AOI21X1
XNAND2X1_28 vdd _8_ gnd _154_ _152_ NAND2X1
XNOR2X1_24 vdd _12_ gnd _155_ _166_ NOR2X1
XNAND2X1_29 vdd _156_ gnd _20_ _155_ NAND2X1
XMUX2X1_7 _156_ vdd gnd _4_<7> _84_ _163_ MUX2X1
XMUX2X1_8 _53_ vdd gnd _4_<6> _82_ _163_ MUX2X1
XNAND3X1_25 _34_ vdd gnd _13_ _21_ _157_ NAND3X1
XNAND2X1_30 vdd _158_ gnd rx_reg<5> _157_ NAND2X1
XOAI21X1_38 gnd vdd _163_ _157_ _4_<5> _158_ OAI21X1
XOAI21X1_39 gnd vdd rx_busy _163_ _159_ _50_ OAI21X1
XAND2X2_6 vdd gnd _68_ rx_busy _160_ AND2X2
XOAI21X1_40 gnd vdd _163_ _44_ _161_ _160_ OAI21X1
XAOI21X1_11 gnd vdd _161_ _159_ _0_ _16_ AOI21X1
XINVX8_1 vdd gnd reset _162_ INVX8
XBUFX2_8 vdd gnd _167_<0> rx_data<0> BUFX2
XBUFX2_9 vdd gnd _167_<1> rx_data<1> BUFX2
XBUFX2_10 vdd gnd _167_<2> rx_data<2> BUFX2
XBUFX2_11 vdd gnd _167_<3> rx_data<3> BUFX2
XBUFX2_12 vdd gnd _167_<4> rx_data<4> BUFX2
XBUFX2_13 vdd gnd _167_<5> rx_data<5> BUFX2
XBUFX2_14 vdd gnd _167_<6> rx_data<6> BUFX2
XBUFX2_15 vdd gnd _167_<7> rx_data<7> BUFX2
XBUFX2_16 vdd gnd _168_ rx_empty BUFX2
XBUFX2_17 vdd gnd _169_ tx_empty BUFX2
XBUFX2_18 vdd gnd _170_ tx_out BUFX2
XDFFSR_1 gnd vdd _8_ _162__bF$buf5 vdd _170_ txclk DFFSR
XDFFSR_2 gnd vdd _7_ _162__bF$buf4 vdd _169_ txclk DFFSR
XDFFSR_3 gnd vdd _9_<0> vdd _162__bF$buf3 tx_reg<0> txclk DFFSR
XDFFSR_4 gnd vdd _9_<1> vdd _162__bF$buf2 tx_reg<1> txclk DFFSR
XDFFSR_5 gnd vdd _9_<2> vdd _162__bF$buf1 tx_reg<2> txclk DFFSR
XDFFSR_6 gnd vdd _9_<3> vdd _162__bF$buf0 tx_reg<3> txclk DFFSR
XDFFSR_7 gnd vdd _9_<4> vdd _162__bF$buf5 tx_reg<4> txclk DFFSR
XDFFSR_8 gnd vdd _9_<5> vdd _162__bF$buf4 tx_reg<5> txclk DFFSR
XDFFSR_9 gnd vdd _9_<6> vdd _162__bF$buf3 tx_reg<6> txclk DFFSR
XDFFSR_10 gnd vdd _9_<7> vdd _162__bF$buf2 tx_reg<7> txclk DFFSR
XDFFSR_11 gnd vdd _6_<0> vdd _162__bF$buf1 tx_cnt<0> txclk DFFSR
XDFFSR_12 gnd vdd _6_<1> vdd _162__bF$buf0 tx_cnt<1> txclk DFFSR
XDFFSR_13 gnd vdd _6_<2> vdd _162__bF$buf5 tx_cnt<2> txclk DFFSR
XDFFSR_14 gnd vdd _6_<3> vdd _162__bF$buf4 tx_cnt<3> txclk DFFSR
XDFFSR_15 gnd vdd _2_<0> vdd _162__bF$buf3 _167_<0> rxclk_bF$buf4 DFFSR
XDFFSR_16 gnd vdd _2_<1> vdd _162__bF$buf2 _167_<1> rxclk_bF$buf3 DFFSR
XDFFSR_17 gnd vdd _2_<2> vdd _162__bF$buf1 _167_<2> rxclk_bF$buf2 DFFSR
XDFFSR_18 gnd vdd _2_<3> vdd _162__bF$buf0 _167_<3> rxclk_bF$buf1 DFFSR
XDFFSR_19 gnd vdd _2_<4> vdd _162__bF$buf5 _167_<4> rxclk_bF$buf0 DFFSR
XDFFSR_20 gnd vdd _2_<5> vdd _162__bF$buf4 _167_<5> rxclk_bF$buf4 DFFSR
XDFFSR_21 gnd vdd _2_<6> vdd _162__bF$buf3 _167_<6> rxclk_bF$buf3 DFFSR
XDFFSR_22 gnd vdd _2_<7> vdd _162__bF$buf2 _167_<7> rxclk_bF$buf2 DFFSR
XDFFSR_23 gnd vdd _3_ _162__bF$buf1 vdd _168_ rxclk_bF$buf1 DFFSR
XDFFSR_24 gnd vdd _4_<0> vdd _162__bF$buf0 rx_reg<0> rxclk_bF$buf0 DFFSR
XDFFSR_25 gnd vdd _4_<1> vdd _162__bF$buf5 rx_reg<1> rxclk_bF$buf4 DFFSR
XDFFSR_26 gnd vdd _4_<2> vdd _162__bF$buf4 rx_reg<2> rxclk_bF$buf3 DFFSR
XDFFSR_27 gnd vdd _4_<3> vdd _162__bF$buf3 rx_reg<3> rxclk_bF$buf2 DFFSR
XDFFSR_28 gnd vdd _4_<4> vdd _162__bF$buf2 rx_reg<4> rxclk_bF$buf1 DFFSR
XDFFSR_29 gnd vdd _4_<5> vdd _162__bF$buf1 rx_reg<5> rxclk_bF$buf0 DFFSR
XDFFSR_30 gnd vdd _4_<6> vdd _162__bF$buf0 rx_reg<6> rxclk_bF$buf4 DFFSR
XDFFSR_31 gnd vdd _4_<7> vdd _162__bF$buf5 rx_reg<7> rxclk_bF$buf3 DFFSR
XDFFSR_32 gnd vdd _5_<0> vdd _162__bF$buf4 rx_sample_cnt<0> rxclk_bF$buf2 DFFSR
XDFFSR_33 gnd vdd _5_<1> vdd _162__bF$buf3 rx_sample_cnt<1> rxclk_bF$buf1 DFFSR
XDFFSR_34 gnd vdd _5_<2> vdd _162__bF$buf2 rx_sample_cnt<2> rxclk_bF$buf0 DFFSR
XDFFSR_35 gnd vdd _5_<3> vdd _162__bF$buf1 rx_sample_cnt<3> rxclk_bF$buf4 DFFSR
XDFFSR_36 gnd vdd _1_<0> vdd _162__bF$buf0 rx_cnt<0> rxclk_bF$buf3 DFFSR
XDFFSR_37 gnd vdd _1_<1> vdd _162__bF$buf5 rx_cnt<1> rxclk_bF$buf2 DFFSR
XDFFSR_38 gnd vdd _1_<2> vdd _162__bF$buf4 rx_cnt<2> rxclk_bF$buf1 DFFSR
XDFFSR_39 gnd vdd _1_<3> vdd _162__bF$buf3 rx_cnt<3> rxclk_bF$buf0 DFFSR
XDFFSR_40 gnd vdd rx_in _162__bF$buf2 vdd rx_d1 rxclk_bF$buf4 DFFSR
XDFFSR_41 gnd vdd rx_d1 _162__bF$buf1 vdd rx_d2 rxclk_bF$buf3 DFFSR
XDFFSR_42 gnd vdd _0_ vdd _162__bF$buf0 rx_busy rxclk_bF$buf2 DFFSR
.ends uart
 