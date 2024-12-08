//Sine Wave Generator, phase oscillator
module wave_gen ( input clk, 
                    input rst,
                    input trigger, // 1 on new sample
                    input signed [3:0] octave_adj, // default 0
                    output logic [7:0] amp_out);
    parameter PHASE_STEP = 32'd23443363; // default middle c
    logic [31:0] phase;
    logic [7:0] amp;
    logic [31:0] phase_inc;
    always_comb begin
        if (octave_adj[7]) begin // if negative
            phase_inc = PHASE_STEP >> (octave_adj*2); // halve to go down 1 octave
        end
        else begin
            phase_inc = PHASE_STEP << (octave_adj*2); // double to go up 1 octave
        end
    end
    piano_lut piano(.clk(clk), .phase(phase[31-:7]), .amp_out(amp));
    assign amp_out = {~amp[7],amp[6:0]};
    
    always_ff @(posedge clk)begin
        if (rst)begin
            phase <= 32'b0;
            phase_inc <= 32'b0;
        end else if (trigger)begin
            phase <= phase+phase_inc; // phase oscillating
            // basically what this is doing is taking some samples from the LUT to make a wave
            // these are less than actual freq of the LUT, so the frequency is reconsctructed higher
        end
    end
endmodule