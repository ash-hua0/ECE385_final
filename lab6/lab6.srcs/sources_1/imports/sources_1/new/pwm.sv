//PWM generator for audio generation
// this is just an 8-bit counter
// output 1 if the counter is less than amplitude
// duty cycle proportional to output amp
module pwm (input clk, input rst, input [7:0] ampl, output logic pwm_out);
    logic [7:0] counter;
    assign pwm_out = counter<ampl;
    always_ff @(posedge clk)begin
        if (rst) begin
            counter <= 8'b0;
        end 
        else begin
            counter <= counter+8'b1;
        end
    end
endmodule