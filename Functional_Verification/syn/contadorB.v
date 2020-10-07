/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */


module counterB_module(enable, clk, reset, mode, D, load, rco, Q);
  wire [3:0] _000_;
  wire _001_;
  wire _002_;
  wire [31:0] _003_;
  wire [31:0] _004_;
  wire _005_;
  wire [1:0] _006_;
  wire [1:0] _007_;
  wire [1:0] _008_;
  wire [1:0] _009_;
  wire [1:0] _010_;
  wire [1:0] _011_;
  wire _012_;
  wire _013_;
  wire [1:0] _014_;
  wire [1:0] _015_;
  wire [1:0] _016_;
  wire [1:0] _017_;
  wire [1:0] _018_;
  wire _019_;
  wire _020_;
  wire [3:0] _021_;
  wire [1:0] _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire [3:0] _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire [2:0] _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire [15:0] _055_;
  wire [3:0] _056_;
  wire [3:0] _057_;
  wire [3:0] _058_;
  wire [31:0] _059_;
  wire [31:0] _060_;
  wire [31:0] _061_;
  wire _062_;
  wire _063_;
  wire [31:0] _064_;
  wire _065_;
  wire _066_;
  input [3:0] D;
  output [3:0] Q;
  reg [3:0] Q;
  input clk;
  input enable;
  output load;
  reg load;
  input [1:0] mode;
  output rco;
  reg rco;
  input reset;
  assign _005_ = _045_ | _044_;
  assign _006_[0] = Q[0] | _021_[1];
  assign _023_ = _006_[0] | _006_[1];
  assign _024_ = _007_[0] | _006_[1];
  assign _007_[0] = _003_[0] | Q[1];
  assign _025_ = _007_[0] | _008_[1];
  assign _008_[1] = _021_[2] | Q[3];
  assign _026_ = _009_[0] | _008_[1];
  assign _009_[0] = _003_[0] | _021_[1];
  assign _006_[1] = _021_[2] | _021_[3];
  assign _027_ = _009_[0] | _006_[1];
  assign _028_ = _022_[0] | _022_[1];
  assign _029_ = mode[0] | _022_[1];
  assign _030_ = _022_[0] | mode[1];
  assign _010_[1] = _041_[2] | _041_[3];
  assign _042_ = _010_[0] | _010_[1];
  assign _062_ = _011_[0] | _011_[1];
  assign _051_ = _012_ | _050_[2];
  assign _013_ = _012_ | _005_;
  assign _063_ = _013_ | _048_;
  assign _014_[0] = _055_[2] | _055_[6];
  assign _014_[1] = _055_[10] | _055_[14];
  assign _056_[2] = _014_[0] | _014_[1];
  assign _015_[0] = _055_[3] | _055_[7];
  assign _015_[1] = _055_[11] | _055_[15];
  assign _056_[3] = _015_[0] | _015_[1];
  assign _016_[0] = _055_[1] | _055_[5];
  assign _016_[1] = _055_[9] | _055_[13];
  assign _056_[1] = _016_[0] | _016_[1];
  assign _017_[0] = _055_[0] | _055_[4];
  assign _017_[1] = _055_[8] | _055_[12];
  assign _056_[0] = _017_[0] | _017_[1];
  assign _011_[0] = _012_ | _044_;
  assign _011_[1] = _045_ | _048_;
  assign _018_[0] = Q[0] | Q[1];
  assign _018_[1] = Q[2] | Q[3];
  assign _019_ = _018_[0] | _018_[1];
  assign _020_ = mode[0] | mode[1];
  assign _033_ = ~_023_;
  assign _034_ = ~_024_;
  assign _035_ = ~_025_;
  assign _036_ = ~_026_;
  assign _037_ = ~_019_;
  assign _031_ = ~_027_;
  assign _012_ = ~_028_;
  assign _044_ = ~_029_;
  assign _045_ = ~_030_;
  assign _048_ = ~_020_;
  assign _038_ = enable & _032_;
  assign _040_ = _031_ | _033_;
  assign _039_ = _040_ | _034_;
  assign _046_ = _025_ ? _036_ : 1'b0;
  assign _047_ = _039_ ? 1'b1 : _046_;
  assign _049_ = _038_ ? _043_ : 1'bz;
  assign _002_ = reset ? 1'b0 : _049_;
  assign _053_ = _039_ ? 1'b0 : _035_;
  assign _054_ = _038_ ? _052_ : 1'bz;
  assign _001_ = reset ? 1'b0 : _054_;
  assign _058_[0] = _038_ ? _057_[0] : 1'bz;
  assign _058_[1] = _038_ ? _057_[1] : 1'bz;
  assign _058_[2] = _038_ ? _057_[2] : 1'bz;
  assign _058_[3] = _038_ ? _057_[3] : 1'bz;
  assign _000_[0] = reset ? 1'b0 : _058_[0];
  assign _000_[1] = reset ? 1'b0 : _058_[1];
  assign _000_[2] = reset ? 1'b0 : _058_[2];
  assign _000_[3] = reset ? 1'b0 : _058_[3];
  assign _043_ = _062_ ? _042_ : rco;
  assign _052_ = _063_ ? _051_ : load;
  assign _057_[0] = _062_ ? _056_[0] : Q[0];
  assign _057_[1] = _062_ ? _056_[1] : Q[1];
  assign _057_[2] = _062_ ? _056_[2] : Q[2];
  assign _057_[3] = _062_ ? _056_[3] : Q[3];
  assign _032_ = ~reset;
  always @(posedge clk)
      Q[0] <= _000_[0];
  always @(posedge clk)
      Q[1] <= _000_[1];
  always @(posedge clk)
      Q[2] <= _000_[2];
  always @(posedge clk)
      Q[3] <= _000_[3];
  always @(posedge clk)
      load <= _001_;
  always @(posedge clk)
      rco <= _002_;
  assign _065_ = _021_[1] & Q[0];
  assign _061_[2] = Q[2] & _061_[1];
  assign _061_[1] = Q[1] | _065_;
  assign _064_[1] = Q[1] & _064_[0];
  assign _066_ = _021_[2] & _064_[1];
  assign _064_[0] = Q[0] | _003_[0];
  assign _064_[2] = Q[2] | _066_;
  assign _060_[1] = Q[1] & Q[0];
  assign _060_[2] = Q[2] & _060_[1];
  assign _021_[3] = Q[3] ^ 1'b1;
  assign _022_[1] = mode[1] ^ 1'b1;
  assign _022_[0] = mode[0] ^ 1'b1;
  assign _041_[3] = _047_ & _048_;
  assign _041_[2] = _037_ & _045_;
  assign _010_[0] = _031_ & _044_;
  assign _050_[2] = _053_ & _048_;
  assign _055_[12] = _003_[0] & _048_;
  assign _055_[13] = _004_[1] & _048_;
  assign _055_[14] = _004_[2] & _048_;
  assign _055_[15] = _004_[3] & _048_;
  assign _055_[8] = _059_[0] & _045_;
  assign _055_[9] = _059_[1] & _045_;
  assign _055_[10] = _059_[2] & _045_;
  assign _055_[11] = _059_[3] & _045_;
  assign _055_[4] = _003_[0] & _044_;
  assign _055_[5] = _003_[1] & _044_;
  assign _055_[6] = _003_[2] & _044_;
  assign _055_[7] = _003_[3] & _044_;
  assign _055_[0] = D[0] & _012_;
  assign _055_[1] = D[1] & _012_;
  assign _055_[2] = D[2] & _012_;
  assign _055_[3] = D[3] & _012_;
  assign _021_[1] = Q[1] ^ 1'b1;
  assign _004_[1] = _021_[1] ^ Q[0];
  assign _004_[2] = Q[2] ^ _061_[1];
  assign _004_[3] = Q[3] ^ _061_[2];
  assign _021_[2] = Q[2] ^ 1'b1;
  assign _059_[0] = _003_[0] ^ 1'b1;
  assign _059_[1] = Q[1] ^ _064_[0];
  assign _059_[2] = _021_[2] ^ _064_[1];
  assign _059_[3] = _021_[3] ^ _064_[2];
  assign _003_[0] = Q[0] ^ 1'b1;
  assign _003_[1] = Q[1] ^ Q[0];
  assign _003_[2] = Q[2] ^ _060_[1];
  assign _003_[3] = Q[3] ^ _060_[2];
endmodule
