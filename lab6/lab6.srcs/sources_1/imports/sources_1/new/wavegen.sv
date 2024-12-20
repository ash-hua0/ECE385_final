module wave_gen ( input logic clk, 
                    input logic rst,
                    input logic trigger, // 1 on new sample
                    input logic [31:0] phase_step,
                    input logic [2:0] octave, // default 4
                    output logic [7:0] amp_out);
    //parameter PHASE_STEP = 32'd23443363; // default middle c
    logic [31:0] phase;
    logic [7:0] amp;
    logic [31:0] phase_inc;
    //assign phase_inc = PHASE_STEP;
//    logic [3:0] oct;
//    assign oct = octave;
    always_ff @(posedge clk)begin
        if (octave < 3'd4) begin // if <=4
            phase_inc <= phase_step >> (3'd4-octave); // halve to go down 1 octave
        end
        else if (octave > 3'd4) begin
            phase_inc <= phase_step << (octave-3'd4); // double to go up 1 octave
        end
        else begin
            phase_inc <= phase_step;
        end
    end
    piano_lut piano(.clk(clk), .phase(phase[31-:7]), .amp_out(amp));
    assign amp_out = {amp};
    
    always_ff @(posedge clk)begin
        if (rst) begin
            phase <= 32'd0;
            //phase_inc <= 32'b0;
        end 
        else if (trigger)begin
            phase <= phase+phase_inc; // phase oscillating
            // basically what this is doing is taking some samples from the LUT to make a wave
            // these are less than actual freq of the LUT, so the frequency is reconsctructed higher
        end
    end
endmodule