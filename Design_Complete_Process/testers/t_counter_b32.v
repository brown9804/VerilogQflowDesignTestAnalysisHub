
// Belinda Brown Ramírez
// December, 2020
// timna.brown@ucr.ac.cr


`ifndef T_COUNTER_B32
`define T_COUNTER_B32


// The tester module is defined


// Verifying that the generic structural description works using the automatic
// verifier already built. What is done using the checker and the tester

module t_counter_b32(
//inputs
input wire [7:0] b32_load,
input wire [7:0] b32_rco, //  2^nbits - 1 = #
input wire [31:0] b32_Q,

input wire [7:0] b32_load_syn,
input wire [7:0] b32_rco_syn, //  2^nbits - 1 = #
input wire [31:0] b32_Q_syn,

//outputs
output reg b32_enable,
output reg b32_clk,
output reg b32_reset,
output reg [1:0] b32_mode, // choose from 00, 01, 10, 11
output reg [31:0]  b32_D
);

	// The stimulus must be changed, where it allows testing to give an idea of ​​the behavior of the signals.
	// Therefore, the inputs will be initialized with a value chosen between one and zero. Since they are not defined
	// initial conditions in the algorithm request. They are personally chosen.

	// VERILOG ASSIGNMENTS FOR NUMBERS - FORMAT
	// 'b binary base
	// 'd Decimal base
	// 'h Hexadecimal base
	// 'or octal base
	// and what comes after the letter is the value then in the case of binary
	// the following examples are considered for understanding
	// 2'b0 = 2'b00 = 00
	// 2'b1 = 2'b01 = 01
	// 2'b10 = 10
	// 2'b11 = 11
	// If it does not indicate the size, 32 bits are assigned by default, that is, 'b0 = 00000000000000000000000000000000
	// This passes the first clock cycle ... Defining initial values ​​....



parameter ITERATIONS = 60;
integer log;

initial begin

  $dumpfile("counter_b32.vcd");
  $dumpvars(0);   // "dumpping" variables

  log = $fopen("./log_txt/counter_b32_tester.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time);
  $fdisplay(log, "time=%5d, Starting Reset", $time);

//// RESET MASTER 
	// Begin test
	repeat (6) begin
	@(posedge b32_clk);
	b32_reset <= 0;
	end

	@(posedge b32_clk) begin
	#5 b32_reset <= 1;
	end

/////////////////////////
////////   t_drv_initial();
//////////////////////////

  repeat (2) begin // 1 0 1  1 0 1
  @(negedge b32_clk);
    b32_reset <= 1;
    b32_enable <= 0;
  @(negedge b32_clk);
    b32_reset <= 0;
    b32_enable <= 0;
  @(negedge b32_clk);
    b32_reset <= 0;
    b32_enable <= 1;
  end // end repeat

  $fdisplay(log, "time=%5d, Reset Completed", $time);

  $fdisplay(log, "time=%5d, Starting Test", $time);

///////////////////////////////////
  //   t_loading(ITERATIONS);
  ///////////////////////////////////
b32_mode <= 2'b11;
repeat (ITERATIONS) begin
  @(negedge b32_clk) begin
    b32_enable <= 1;
    b32_D <= 32'b0001; // 1
    @(negedge b32_clk);
    if (b32_mode == 2'b11) begin
      b32_mode <= 2'b10;
    end
    else begin
      b32_mode <= 2'b00;
    end
  end // ~ b32_clk

  @(negedge b32_clk) begin
    b32_enable <= 1;
    b32_D <= 32'b0010; // 2
    @(negedge b32_clk);
    if (b32_mode == 2'b10) begin
      b32_mode <= 2'b01;
    end
    else begin
      b32_mode <= 2'b10;
    end
  end // ~ b32_clk


  //////// sending 
  @(negedge b32_clk) begin
    b32_enable <= 1;
    b32_D <= 32'b1010; // A
    @(negedge b32_clk);
    if (b32_mode == 2'b11) begin
      b32_mode <= 2'b10;
    end
  end // ~ b32_clk

  //////// sending 
  @(negedge b32_clk) begin
    b32_enable <= 1;
    b32_D <= 32'b1011; // B
    @(negedge b32_clk);
    if (b32_mode == 2'b11) begin
      b32_mode <= 2'b10;
    end
  end // ~ b32_clk

  //////// sending
  @(negedge b32_clk) begin
    b32_enable <= 1;
    b32_D <= 32'b1110; // E
    @(negedge b32_clk);
    if (b32_mode == 2'b11) begin
      b32_mode <= 2'b10;
    end
  end // ~ b32_clk

  @(negedge b32_clk) begin
    b32_enable <= 1;
    b32_D <= 32'b1111; // F
    @(negedge b32_clk);
    if (b32_mode == 2'b11) begin
      b32_mode <= 2'b10;
    end
  end // ~ b32_clk



end // repeat

//////////////////////////////////
  //   checker(ITERATIONS);
//////////////////////////////////

  repeat (ITERATIONS) @ (posedge b32_clk) begin
	  if ((b32_Q == b32_Q_syn) && (b32_rco == b32_rco_syn) && (b32_load == b32_load_syn)) begin
      $fdisplay(log, "PASS");
      end
    else begin
      $fdisplay(log, "Time=%.0f Error! DUT: b32_Q_syn=%d, b32_rco_syn=%b, b32_load_syn=%b, scoreboard: b32_Q=%d, b32_rco=%b, b32_load=%b", $time, b32_Q_syn, b32_rco_syn, b32_load_syn, b32_Q, b32_rco, b32_load);
      end
  end // repeat

  $fdisplay(log, "time=%5d, Test Completed Loading ", $time);
  $fdisplay(log, "time=%5d, Simulation Completed", $time);
  $fclose(log);

  #0 $finish;

end

// For delays and max frequency
realtime time_a, time_b, delta_ab;
initial begin
    time_a = $realtime;
    #1;
    time_b = $realtime;
    #1;
    delta_ab = time_a - time_b;
    $display ("Time_a: %d", time_a);
    $display ("Time_b: %d", time_b);
    $display ("Delta_ab: %d", delta_ab);
end //repeat initial delays and max frequency



// clock logic
initial	b32_clk	 			<= 0;			// Initial value to avoid indeterminations
always	#10 b32_clk				<= ~b32_clk;		// toggle every 10ns



/// INITIAL VALUES 
initial #900 b32_reset <= 0;
initial b32_enable <= 0;
initial b32_mode <= 0;// choose from 00, 01, 10, 11
initial b32_D <= 32'b0000;


endmodule


// Local Variables:
// verilog-library-directories:("."):
// End:
`endif

