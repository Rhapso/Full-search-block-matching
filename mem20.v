/**************************************************************** 
  ** Title : 20bit output register
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  mem20.v
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
module mem20(
    input                       clk,
    input       [7:0]           coordinate,
    input       [11:0]          mad,
    input                       en_input,
    output reg                  s_out_port
)

reg [19:0]  buffer20;

always @ (clk)
begin
    if(en_input) buffer20 <= {coordinate, mad};
    else buffer20 << 1;
end

always @ (clk)
begin
    s_out_port <= buffer20[19];
end

endmodule