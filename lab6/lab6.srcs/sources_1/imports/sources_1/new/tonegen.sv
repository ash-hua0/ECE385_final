module tonegen(
    input logic clk,
    input logic rst,
    input logic trigger,
    input logic [15:0] sw,
    input logic [7:0] key0,
    input logic [7:0] key1,
    output logic [7:0] tone_out
); 
    logic [7:0] tone0;
    logic [7:0] tone1;
    logic [7:0] C, Cs, D, Ds, E, F, Fs, G, Gs, A, As, B; // start at oct4
    logic [2:0] octave; // octave 2 to octave 7
    //logic [7:0] prev_adj; // previous key for tuning
    logic [7:0] key0_s, key1_s;
    
    negedge_detector key0_once [7:0](.clk(clk), .in(key0), .out(key0_s));
    negedge_detector key1_once [7:0](.clk(clk), .in(key1), .out(key1_s));
    //assign octave = 3'd3; // start at 4
    always_ff @(posedge clk) begin
        if (key0_s==8'd82 || key1_s==8'd82) begin // up
            octave <= octave + 3'd1;
        end
        else if (key0_s==8'd81 || key1_s==8'd81) begin // down
            octave <= octave - 3'd1;
        end
    end
//            else begin
//                octave <= 3'd3;
//            end
    always_ff @(posedge clk)begin 
        case(key0)
            default: tone0<=8'd0;
            8'd20: tone0<=C; //q
            8'd26: tone0<=Cs; //w
            8'd8: tone0<=D; //e 
            8'd21: tone0<=Ds; //r
            8'd23: tone0<=E; //t
            8'd28: tone0<=F; //y
            8'd24: tone0<=Fs; //u
            8'd12: tone0<=G; //i
            8'd18: tone0<=Gs; //o
            8'd19: tone0<=A; //p
            8'd47: tone0<=As; //[
            8'd48: tone0<=B; //]
        endcase
        
        case(key1)
            default: tone1<=8'd0;
            8'd20: tone1<=C; //q
            8'd26: tone1<=Cs; //w
            8'd8: tone1<=D; //e 
            8'd21: tone1<=Ds; //r
            8'd23: tone1<=E; //t
            8'd28: tone1<=F; //y
            8'd24: tone1<=Fs; //u
            8'd12: tone1<=G; //i
            8'd18: tone1<=Gs; //o
            8'd19: tone1<=A; //p
            8'd47: tone1<=As; //[
            8'd48: tone1<=B; //]
        endcase
    end
    
    wave_gen tone262(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd23045763), .octave(octave), .amp_out(C));                          
    wave_gen tone277(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd24365177), .octave(octave), .amp_out(Cs));
    wave_gen tone294(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd25860512), .octave(octave), .amp_out(D));
    wave_gen tone311(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd27355848), .octave(octave), .amp_out(Ds));
    wave_gen tone330(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd29027106), .octave(octave), .amp_out(E));
    wave_gen tone349(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd30698364), .octave(octave), .amp_out(F));
    wave_gen tone370(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd32545543), .octave(octave), .amp_out(Fs));
    wave_gen tone392(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd34480684), .octave(octave), .amp_out(G));
    wave_gen tone415(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd36503785), .octave(octave), .amp_out(Gs));
    wave_gen tone440(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd38702808), .octave(octave), .amp_out(A));
    wave_gen tone466(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd40989793), .octave(octave), .amp_out(As));
    wave_gen tone494(.clk(clk), .rst(rst), .trigger(trigger), .phase_step(32'd43452698), .octave(octave), .amp_out(B));                                 
    
    always_ff @(posedge clk)begin
        if (rst) begin
            octave <= 3'd4;
        end
        tone_out = tone0[7:2] + tone1[7:2];
    end                            
endmodule