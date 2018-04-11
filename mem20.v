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
    input                       en_input,
    input                       rst_n,
    input       [19:0]          data_raw,
    output reg                  s_out_port
);

reg [19:0]  buffer20;

always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(en_input) buffer20 <= data_raw;
        else buffer20 <= buffer20 << 1;
    end
    else
    begin
        buffer20 <= 20'b0;
    end
end

always @ (posedge clk)
begin
    s_out_port <= buffer20[19];
end

endmodule
