/**************************************************************** 
  ** Title : 4*4*8bit register
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  mem448.v
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
module mem448
#(
    parameter   WORD_WIDETH =   8
)
(
    input                                   clk,
    input       [WORD_WIDETH*4-1:0]         input_raw,
    input                                   en_input,
    input                                   rst_n,
    output reg  [WORD_WIDETH-1:0]           pe_in00,
    output reg  [WORD_WIDETH-1:0]           pe_in01,
    output reg  [WORD_WIDETH-1:0]           pe_in02,
    output reg  [WORD_WIDETH-1:0]           pe_in03,
    output reg  [WORD_WIDETH-1:0]           pe_in04,
    output reg  [WORD_WIDETH-1:0]           pe_in05,
    output reg  [WORD_WIDETH-1:0]           pe_in06,
    output reg  [WORD_WIDETH-1:0]           pe_in07,
    output reg  [WORD_WIDETH-1:0]           pe_in08,
    output reg  [WORD_WIDETH-1:0]           pe_in09,
    output reg  [WORD_WIDETH-1:0]           pe_in10,
    output reg  [WORD_WIDETH-1:0]           pe_in11,
    output reg  [WORD_WIDETH-1:0]           pe_in12,
    output reg  [WORD_WIDETH-1:0]           pe_in13,
    output reg  [WORD_WIDETH-1:0]           pe_in14,
    output reg  [WORD_WIDETH-1:0]           pe_in15
);

reg [1:0]               input_counter;
reg                     en_input_delay;
reg [WORD_WIDETH*4-1:0]   input_raw_delay;

always @ (posedge clk) // dalay for one cycle to prevent too early change the output
begin
    if(rst_n) 
    begin
        en_input_delay <= en_input;
        input_raw_delay <= input_raw;
    end
    else
    begin
        en_input_delay <= 0;
        input_raw_delay <= 32'b0;
    end
end

always @ (posedge clk)
begin
    if(rst_n)
    begin
        input_counter <= en_input_delay ? input_counter + 2'b01 : input_counter;
    end
    else
    begin
        input_counter <= 2'b0;
    end
end
//0
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(en_input_delay && input_counter == 2'b00) {pe_in00, pe_in01, pe_in02, pe_in03} <= input_raw_delay;
        else {pe_in00, pe_in01, pe_in02, pe_in03} <= {pe_in00, pe_in01, pe_in02, pe_in03};
    end
    else
    begin
        {pe_in00, pe_in01, pe_in02, pe_in03} <= 32'b0;
    end
end
//1
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(en_input_delay && input_counter == 2'b01) {pe_in04, pe_in05, pe_in06, pe_in07} <= input_raw_delay;
        else {pe_in04, pe_in05, pe_in06, pe_in07} <= {pe_in04, pe_in05, pe_in06, pe_in07};
    end
    else
    begin
        {pe_in04, pe_in05, pe_in06, pe_in07} <= 32'b0;
    end
end
//2
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(en_input_delay && input_counter == 2'b10) {pe_in08, pe_in09, pe_in10, pe_in11} <= input_raw_delay;
        else {pe_in08, pe_in09, pe_in10, pe_in11} <= {pe_in08, pe_in09, pe_in10, pe_in11};
    end
    else
    begin
        {pe_in08, pe_in09, pe_in10, pe_in11} <= 32'b0;
    end
end
//3
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(en_input_delay && input_counter == 2'b11) {pe_in12, pe_in13, pe_in14, pe_in15} <= input_raw_delay;
        else {pe_in12, pe_in13, pe_in14, pe_in15} <= {pe_in12, pe_in13, pe_in14, pe_in15};
    end
    else
    begin
        {pe_in12, pe_in13, pe_in14, pe_in15} <= 32'b0;
    end
end

endmodule
