//Top level module (should not need to change except to uncomment ADC module)

module top_level(   input clk_100mhz,
                    input [15:0] sw,
                    input btnc, btnu, btnd, btnr, btnl,
                    input vauxp3,
                    input vauxn3,
                    input vn_in,
                    input vp_in,
                    output logic [15:0] led,
                    output logic aud_pwm
                    //output logic aud_sd
    );  
    parameter SAMPLE_COUNT = 2082;//gets approximately (will generate audio at approx 48 kHz sample rate.
    
    logic [15:0] sample_counter;
    logic [11:0] adc_data;
    logic [11:0] sampled_adc_data;
    logic sample_trigger;
    logic adc_ready;
    logic enable;
    logic [7:0] recorder_data;             
    logic [7:0] vol_out;
    logic pwm_val; //pwm signal (HI/LO)
    
    //assign aud_sd = 1;
    assign led = sw; //just to look pretty 
    assign sample_trigger = (sample_counter == SAMPLE_COUNT);

    always_ff @(posedge clk_100mhz)begin
        if (sample_counter == SAMPLE_COUNT)begin
            sample_counter <= 16'b0;
        end else begin
            sample_counter <= sample_counter + 16'b1;
        end
        if (sample_trigger) begin
            sampled_adc_data <= {~adc_data[11],adc_data[10:0]}; //convert to signed. incoming data is offset binary
            //https://en.wikipedia.org/wiki/Offset_binary
        end
    end

    //ADC uncomment when activating!
    //xadc_wiz_0 my_adc ( .dclk_in(clk_100mhz), .daddr_in(8'h13), //read from 0x13 for a
    //                    .vauxn3(vauxn3),.vauxp3(vauxp3),
    //                    .vp_in(1),.vn_in(1),
    //                    .di_in(16'b0),
    //                    .do_out(adc_data),.drdy_out(adc_ready),
    //                    .den_in(1), .dwe_in(0));
 
    tonegen tone( .clk_in(clk_100mhz),.rst_in(btnd),
                    .record_in(btnc),.ready_in(sample_trigger),
                    .filter_in(sw[0]),.mic_in(sampled_adc_data[11:4]),
                    .data_out(recorder_data));   
                                                                                            
    volume_control vc (.vol_in(sw[15:13]),
                       .signal_in(recorder_data), .signal_out(vol_out));
    pwm (.clk_in(clk_100mhz), .rst_in(btnd), .level_in({~vol_out[7],vol_out[6:0]}), .pwm_out(pwm_val));
    assign aud_pwm = pwm_val?1'bZ:1'b0; 
    
endmodule


//Volume Control
module volume_control (input [2:0] vol_in, input signed [7:0] signal_in, output logic signed[7:0] signal_out);
    logic [2:0] shift;
    assign shift = 3'd7 - vol_in;
    assign signal_out = signal_in>>>shift;
endmodule


///////////////////////////////////////////////////////////////////////////////
//
// Record/playback
//
///////////////////////////////////////////////////////////////////////////////


module tonegen(
  input logic clk_in,              // 100MHz system clock
  input logic rst_in,               // 1 to reset to initial state
  input logic record_in,            // 0 for playback, 1 for record
  input logic ready_in,             // 1 when data is available
  input logic filter_in,            // 1 when using low-pass filter
  input logic signed [7:0] mic_in,         // 8-bit PCM data from mic
  output logic signed [7:0] data_out       // 8-bit PCM data to headphone
); 
    logic [7:0] tone_750;
    logic [7:0] tone_440;
    //generate a 750 Hz tone
    sine_generator  tone750hz (   .clk_in(clk_in), .rst_in(rst_in), 
                                 .step_in(ready_in), .amp_out(tone_750));
    //generate a 440 Hz tone
    // change phase_incr to change output tone! (f*(2^32 -1))/f_s = phase_incr
    sine_generator  #(.PHASE_INCR(32'd39370534)) tone440hz(.clk_in(clk_in), .rst_in(rst_in), 
                               .step_in(ready_in), .amp_out(tone_440));                          
    //logic [7:0] data_to_bram;
    //logic [7:0] data_from_bram;
    //logic [15:0] addr;
    //logic wea;
    //  blk_mem_gen_0(.addra(addr), .clka(clk_in), .dina(data_to_bram), .douta(data_from_bram), 
    //                .ena(1), .wea(bram_write));                                  
    
    always_ff @(posedge clk_in)begin
        data_out = filter_in?tone_440:tone_750; //send tone immediately to output
    end                            
endmodule                              