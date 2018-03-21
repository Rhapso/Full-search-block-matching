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
    output reg                  serialport
)

reg [19:0]  outputReg;

always @ (clk)
begin
  
end

endmodule