//`timescale 1ns / 1ps

module audio_top(   input logic clk,
                    input logic [31:0] keycode,
                    input logic rst,
                    input logic [15:0] sw,
                    //output logic [15:0] led,
                    output logic aud_out
    );  
    //parameter SAMPLE_MAX = 12'd2082;// 48 kHz sample rate
    
    logic [10:0] sample_counter;
    logic trigger;
    logic [7:0] tone_out;             
    logic [7:0] vol_out;
    logic pwm_val;
    //assign led = sw;
    assign trigger = (sample_counter == 11'd2046);

    always_ff @(posedge clk) begin
        if (rst) begin
            sample_counter <= 16'd0;
        end
//        if (sample_counter == 12'd2082) begin
//            sample_counter <= 16'd0;
//        end 
        else begin
            sample_counter <= sample_counter + 11'd1;
        end
    end
 
    tonegen tone( .clk(clk),
                    .rst(rst),
                    .trigger(trigger),
                    .sw(sw),
                    .key0(keycode[7:0]),
                    .key1(keycode[15:8]),
                    .tone_out(tone_out));   
                                                                                            
    volume volume (.signal_in(tone_out), .signal_out(vol_out));
    pwm pwm (.clk(clk), .rst(rst), .ampl({vol_out}), .pwm_out(pwm_val));
    assign aud_out = pwm_val; 
    
endmodule                            