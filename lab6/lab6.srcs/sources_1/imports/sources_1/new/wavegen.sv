//Sine Wave Generator, phase oscillator
module wave_gen ( input clk, input rst, //clock and reset
                        input step, // sampler (48 kHz)
                        output logic [7:0] amp_out); //output phase   
    parameter PHASE_STEP = 32'23443363; // default middle C (C4)
    // PHASE_STEP = freq*((2**32)-1)/48000
    logic [15:0] divider;
    logic [31:0] phase; // initialize for desired output freq
    logic [15:0] amp;
    sine_lut lut_1(.clk(clk), .phase(phase[31 -: 7]), .amp_out(amp));
    assign amp_out = {~amp[15],amp[14:0]};
    
    always_ff @(posedge clk)begin
        if (rst)
        begin
            divider <= 16'b0;
            phase <= 32'b0;
        end 
        else if (step)
        begin
            phase <= phase+PHASE_STEP;
            // basically what this is doing is taking some samples from the LUT to make a wave
            // these are less than actual freq of the LUT, so the frequency is reconsctructed higher
        end
    end
endmodule