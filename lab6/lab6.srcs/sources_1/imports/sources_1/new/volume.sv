//Volume Control
module volume (input signed [7:0] signal_in, output logic signed[7:0] signal_out);
// need 150-200 samples for exp. decay to not sound bad
    logic [2:0] shift;
    assign shift = 3'd3;
    assign signal_out = signal_in >>>shift;
endmodule