/**************************************************************** 
  ** Title : imginput
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  imginput.v
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
module imginput
(
    input       [21:0] count,
    output reg  [33:0] data
);
// init data[1]
// rst_n data[0]
reg [33:0] mem[4194304:0];

initial
begin
    $readmemb("D:/GitHub/img_flow.txt",mem);
end

always @ (count)
begin
    data <= mem[count];
end

endmodule
