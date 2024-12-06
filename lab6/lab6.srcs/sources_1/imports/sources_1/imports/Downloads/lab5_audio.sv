module audio(   input clk,
                    input [15:0] sw,
                    input btnc, btnu, btnd, btnr, btnl,
                    output logic [15:0] led,
                    output logic aud_pwm
                    //output logic aud_sd
    );  
    parameter SAMPLE_COUNT = 2082; // clk/counter=sample rate 48 kHz
    parameter BPM = 12500000 // default 120 bpm, div by 4 for 16ths

    logic [15:0] sample_counter;
    //logic [11:0] adc_data;
    //logic [11:0] sampled_adc_data;
    logic sample_trigger;
    //logic enable;
    logic [7:0] recorder_data;             
    logic [15:0] vol_out;
    logic pwm_val; //pwm signal (HI/LO)
    
    //assign aud_sd = 1;
    assign led = sw; //just to look pretty 
    assign sample_trigger = (sample_counter == SAMPLE_COUNT);

//    always_ff @(posedge clk_100mhz)begin
//        if (sample_counter == SAMPLE_COUNT)begin
//            sample_counter <= 16'b0;
//        end else begin
//            sample_counter <= sample_counter + 16'b1;
//        end
//        if (sample_trigger) begin
//            sampled_adc_data <= {~adc_data[11],adc_data[10:0]}; //convert to signed. incoming data is offset binary
//            //https://en.wikipedia.org/wiki/Offset_binary
//        end
//    end
 
    tonegen tone( .clk(clk),.rst(btnd),
                    .ready(sample_trigger),
                    .filter_in(sw[0]),
                    .data_out(recorder_data));   
                                                                                            
    volume_control vc (.vol_in(sw[15:13]),
                       .signal_in(recorder_data), .signal_out(vol_out));
    pwm (.clk_in(clk_100mhz), .rst_in(btnd), .level_in({~vol_out[15],vol_out[14:0]}), .pwm_out(pwm_val));
    assign aud_pwm = pwm_val?1'bZ:1'b0; 
    
endmodule


//Volume Control
module volume_control (input [2:0] vol_in, input signed [15:0] signal_in, output logic signed[15:0] signal_out);
    parameter DECAY = 13'b8192 // RS 2 every 8192 samples
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
  input logic clk,
  input logic rst,
  input logic ready,             // 1 when data is available
  input logic filter_in,            // 1 when using low-pass filter
  //input logic signed [7:0] mic_in,         // 8-bit PCM data from mic
  output logic signed [15:0] data_out       // 8-bit PCM data to headphone
); 
    logic [15:0] tone_750;
    logic [15:0] tone_440;
    //generate a 750 Hz tone
    wave_gen tone750hz (   .clk_in(clk), .rst_in(rst), 
                                 .step_in(ready), .amp_out(tone_750));
    //generate a 440 Hz tone
    // change phase_incr to change output tone! (f*(2^32 -1))/f_s = phase_incr
    wave_gen #(.PHASE_INCR(32'd39370534)) tone440hz(.clk(clk), .rst(rst), 
                               .step(ready), .amp_out(tone_440));                          
    //logic [7:0] data_to_bram;
    //logic [7:0] data_from_bram;
    //logic [15:0] addr;
    //logic wea;
    //  blk_mem_gen_0(.addra(addr), .clka(clk_in), .dina(data_to_bram), .douta(data_from_bram), 
    //                .ena(1), .wea(bram_write));                                  
    
    always_ff @(posedge clk)begin
        data_out = filter_in?tone_440:tone_750; //send tone immediately to output
    end                            
endmodule                              