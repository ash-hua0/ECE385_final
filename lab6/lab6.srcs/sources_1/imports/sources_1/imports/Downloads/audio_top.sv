module audio_top(   input clk,
                    input [31:0] keycode,
                    input rst,
                    //output logic [15:0] led,
                    output logic aud_out
    );  
    parameter SAMPLE_MAX = 2082;// 48 kHz sample rate
    
    logic [15:0] sample_counter;
    logic trigger;
    logic [7:0] tone_out;             
    logic [7:0] vol_out;
    logic pwm_val;
    //assign led = sw;
    assign trigger = (sample_counter == SAMPLE_MAX);

    always_ff @(posedge clk)begin
        if (rst) begin
            sample_counter <= 16'b0;
        end
        if (sample_counter == SAMPLE_MAX)begin
            sample_counter <= 16'b0;
        end 
        else begin
            sample_counter <= sample_counter + 16'b1;
        end
    end
 
    tonegen tone( .clk(clk),.rst(rst),
                    .trigger(trigger),
                    .key0(keycode[7:0]),
                    .key1(keycode[15:8]),
                    .tone_out(tone_out));   
                                                                                            
    volume volume (.signal_in(tone_out), .signal_out(vol_out));
    pwm (.clk(clk), .rst(rst), .ampl({~vol_out[7],vol_out[6:0]}), .pwm_out(pwm_val));
    assign aud_out = pwm_val; 
    
endmodule                            