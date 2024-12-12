`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 10:46:44 PM
// Design Name: 
// Module Name: saved_meas
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
// utilized when sw0 is flipped

module saved_meas( input logic clk,
                    input logic rst,
                    input logic trigger,
                    input logic sw0, // sw0 hi to enable
                    input logic [2:0] octave,
                    input logic [7:0] key0, key1,
                    output logic [7:0] save_out,
                    output logic play
                    );
    parameter BPM = 50_000_000; //120 BPM = 100 MHz/50kHz
    logic [18:0] store[16]; // store 16 notes: 1 keycode (8b) & 1 octave (3b)
    logic wen;
    logic [3:0] index;
    logic [31:0] beat_count;
    logic beat;
    logic [7:0] key0_s, key1_s;
    negedge_detector key0_once [7:0](.clk(clk), .in(key0), .out(key0_s));
    negedge_detector key1_once [7:0](.clk(clk), .in(key1), .out(key1_s));
    // read in keys until reg 15 filled
    // upon fill, play back
    // move to next reg at rate BPM 
    assign beat = (beat_count == 32'd50_000_000);
    
    always_ff @(posedge clk) begin
        if (rst) begin
            index <= 4'b0;
            beat <= 32'b0;
            wen <= 1'b1;
            for (integer i = 0; i < 16; i++) begin
                store[i] <= 0;
            end
        end
        if (key0_s && wen && sw0) begin // fill regs
            if (index == 4'd15) begin
                wen <= 1'b0;
            end
            store[index][7:0] <= key0_s;
            index <= index + 4'b1;
        end
        
        else if (!wen && sw0) begin // play back
            if(beat_count == 32'd50_000_000) begin
                beat_count = 32'b0;
            end
            if (beat) begin 
                index <= index + 4'b1;
            end
            beat_count <= beat_count + 32'b1;

        end
    end
    tonegen savetone(.clk(clk), .rst(rst), .trigger(trigger), .key0(store[index][7:0]), .key1(8'b0), .tone_out(save_out));
endmodule
