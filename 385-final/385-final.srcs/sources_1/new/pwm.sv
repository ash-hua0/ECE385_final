//PWM generator for audio generation
// this is just an 8-bit counter
// output 1 if the counter is less than input
// duty cycle proportional to output amp
module pwm (input clk_in, input rst_in, input [7:0] level_in, output logic pwm_out);
    logic [7:0] count; // todo: increase bits for better quality
    assign pwm_out = count<level_in;
    always_ff @(posedge clk_in)begin
        if (rst_in)begin
            count <= 8'b0;
        end else begin
            count <= count+8'b1;
        end
    end
endmodule