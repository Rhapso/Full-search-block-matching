/**************************************************************** 
  ** Title : me testbench
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  me_testbench.v
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
`timescale 10ns/1ns
module me_testbench ();

wire                        init;
wire [31:0]                 input_raw;
wire                        rst_n;
wire                        serial20;
wire    [33:0]              data;

reg       [21:0]            count;
reg                         clk;

assign init = data[1];
assign rst_n = data[0];
assign input_raw = data[33:2];

initial
begin
    clk = 0;
    count = 0;
end

always
begin
    #1
    clk <= ~clk;
end

always @ (posedge clk)
begin
    count <= count + 22'b1;
end

me_top #(.WORD_WIDETH(8)) me_top_test(
    .clk(clk),
    .init(init),
    .input_raw(input_raw),
    .rst_n(rst_n),
    .serial20(serial20)
);

imginput imginput(
    .count(count),
    .data(data)
);

endmodule