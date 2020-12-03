
// Belinda Brown Ramírez
// December, 2020
// timna.brown@ucr.ac.cr


`ifndef T_COUNTER_4B
`define T_COUNTER_4B


// The tester module is defined


// Verifying that the generic structural description works using the automatic
// verifier already built. What is done using the checker and the tester

module t_counter_b4(
//inputs
input wire b4_load,
input wire b4_rco, //  2^nbits - 1 = #
input wire [3:0] b4_Q,

input wire b4_load_syn,
input wire b4_rco_syn, //  2^nbits - 1 = #
input wire [3:0] b4_Q_syn,

//outputs
output reg b4_enable,
output reg b4_clk,
output reg b4_reset,
output reg [1:0] b4_mode, // choose from 00, 01, 10, 11
output reg [3:0]  b4_D
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

/*AUTOWIRE*/
wire wrco, wload;
wire [3:0] wQ;


parameter ITERATIONS = 60;
integer log;

initial begin

  $dumpfile("counter_4b.vcd");
  $dumpvars(0);   // "dumpping" variables

  log = $fopen("./log_txt/counter_b4_tester.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time);
  $fdisplay(log, "time=%5d, Starting Reset", $time);

//// RESET MASTER 
	// Begin test
	repeat (6) begin
	@(posedge b4_clk);
	b4_reset <= 0;
	end

	@(posedge b4_clk) begin
	#5 b4_reset <= 1;
	end

/////////////////////////
////////   t_drv_initial();
//////////////////////////

  repeat (2) begin // 1 0 1  1 0 1
  @(negedge b4_clk);
    b4_reset <= 1;
    b4_enable <= 0;
  @(negedge b4_clk);
    b4_reset <= 0;
    b4_enable <= 0;
  @(negedge b4_clk);
    b4_reset <= 0;
    b4_enable <= 1;
  end // end repeat

  $fdisplay(log, "time=%5d, Reset Completed", $time);

  $fdisplay(log, "time=%5d, Starting Test", $time);

///////////////////////////////////
  //   t_loading(ITERATIONS);
  ///////////////////////////////////
b4_mode <= 2'b11;
repeat (ITERATIONS) begin
  @(negedge b4_clk) begin
    b4_enable <= 1;
    b4_D <= 4'b0001; // 1
    @(negedge b4_clk);
    if (b4_mode == 2'b11) begin
      b4_mode <= 2'b10;
    end
    else begin
      b4_mode <= 2'b00;
    end
  end // ~ b4_clk

  @(negedge b4_clk) begin
    b4_enable <= 1;
    b4_D <= 4'b0010; // 2
    @(negedge b4_clk);
    if (b4_mode == 2'b10) begin
      b4_mode <= 2'b01;
    end
    else begin
      b4_mode <= 2'b10;
    end
  end // ~ b4_clk


  //////// sending 
  @(negedge b4_clk) begin
    b4_enable <= 1;
    b4_D <= 4'b1010; // A
    @(negedge b4_clk);
    if (b4_mode == 2'b11) begin
      b4_mode <= 2'b10;
    end
  end // ~ b4_clk

  //////// sending 
  @(negedge b4_clk) begin
    b4_enable <= 1;
    b4_D <= 4'b1011; // B
    @(negedge b4_clk);
    if (b4_mode == 2'b11) begin
      b4_mode <= 2'b10;
    end
  end // ~ b4_clk

  //////// sending
  @(negedge b4_clk) begin
    b4_enable <= 1;
    b4_D <= 4'b1110; // E
    @(negedge b4_clk);
    if (b4_mode == 2'b11) begin
      b4_mode <= 2'b10;
    end
  end // ~ b4_clk

  @(negedge b4_clk) begin
    b4_enable <= 1;
    b4_D <= 4'b1111; // F
    @(negedge b4_clk);
    if (b4_mode == 2'b11) begin
      b4_mode <= 2'b10;
    end
  end // ~ b4_clk



end // repeat

//////////////////////////////////
  //   checker(ITERATIONS);
//////////////////////////////////

  repeat (ITERATIONS) @ (posedge b4_clk) begin
	  if ((b4_Q == b4_Q_syn) && (b4_rco == b4_rco_syn) && (b4_load == b4_load_syn)) begin
      $fdisplay(log, "PASS");
      end
    else begin
      $fdisplay(log, "Time=%.0f Error! DUT: b4_Q_syn=%d, b4_rco_syn=%b, b4_load_syn=%b, scoreboard: b4_Q=%d, b4_rco=%b, b4_load=%b", $time, b4_Q_syn, b4_rco_syn, b4_load_syn, b4_Q, b4_rco, b4_load);
      end
  end // repeat

  $fdisplay(log, "time=%5d, Test Completed Loading ", $time);
  $fdisplay(log, "time=%5d, Simulation Completed", $time);
  $fclose(log);

  #40 $finish;

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
initial	b4_clk	 			<= 0;			// Initial value to avoid indeterminations
always	#10 b4_clk				<= ~b4_clk;		// toggle every 10ns



/// INITIAL VALUES 
initial #900 b4_reset <= 0;
initial b4_enable <= 0;
initial b4_mode <= 0;// choose from 00, 01, 10, 11
initial b4_D <= 4'b0000;


endmodule


// Local Variables:
// verilog-library-directories:("."):
// End:
`endif

