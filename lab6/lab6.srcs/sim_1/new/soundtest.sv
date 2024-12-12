`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 04:04:33 PM
// Design Name: 
// Module Name: soundtest
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


module soundtest();
    logic clk;
    logic [31:0] keycode;
    logic rst;
    logic aud_out;
    
    logic trigger;
    logic [10:0] count;
    logic [2:0] octave;
    //logic [15:0] sw;
    logic [7:0] tone_out;
    logic [20:0] samples;
    // clock
    initial begin
        clk = 1;
        samples = 0;
        //sw = 0;
        keycode = 32'h00000008;
        //filter_in = 1;
    end
    always #1 clk = ~clk;
    
    audio_top dut(.clk(clk), 
            .rst(rst), 
            .keycode(keycode), 
//                .trigger(trigger), 
//                .filter_in(filter_in), 
            .aud_out(aud_out));
    
    initial begin
        rst = 1;
        #10
        rst = 0;
    end
    
    assign clk_ver = dut.tone.key1_once[3].clk;        
    assign count = dut.sample_counter;
    assign trigger = dut.trigger;
    assign tone_out = dut.tone.tone_out;
    assign octave = dut.tone.octave;
    
//    logic [7:0] key1;
//    assign key1[3] = dut.tone.key0_once[3].out;
    assign edge_in = dut.tone.key1_once[4].in;
    assign edge_prev = dut.tone.key1_once[4].prev_in;
    assign edge_d = dut.tone.key1_once[4].out_d;
    assign edge_out = dut.tone.key1_once[4].out;
    
    always @(posedge clk) begin
        
//        count <= count + 1;
//        if(count == 6'h3f) begin
//            trigger <= 1;
//        end
        if(trigger) begin
            samples <= samples + 1;
        end
        if (samples == 200) begin
            keycode <= 32'h00005208;
        end
        if(samples == 400) begin
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
