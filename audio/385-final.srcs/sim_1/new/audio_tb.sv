`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:30:46 PM
// Design Name: 
// Module Name: audio_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module audio_tb();

    logic clk;
    //logic [31:0] keycode;
    logic rst;
    logic trigger;
    logic [10:0] count;
    logic filter_in;
    logic [15:0] sw;
    logic aud_out;
    logic signed [7:0] tone_out;
    logic [20:0] samples;
        
    // clock
    initial begin
        clk = 1;
        samples = 0;
        sw = 0;
        //filter_in = 1;
    end
    always #1 clk = ~clk;
    
    audio_top dut(.clk(clk), 
            .btnd(rst), 
            .sw(sw), 
//                .trigger(trigger), 
//                .filter_in(filter_in), 
            .aud_out(aud_out));
    
    initial begin
        rst = 1;
        #10
        rst = 0;
    end
    assign clk_ver = dut.tone.clk;        
    assign count = dut.sample_counter;
    assign trigger = dut.trigger;
    assign tone_out = dut.tone.tone_750;
    
    always @(posedge clk) begin
        
//        count <= count + 1;
//        if(count == 6'h3f) begin
//            trigger <= 1;
//        end
        if(trigger) begin
            samples <= samples + 1;
        end
        if(samples == 200) begin
            $stop;
        end
//        else begin
//            trigger <= 0;
//        end
    end
////    logic [7:0] key0;
////    logic [7:0] key1;
//    logic trigger;
//    logic signed [7:0] tone_out;
//    logic [15:0] sample_counter;
    
////    assign key0 = keycode[7:0];
////    assign key1 = keycode[15:8];
//    assign trigger = audio.trigger;
//    assign tone_out = audio.tone_out;
//    assign sample_counter = audio.sample_counter;
//    // test
//    initial begin: TEST_VECTORS
//        rst <= 1;
//        #16 rst <= 0;
////        #8 keycode <= 32'h00000008;
////        #250000 keycode <= 32'h00005208;
////        #1000 keycode <= 32'h00000008;
//        #240000 $finish;
//    end
    
endmodule

