// this is just an 8-bit counter
// output 1 if the counter is less than amplitude
// works by modulating duty cycle with ampl - similar to FM
module pwm (input logic clk, 
            input logic rst, 
            input logic [7:0] ampl, 
            output logic pwm_out);
    logic [7:0] counter;
    assign pwm_out = counter < ampl;
    always_ff @(posedge clk) begin
        if (rst) begin
            counter <= 8'd0;
        end 
        else begin
            counter <= counter+8'd1;
        end
    end
endmodule