//Volume Control
module volume (input signed [7:0] signal_in, output logic signed[7:0] signal_out);
// need 150-200 samples for exp. decay to not sound bad
    assign signal_out = signal_in >>> 3'd3; // to not get blasted by my headphones
endmodule