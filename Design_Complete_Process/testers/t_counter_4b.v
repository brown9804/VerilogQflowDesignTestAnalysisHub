
// Belinda Brown Ramírez
// December, 2020
// timna.brown@ucr.ac.cr


`ifndef T_COUNTER_4B
`define T_COUNTER_4B


// The tester module is defined
////////////// Logic
`include "./testers/driver.v"
`include "./testers/checker.v"


// Verifying that the generic structural description works using the automatic
// verifier already built. What is done using the checker and the tester

module t_counter_4b(
//inputs
input 4b_load,
input 4b_rco, //  2^nbits - 1 = #
input [3:0] 4b_Q,

input 4b_load_syn,
input 4b_rco_syn, //  2^nbits - 1 = #
input [3:0] 4b_Q_syn,

//outputs
output reg 4b_enable,
output reg 4b_clk,
output reg 4b_reset,
output reg [1:0] 4b_mode, // choose from 00, 01, 10, 11
output reg [3:0]  4b_D
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


parameter ITERATIONS = 100;
integer log;

initial begin

  $dumpfile("counter_4b.vcd");
  $dumpvars(0);   // "dumpping" variables

  log = $fopen("./log_txt/counter_4b.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time);
  $fdisplay(log, "time=%5d, Starting Reset", $time);

//////// task initial begin

  t_drv_initial();

  $fdisplay(log, "time=%5d, Reset Completed", $time);

  $fdisplay(log, "time=%5d, Starting Test", $time);


  fork
    // t_loading(ITERATIONS);
    t_loading(ITERATIONS);
    checker(ITERATIONS);

  join
  $fdisplay(log, "time=%5d, Test Completed Loading ", $time);
  $fdisplay(log, "time=%5d, Simulation Completed", $time);
  $fclose(log);
  #200 $finish;
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
initial	clk	 			<= 0;			// Initial value to avoid indeterminations
always	#10 clk				<= ~clk;		// toggle every 10ns

endmodule


// Local Variables:
// verilog-library-directories:("."):
// End:
`endif

