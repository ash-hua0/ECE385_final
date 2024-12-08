//Volume Control
// exponential decay must be implemented in C for it to not sound like shit
// do it the stupid way with a loop
// must enable switch reads in c to enable effects like this
module volume (input signed [7:0] signal_in, output logic signed[7:0] signal_out);
    //parameter DECAY = 14'd16383; // RS 2 every 16384 samples
    logic [2:0] shift;
    assign shift = 3'd7;
    assign signal_out = signal_in>>>shift; // arith shift
endmodule
