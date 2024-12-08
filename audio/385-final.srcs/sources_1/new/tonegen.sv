module tonegen(
  input logic clk,              // 100MHz system clock
  input logic rst,               // 1 to reset to initial state
  input logic trigger,             // 1 when data is available
  input logic filter_in,            // 1 when using low-pass filter
  output logic signed [7:0] tone_out       // 8-bit PCM data to headphone
); 
    logic [7:0] tone_750;
    logic [7:0] tone_440;
    //generate a 750 Hz tone
    sine_generator  tone750hz (   .clk(clk), .rst(rst), 
                                 .step_in(trigger), .amp_out(tone_750));
    //generate a 440 Hz tone
    // change phase_incr to change output tone! (f*(2^32 -1))/f_s = phase_incr
    sine_generator  #(.PHASE_STEP(32'd39370534)) tone440hz(.clk(clk), .rst(rst), 
                               .step_in(trigger), .amp_out(tone_440));                                                         
    always_ff @(posedge clk)begin
        tone_out = filter_in?tone_440:tone_750; //tristate, 440 if filter_in else 750
    end                            
endmodule