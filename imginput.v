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
initial

module imginput
(
    input [21:0] count,
    output [33:0] data
);
	reg [33:0] mem[4194304:0];
  $readmemb("D:/SpringSemOfGrade3/DICDesign2018/testingFile/1080p/ME/img_flow.txt",mem);

always @ (count)
begin
    data <= mem[count];
end

endmodule