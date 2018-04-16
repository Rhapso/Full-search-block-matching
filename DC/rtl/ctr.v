/**************************************************************** 
  ** Title : ctr unit
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  ctr.v
  ** Author : fzp
  ** Organization: sjtu
  ** Created :  
  ** Last update : 
  ** Platform : 
  ** Simulators : 
  ** Synthesizers: 
  ** Targets : 
  ** Dependency :  
***************************************************************** 
  ** Description:  
***************************************************************** 
  ** Copyright (c) notice  
*****************************************************************/ 
module ctr
#(
  parameter   WORD_WIDETH =     8
)
(
    input                                   clk,
    input                                   en_init, //need last 73 cycle
    input                                   rst_n,
    input       [WORD_WIDETH*4-1:0]         input_raw,
    output reg  [3:0]                       ctr_word,
    output reg                              mem19198_en_input,
    output reg                              mem448_en_input,
    output reg                              mem20_en_input,
    output reg                              mem_init_mode,
    output reg  [WORD_WIDETH*4-1:0]         input_raw_saved,
    output reg                              en_pe
);
reg [4:0]                   counter_24;
reg [3:0]                   init_counter_8;
reg                         last_en_init_status;
reg                         before_last_en_init_status;

always @ (posedge clk)
begin
    if(rst_n) input_raw_saved <= input_raw;
    else input_raw_saved <= 0;
end

always @ (posedge clk)
begin
    if(rst_n && !en_init && counter_24 != 5'b10111) counter_24 <= counter_24 + 5'b00001;
    else counter_24 <= 5'b0;
end

always @ (posedge clk)
begin
    if(rst_n && en_init && init_counter_8 != 4'b1000) init_counter_8 <= init_counter_8 + 4'b0001;
    else if(rst_n && en_init && init_counter_8 == 4'b1000) init_counter_8 <= init_counter_8;
    else init_counter_8 <= 4'b0;
end

always @ (posedge clk)
begin
    if(rst_n)
    begin
        last_en_init_status <= en_init;
    end
    else
    begin
        last_en_init_status <= 0;
    end
end

always @ (posedge clk)
begin
    if(rst_n)
    begin
        before_last_en_init_status <= last_en_init_status;
    end
    else
    begin
        before_last_en_init_status <= 0;
    end
end

always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(en_init)
        begin
            mem19198_en_input <= 1;
            mem448_en_input <= 0;
            mem_init_mode <= 1;
            case (init_counter_8)
            0:
            begin
                ctr_word <= 4'hf;
                en_pe <= 1;
                mem20_en_input <= 0;
            end
            1:
            begin
                ctr_word <= 4'h0;
                en_pe <= 1;
                mem20_en_input <= 0;
            end
            6: // adjustable
            begin
                ctr_word <= 4'h0;
                en_pe <= 0;
                mem20_en_input <= 1;
            end
            default:
            begin
                ctr_word <= 4'h0;
                en_pe <= 0;
                mem20_en_input <= 0;
            end
            endcase
        end
        else
        begin
            case(counter_24) //certain signal: ctr_word, mem19198_en_input, mem448_en_input, mem_init_mode
            0:
            begin
                if(last_en_init_status) //first cycle
                begin
                    ctr_word <= 4'h0;
                    mem19198_en_input <= 0;
                    mem448_en_input <= 1;
                    mem20_en_input <= 0;
                    mem_init_mode <= 1;
                    en_pe <= 0;
                end
                else
                begin //regular cycle
                    ctr_word <= 4'hf;
                    mem19198_en_input <= 0;
                    mem448_en_input <= 1;
                    mem20_en_input <= 0;
                    mem_init_mode <= 0;
                    en_pe <= 1;
                end
            end
            1:
            begin
                if(before_last_en_init_status) //first cycle
                begin
                    ctr_word <= 4'h0;
                    mem19198_en_input <= 0;
                    mem448_en_input <= 1;
                    mem20_en_input <= 0;
                    mem_init_mode <= 0;
                    en_pe <= 0;
                end
                else
                begin //regular cycle
                    ctr_word <= 4'h0;
                    mem19198_en_input <= 0;
                    mem448_en_input <= 1;
                    mem20_en_input <= 0;
                    mem_init_mode <= 0;
                    en_pe <= 1;
                end
            end
            2:
            begin
                ctr_word <= 4'h0;
                mem19198_en_input <= 0;
                mem448_en_input <= 1;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 0;
            end
            3:
            begin
                ctr_word <= 4'h0;
                mem19198_en_input <= 0;
                mem448_en_input <= 1;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 0;
            end
            4:
            begin
                ctr_word <= 4'h0;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 0;
            end
            5:
            begin
                ctr_word <= 4'h0;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 0;
            end
            6:
            begin
                ctr_word <= 4'h0;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 1; // pipline added in calculate.v
                mem_init_mode <= 0;
                en_pe <= 0;
            end
            7:
            begin
                ctr_word <= 4'h0;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 0;
            end
            8:
            begin
                ctr_word <= 4'h0;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 0;
            end
            9:
            begin
                ctr_word <= 4'h0;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 0;
            end
            10:
            begin
                ctr_word <= 4'h1;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            11:
            begin
                ctr_word <= 4'h2;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            12:
            begin
                ctr_word <= 4'h3;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            13:
            begin
                ctr_word <= 4'h4;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            14:
            begin
                ctr_word <= 4'h5;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            15:
            begin
                ctr_word <= 4'h6;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            16:
            begin
                ctr_word <= 4'h7;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            17:
            begin
                ctr_word <= 4'h8;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            18:
            begin
                ctr_word <= 4'h9;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            19:
            begin
                ctr_word <= 4'ha;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            20:
            begin
                ctr_word <= 4'hb;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            21:
            begin
                ctr_word <= 4'hc;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            22:
            begin
                ctr_word <= 4'hd;
                mem19198_en_input <= 1;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            23:
            begin
                ctr_word <= 4'he;
                mem19198_en_input <= 0;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 1;
            end
            default:
            begin
                ctr_word <= 4'h0;
                mem19198_en_input <= 0;
                mem448_en_input <= 0;
                mem20_en_input <= 0;
                mem_init_mode <= 0;
                en_pe <= 0;
            end
            endcase
        end
    end
    else
    begin
        ctr_word <= 4'h0;
        mem19198_en_input <= 0;
        mem448_en_input <= 0;
        mem20_en_input <= 0;
        mem_init_mode <= 0;
        en_pe <= 0;
    end
end

endmodule
