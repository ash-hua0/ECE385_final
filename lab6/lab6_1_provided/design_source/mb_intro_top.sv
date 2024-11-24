`timescale 1ns / 1ps
//mb_intro_top
//
//Replacement block diagram wrapper file and top level for use with ECE 385
//MicroBlaze introduction tutorial. Note that this instances only the block
//design with no additional logic. You will have to modify this for future labs
//to instantate additional logic
//
//Distribution starting with Fall 2023 semester
//modified 7/25/2023 - Zuofu

module mb_intro_top(
    input logic clk,
    input logic [3:0] btn,
    input logic [15:0] sw,
    input logic uart_txd,
    
    output logic [7:0] d0_seg, // hex display
    output logic [3:0] d0_an,
    output logic [7:0] d1_seg,
    output logic [3:0] d1_an,
    output logic [15:0] led,
    output logic uart_rxd
    );
    
    logic [3:0] btn_S; // debounced values
    //logic acc;          // edge detected accumulate
    logic [15:0] sw_S;
    logic [31:0] hex; // placeholder for programmed data
    
  mb_block mb_block
       (.clk_100MHz(clk),
        .gpio_rtl_0_tri_o(led[15:0]),
        .gpio_rtl_3_tri_o(hex[31:0]),  // hold accumulated val for hex
        .gpio_rtl_1_tri_i(sw_S[15:0]),
        .gpio_rtl_2_tri_i(btn_S[1]),  // accumulate
        .reset_rtl_0(~btn_S[0]),      //Note the inversion of the reset button. Buttons are active low, but the MicroBlaze reset is active high
        .uart_rtl_0_rxd(uart_txd),  //Note the switcheroo between RTX and TXD. This is a common source of confusion in embedded development
        .uart_rtl_0_txd(uart_rxd)); //RXD = Received Data, and TXD = Transmitted Data, but whether data is transmitted or received depeneds on the
                                    //perspective. Here, the TXD port means transmitted by the FPGA (but received by the Urbana Board's UART chip)
    
//    negedge_detector run_once ( 
//		.clk	(clk), 
//		.in	    (btn_S[1]), 
//		.out    (acc)
//	);
	
    sync_debounce button_sync [3:0](
        .Clk(clk),
        .d(btn),
        .q(btn_S)
    );
    
    sync_debounce sw_sync [15:0](
        .Clk(clk),
        .d(sw),
        .q(sw_S)
    );
    
    HexDriver Hex1 (
		.clk        (clk),
		.reset      (btn_S[0]),

		.in         ({hex[31:28], hex[27:24], hex[23:20], hex[19:16]}),
		.hex_seg    (d0_seg),
		.hex_grid   (d0_an)
	);
	
    HexDriver Hex2 (
		.clk        (clk),
		.reset      (btn_S[0]),

		.in         ({hex[15:12], hex[11:8], hex[7:4], hex[3:0]}),
		.hex_seg    (d1_seg),
		.hex_grid   (d1_an)
	); 
endmodule
