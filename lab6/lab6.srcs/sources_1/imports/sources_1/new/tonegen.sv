module tonegen(
    input logic clk,
    input logic rst,
    input logic trigger,
    input logic [7:0] key0,
    input logic [7:0] key1,
    output logic signed [7:0] tone_out
); 
    logic [7:0] tone0;
    logic [7:0] tone1;
    logic [7:0] C, Cs, D, Ds, E, F, Fs, G, Gs, A, As, B; // start at oct4 a440
    logic [3:0] octave; // octave 2 to octave 7
    logic [7:0] prev_adj; // previous key for tuning
    
    assign octave = 3'd3; // start at 4
    always_ff @(posedge clk)begin
        if(key0!=prev_adj && key1!=prev_adj) begin // once per keypress
            if (key0==7'd82 || key1==7'd82) begin // up
                prev_adj <= 7'd82;
                octave <= octave + 3'd1;
            end
            else if (key0==7'd81 || key1==7'd81) begin // down
                prev_adj <= 7'd81;
                octave <= octave - 3'd1;
            end
        end
 
        case(key0)
            default: tone0<=7'd0;
            7'd20: tone0<=C; //q
            7'd26: tone0<=Cs; //w
            7'd8: tone0<=D; //e 
            7'd21: tone0<=Ds; //r
            7'd23: tone0<=E; //t
            7'd28: tone0<=F; //y
            7'd24: tone0<=Fs; //u
            7'd12: tone0<=G; //i
            7'd18: tone0<=Gs; //o
            7'd19: tone0<=A; //p
            7'd47: tone0<=As; //[
            7'd48: tone0<=B; //]
        endcase
        
        case(key1)
            default: tone1<=7'd0;
            7'd20: tone1<=C; //q
            7'd26: tone1<=Cs; //w
            7'd8: tone1<=D; //e 
            7'd21: tone1<=Ds; //r
            7'd23: tone1<=E; //t
            7'd28: tone1<=F; //y
            7'd24: tone1<=Fs; //u
            7'd12: tone1<=G; //i
            7'd18: tone1<=Gs; //o
            7'd19: tone1<=A; //p
            7'd47: tone1<=As; //[
            7'd48: tone1<=B; //]
        endcase
    end
    
    wave_gen #(.PHASE_STEP(32'd23443363)) tone262(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(C));                          
    wave_gen #(.PHASE_STEP(32'd24785540)) tone277(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(Cs));
    wave_gen #(.PHASE_STEP(32'd26306674)) tone294(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(D));
    wave_gen #(.PHASE_STEP(32'd27827808)) tone311(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(Ds));
    wave_gen #(.PHASE_STEP(32'd29527900)) tone330(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(E));
    wave_gen #(.PHASE_STEP(32'd31227991)) tone349(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(F));
    wave_gen #(.PHASE_STEP(32'd33107039)) tone370(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(Fs));
    wave_gen #(.PHASE_STEP(32'd35075566)) tone392(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(G));
    wave_gen #(.PHASE_STEP(32'd37133571)) tone415(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(Gs));
    wave_gen #(.PHASE_STEP(32'd39370533)) tone440(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(A));
    wave_gen #(.PHASE_STEP(32'd41696974)) tone466(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(As));
    wave_gen #(.PHASE_STEP(32'd44202371)) tone494(.clk(clk), .rst(rst), .trigger(trigger), .octave(octave), .amp_out(B));                                 
    
    always_ff @(posedge clk)begin
        if (rst) begin
            octave <= 3'd4;
            prev_adj <= 7'd0;
        end
        tone_out = tone0[7:2] + tone1[7:2];
    end                            
endmodule