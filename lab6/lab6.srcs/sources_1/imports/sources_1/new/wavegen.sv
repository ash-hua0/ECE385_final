//Sine Wave Generator, phase oscillator
module wave_gen ( input clk, input rst, //clock and reset
                        input step, // sampler (48 kHz)
                        output logic [7:0] amp_out); //output phase   
    parameter PHASE_STEP = 32'd23443363; // default 0
    // PHASE_STEP = freq*((2**32)-1)/48000
    logic [31:0] phase; // initialize for desired output freq
    logic [7:0] amp;
    violin_lut violin(.clk(clk), .phase(phase[31 -: 7]), .amp_out(amp));
    assign amp_out = {~amp[7],amp[6:0]};
    
    always_ff @(posedge clk)begin
        if (rst)
        begin
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