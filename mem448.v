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
reg [WORD_WIDETH*4-1:0] mem[0:3];
reg [1:0]               input_counter;

always @ (posedge clk)
begin
    if(rst_n)
    begin
        input_counter <= en_input ? input_counter + 2'b01 : input_counter;
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
        if(en_input && input_counter == 2'b00) mem[0] <= input_raw;
        else mem[0] <= mem[0];
    end
    else
    begin
        mem[0] <= 2'b00;
    end
end
//1
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(en_input && input_counter == 2'b01) mem[1] <= input_raw;
        else mem[1] <= mem[1];
    end
    else
    begin
        mem[1] <= 2'b00;
    end
end
//2
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(en_input && input_counter == 2'b10) mem[2] <= input_raw;
        else mem[2] <= mem[2];
    end
    else
    begin
        mem[2] <= 2'b00;
    end
end
//3
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(en_input && input_counter == 2'b11) mem[3] <= input_raw;
        else mem[3] <= mem[3];
    end
    else
    begin
        mem[3] <= 2'b00;
    end
end

always @ (posedge clk)
begin
    {pe_in00, pe_in01, pe_in02, pe_in03} <= mem[0];
    {pe_in04, pe_in05, pe_in06, pe_in07} <= mem[1];
    {pe_in08, pe_in09, pe_in10, pe_in11} <= mem[2];
    {pe_in12, pe_in13, pe_in14, pe_in15} <= mem[3];
end

endmodule
