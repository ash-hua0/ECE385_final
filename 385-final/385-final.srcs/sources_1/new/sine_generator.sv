//Sine Wave Generator, phase oscillator
module sine_generator ( input clk_in, input rst_in, //clock and reset
                        input step_in, // sampler (48 kHz)
                        output logic [7:0] amp_out); //output phase   
    parameter PHASE_INCR = 32'b1000_0000_0000_0000_0000_0000_0000_0000>>5; //1/64th of 48 khz is 750 Hz
    logic [7:0] divider;
    logic [31:0] phase; // initialize for desired output freq
    logic [7:0] amp;
    wavetable lut_1(.clk_in(clk_in), .phase_in(phase[31:26]), .amp_out(amp));
    assign amp_out = {~amp[7],amp[6:0]};
    
    always_ff @(posedge clk_in)begin
        if (rst_in)begin
            divider <= 8'b0;
            phase <= 32'b0;
        end else if (step_in)begin
            phase <= phase+PHASE_INCR; // oscillate phase every sample
            // basically what this is doing is taking some samples from the LUT to make a wave
            // these are less than actual freq of the LUT, so the frequency is reconsctructed higher
        end
    end
endmodule