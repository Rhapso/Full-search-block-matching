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
  parameter   WORD_WIDETH       8
)
(
    input                       clk,
    input                       turnenable,
    input                       rst_n,
    output reg  [3:0]           ctr_word,
    output reg                  mem_en_input,
    output reg                  mem_init_mode
);
reg [4:0]   counter_24;

always @ (posedge clk)
begin
    if(!rst_n && counter_24 != 5'b10111) counter_24 <= counter_24 + 5'b00001;
    else counter_24 <= 5'b0;
end

always @ (posedge clk)
begin
    case(counter_24)
    5'b00000:
    begin
        ctr_word <= 5'b00000;
        mem_en_input <= 1'b0;
        mem_init_mode <= 1'b0;
    end


endmodule