/**************************************************************** 
  ** Title : calculate unit
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  calculate.v
  ** Author : yangbo fzp
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
module calculate(
	input clk,
	input enable,
	input rst_n,
	input [3:0] ctr_word,
	
	input [7:0] a00_pe00,
	input [7:0] a01_pe00,
	input [7:0] a02_pe00,
	input [7:0] a03_pe00,
	input [7:0] a10_pe00,
	input [7:0] a11_pe00,
	input [7:0] a12_pe00,
	input [7:0] a13_pe00,
	input [7:0] a20_pe00,
	input [7:0] a21_pe00,
	input [7:0] a22_pe00,
	input [7:0] a23_pe00,
	input [7:0] a30_pe00,
	input [7:0] a31_pe00,
	input [7:0] a32_pe00,
	input [7:0] a33_pe00,
	
	input [7:0] a00_pe01,
	input [7:0] a01_pe01,
	input [7:0] a02_pe01,
	input [7:0] a03_pe01,
	input [7:0] a10_pe01,
	input [7:0] a11_pe01,
	input [7:0] a12_pe01,
	input [7:0] a13_pe01,
	input [7:0] a20_pe01,
	input [7:0] a21_pe01,
	input [7:0] a22_pe01,
	input [7:0] a23_pe01,
	input [7:0] a30_pe01,
	input [7:0] a31_pe01,
	input [7:0] a32_pe01,
	input [7:0] a33_pe01,

	input [7:0] a00_pe02,
	input [7:0] a01_pe02,
	input [7:0] a02_pe02,
	input [7:0] a03_pe02,
	input [7:0] a10_pe02,
	input [7:0] a11_pe02,
	input [7:0] a12_pe02,
	input [7:0] a13_pe02,
	input [7:0] a20_pe02,
	input [7:0] a21_pe02,
	input [7:0] a22_pe02,
	input [7:0] a23_pe02,
	input [7:0] a30_pe02,
	input [7:0] a31_pe02,
	input [7:0] a32_pe02,
	input [7:0] a33_pe02,
	
	input [7:0] a00_pe03,
	input [7:0] a01_pe03,
	input [7:0] a02_pe03,
	input [7:0] a03_pe03,
	input [7:0] a10_pe03,
	input [7:0] a11_pe03,
	input [7:0] a12_pe03,
	input [7:0] a13_pe03,
	input [7:0] a20_pe03,
	input [7:0] a21_pe03,
	input [7:0] a22_pe03,
	input [7:0] a23_pe03,
	input [7:0] a30_pe03,
	input [7:0] a31_pe03,
	input [7:0] a32_pe03,
	input [7:0] a33_pe03,
	
	input [7:0] a00_pe04,
	input [7:0] a01_pe04,
	input [7:0] a02_pe04,
	input [7:0] a03_pe04,
	input [7:0] a10_pe04,
	input [7:0] a11_pe04,
	input [7:0] a12_pe04,
	input [7:0] a13_pe04,
	input [7:0] a20_pe04,
	input [7:0] a21_pe04,
	input [7:0] a22_pe04,
	input [7:0] a23_pe04,
	input [7:0] a30_pe04,
	input [7:0] a31_pe04,
	input [7:0] a32_pe04,
	input [7:0] a33_pe04,
	
	input [7:0] a00_pe05,
	input [7:0] a01_pe05,
	input [7:0] a02_pe05,
	input [7:0] a03_pe05,
	input [7:0] a10_pe05,
	input [7:0] a11_pe05,
	input [7:0] a12_pe05,
	input [7:0] a13_pe05,
	input [7:0] a20_pe05,
	input [7:0] a21_pe05,
	input [7:0] a22_pe05,
	input [7:0] a23_pe05,
	input [7:0] a30_pe05,
	input [7:0] a31_pe05,
	input [7:0] a32_pe05,
	input [7:0] a33_pe05,
	
	input [7:0] a00_pe06,
	input [7:0] a01_pe06,
	input [7:0] a02_pe06,
	input [7:0] a03_pe06,
	input [7:0] a10_pe06,
	input [7:0] a11_pe06,
	input [7:0] a12_pe06,
	input [7:0] a13_pe06,
	input [7:0] a20_pe06,
	input [7:0] a21_pe06,
	input [7:0] a22_pe06,
	input [7:0] a23_pe06,
	input [7:0] a30_pe06,
	input [7:0] a31_pe06,
	input [7:0] a32_pe06,
	input [7:0] a33_pe06,
	
	input [7:0] a00_pe07,
	input [7:0] a01_pe07,
	input [7:0] a02_pe07,
	input [7:0] a03_pe07,
	input [7:0] a10_pe07,
	input [7:0] a11_pe07,
	input [7:0] a12_pe07,
	input [7:0] a13_pe07,
	input [7:0] a20_pe07,
	input [7:0] a21_pe07,
	input [7:0] a22_pe07,
	input [7:0] a23_pe07,
	input [7:0] a30_pe07,
	input [7:0] a31_pe07,
	input [7:0] a32_pe07,
	input [7:0] a33_pe07,
	
	input [7:0] a00_pe08,
	input [7:0] a01_pe08,
	input [7:0] a02_pe08,
	input [7:0] a03_pe08,
	input [7:0] a10_pe08,
	input [7:0] a11_pe08,
	input [7:0] a12_pe08,
	input [7:0] a13_pe08,
	input [7:0] a20_pe08,
	input [7:0] a21_pe08,
	input [7:0] a22_pe08,
	input [7:0] a23_pe08,
	input [7:0] a30_pe08,
	input [7:0] a31_pe08,
	input [7:0] a32_pe08,
	input [7:0] a33_pe08,
	
	input [7:0] a00_pe09,
	input [7:0] a01_pe09,
	input [7:0] a02_pe09,
	input [7:0] a03_pe09,
	input [7:0] a10_pe09,
	input [7:0] a11_pe09,
	input [7:0] a12_pe09,
	input [7:0] a13_pe09,
	input [7:0] a20_pe09,
	input [7:0] a21_pe09,
	input [7:0] a22_pe09,
	input [7:0] a23_pe09,
	input [7:0] a30_pe09,
	input [7:0] a31_pe09,
	input [7:0] a32_pe09,
	input [7:0] a33_pe09,
	
	input [7:0] a00_pe10,
	input [7:0] a01_pe10,
	input [7:0] a02_pe10,
	input [7:0] a03_pe10,
	input [7:0] a10_pe10,
	input [7:0] a11_pe10,
	input [7:0] a12_pe10,
	input [7:0] a13_pe10,
	input [7:0] a20_pe10,
	input [7:0] a21_pe10,
	input [7:0] a22_pe10,
	input [7:0] a23_pe10,
	input [7:0] a30_pe10,
	input [7:0] a31_pe10,
	input [7:0] a32_pe10,
	input [7:0] a33_pe10,
	
	input [7:0] a00_pe11,
	input [7:0] a01_pe11,
	input [7:0] a02_pe11,
	input [7:0] a03_pe11,
	input [7:0] a10_pe11,
	input [7:0] a11_pe11,
	input [7:0] a12_pe11,
	input [7:0] a13_pe11,
	input [7:0] a20_pe11,
	input [7:0] a21_pe11,
	input [7:0] a22_pe11,
	input [7:0] a23_pe11,
	input [7:0] a30_pe11,
	input [7:0] a31_pe11,
	input [7:0] a32_pe11,
	input [7:0] a33_pe11,
	
	input [7:0] a00_pe12,
	input [7:0] a01_pe12,
	input [7:0] a02_pe12,
	input [7:0] a03_pe12,
	input [7:0] a10_pe12,
	input [7:0] a11_pe12,
	input [7:0] a12_pe12,
	input [7:0] a13_pe12,
	input [7:0] a20_pe12,
	input [7:0] a21_pe12,
	input [7:0] a22_pe12,
	input [7:0] a23_pe12,
	input [7:0] a30_pe12,
	input [7:0] a31_pe12,
	input [7:0] a32_pe12,
	input [7:0] a33_pe12,
	
	input [7:0] a00_pe13,
	input [7:0] a01_pe13,
	input [7:0] a02_pe13,
	input [7:0] a03_pe13,
	input [7:0] a10_pe13,
	input [7:0] a11_pe13,
	input [7:0] a12_pe13,
	input [7:0] a13_pe13,
	input [7:0] a20_pe13,
	input [7:0] a21_pe13,
	input [7:0] a22_pe13,
	input [7:0] a23_pe13,
	input [7:0] a30_pe13,
	input [7:0] a31_pe13,
	input [7:0] a32_pe13,
	input [7:0] a33_pe13,
	
	input [7:0] a00_pe14,
	input [7:0] a01_pe14,
	input [7:0] a02_pe14,
	input [7:0] a03_pe14,
	input [7:0] a10_pe14,
	input [7:0] a11_pe14,
	input [7:0] a12_pe14,
	input [7:0] a13_pe14,
	input [7:0] a20_pe14,
	input [7:0] a21_pe14,
	input [7:0] a22_pe14,
	input [7:0] a23_pe14,
	input [7:0] a30_pe14,
	input [7:0] a31_pe14,
	input [7:0] a32_pe14,
	input [7:0] a33_pe14,
	
	input [7:0] a00_pe15,
	input [7:0] a01_pe15,
	input [7:0] a02_pe15,
	input [7:0] a03_pe15,
	input [7:0] a10_pe15,
	input [7:0] a11_pe15,
	input [7:0] a12_pe15,
	input [7:0] a13_pe15,
	input [7:0] a20_pe15,
	input [7:0] a21_pe15,
	input [7:0] a22_pe15,
	input [7:0] a23_pe15,
	input [7:0] a30_pe15,
	input [7:0] a31_pe15,
	input [7:0] a32_pe15,
	input [7:0] a33_pe15,
	
	input [7:0] b00_pe00,
	input [7:0] b01_pe00,
	input [7:0] b02_pe00,
	input [7:0] b03_pe00,
	input [7:0] b10_pe00,
	input [7:0] b11_pe00,
	input [7:0] b12_pe00,
	input [7:0] b13_pe00,
	input [7:0] b20_pe00,
	input [7:0] b21_pe00,
	input [7:0] b22_pe00,
	input [7:0] b23_pe00,
	input [7:0] b30_pe00,
	input [7:0] b31_pe00,
	input [7:0] b32_pe00,
	input [7:0] b33_pe00,
	
	input [7:0] b00_pe01,
	input [7:0] b01_pe01,
	input [7:0] b02_pe01,
	input [7:0] b03_pe01,
	input [7:0] b10_pe01,
	input [7:0] b11_pe01,
	input [7:0] b12_pe01,
	input [7:0] b13_pe01,
	input [7:0] b20_pe01,
	input [7:0] b21_pe01,
	input [7:0] b22_pe01,
	input [7:0] b23_pe01,
	input [7:0] b30_pe01,
	input [7:0] b31_pe01,
	input [7:0] b32_pe01,
	input [7:0] b33_pe01,

	input [7:0] b00_pe02,
	input [7:0] b01_pe02,
	input [7:0] b02_pe02,
	input [7:0] b03_pe02,
	input [7:0] b10_pe02,
	input [7:0] b11_pe02,
	input [7:0] b12_pe02,
	input [7:0] b13_pe02,
	input [7:0] b20_pe02,
	input [7:0] b21_pe02,
	input [7:0] b22_pe02,
	input [7:0] b23_pe02,
	input [7:0] b30_pe02,
	input [7:0] b31_pe02,
	input [7:0] b32_pe02,
	input [7:0] b33_pe02,
	
	input [7:0] b00_pe03,
	input [7:0] b01_pe03,
	input [7:0] b02_pe03,
	input [7:0] b03_pe03,
	input [7:0] b10_pe03,
	input [7:0] b11_pe03,
	input [7:0] b12_pe03,
	input [7:0] b13_pe03,
	input [7:0] b20_pe03,
	input [7:0] b21_pe03,
	input [7:0] b22_pe03,
	input [7:0] b23_pe03,
	input [7:0] b30_pe03,
	input [7:0] b31_pe03,
	input [7:0] b32_pe03,
	input [7:0] b33_pe03,
	
	input [7:0] b00_pe04,
	input [7:0] b01_pe04,
	input [7:0] b02_pe04,
	input [7:0] b03_pe04,
	input [7:0] b10_pe04,
	input [7:0] b11_pe04,
	input [7:0] b12_pe04,
	input [7:0] b13_pe04,
	input [7:0] b20_pe04,
	input [7:0] b21_pe04,
	input [7:0] b22_pe04,
	input [7:0] b23_pe04,
	input [7:0] b30_pe04,
	input [7:0] b31_pe04,
	input [7:0] b32_pe04,
	input [7:0] b33_pe04,
	
	input [7:0] b00_pe05,
	input [7:0] b01_pe05,
	input [7:0] b02_pe05,
	input [7:0] b03_pe05,
	input [7:0] b10_pe05,
	input [7:0] b11_pe05,
	input [7:0] b12_pe05,
	input [7:0] b13_pe05,
	input [7:0] b20_pe05,
	input [7:0] b21_pe05,
	input [7:0] b22_pe05,
	input [7:0] b23_pe05,
	input [7:0] b30_pe05,
	input [7:0] b31_pe05,
	input [7:0] b32_pe05,
	input [7:0] b33_pe05,
	
	input [7:0] b00_pe06,
	input [7:0] b01_pe06,
	input [7:0] b02_pe06,
	input [7:0] b03_pe06,
	input [7:0] b10_pe06,
	input [7:0] b11_pe06,
	input [7:0] b12_pe06,
	input [7:0] b13_pe06,
	input [7:0] b20_pe06,
	input [7:0] b21_pe06,
	input [7:0] b22_pe06,
	input [7:0] b23_pe06,
	input [7:0] b30_pe06,
	input [7:0] b31_pe06,
	input [7:0] b32_pe06,
	input [7:0] b33_pe06,
	
	input [7:0] b00_pe07,
	input [7:0] b01_pe07,
	input [7:0] b02_pe07,
	input [7:0] b03_pe07,
	input [7:0] b10_pe07,
	input [7:0] b11_pe07,
	input [7:0] b12_pe07,
	input [7:0] b13_pe07,
	input [7:0] b20_pe07,
	input [7:0] b21_pe07,
	input [7:0] b22_pe07,
	input [7:0] b23_pe07,
	input [7:0] b30_pe07,
	input [7:0] b31_pe07,
	input [7:0] b32_pe07,
	input [7:0] b33_pe07,
	
	input [7:0] b00_pe08,
	input [7:0] b01_pe08,
	input [7:0] b02_pe08,
	input [7:0] b03_pe08,
	input [7:0] b10_pe08,
	input [7:0] b11_pe08,
	input [7:0] b12_pe08,
	input [7:0] b13_pe08,
	input [7:0] b20_pe08,
	input [7:0] b21_pe08,
	input [7:0] b22_pe08,
	input [7:0] b23_pe08,
	input [7:0] b30_pe08,
	input [7:0] b31_pe08,
	input [7:0] b32_pe08,
	input [7:0] b33_pe08,
	
	input [7:0] b00_pe09,
	input [7:0] b01_pe09,
	input [7:0] b02_pe09,
	input [7:0] b03_pe09,
	input [7:0] b10_pe09,
	input [7:0] b11_pe09,
	input [7:0] b12_pe09,
	input [7:0] b13_pe09,
	input [7:0] b20_pe09,
	input [7:0] b21_pe09,
	input [7:0] b22_pe09,
	input [7:0] b23_pe09,
	input [7:0] b30_pe09,
	input [7:0] b31_pe09,
	input [7:0] b32_pe09,
	input [7:0] b33_pe09,
	
	input [7:0] b00_pe10,
	input [7:0] b01_pe10,
	input [7:0] b02_pe10,
	input [7:0] b03_pe10,
	input [7:0] b10_pe10,
	input [7:0] b11_pe10,
	input [7:0] b12_pe10,
	input [7:0] b13_pe10,
	input [7:0] b20_pe10,
	input [7:0] b21_pe10,
	input [7:0] b22_pe10,
	input [7:0] b23_pe10,
	input [7:0] b30_pe10,
	input [7:0] b31_pe10,
	input [7:0] b32_pe10,
	input [7:0] b33_pe10,
	
	input [7:0] b00_pe11,
	input [7:0] b01_pe11,
	input [7:0] b02_pe11,
	input [7:0] b03_pe11,
	input [7:0] b10_pe11,
	input [7:0] b11_pe11,
	input [7:0] b12_pe11,
	input [7:0] b13_pe11,
	input [7:0] b20_pe11,
	input [7:0] b21_pe11,
	input [7:0] b22_pe11,
	input [7:0] b23_pe11,
	input [7:0] b30_pe11,
	input [7:0] b31_pe11,
	input [7:0] b32_pe11,
	input [7:0] b33_pe11,
	
	input [7:0] b00_pe12,
	input [7:0] b01_pe12,
	input [7:0] b02_pe12,
	input [7:0] b03_pe12,
	input [7:0] b10_pe12,
	input [7:0] b11_pe12,
	input [7:0] b12_pe12,
	input [7:0] b13_pe12,
	input [7:0] b20_pe12,
	input [7:0] b21_pe12,
	input [7:0] b22_pe12,
	input [7:0] b23_pe12,
	input [7:0] b30_pe12,
	input [7:0] b31_pe12,
	input [7:0] b32_pe12,
	input [7:0] b33_pe12,
	
	input [7:0] b00_pe13,
	input [7:0] b01_pe13,
	input [7:0] b02_pe13,
	input [7:0] b03_pe13,
	input [7:0] b10_pe13,
	input [7:0] b11_pe13,
	input [7:0] b12_pe13,
	input [7:0] b13_pe13,
	input [7:0] b20_pe13,
	input [7:0] b21_pe13,
	input [7:0] b22_pe13,
	input [7:0] b23_pe13,
	input [7:0] b30_pe13,
	input [7:0] b31_pe13,
	input [7:0] b32_pe13,
	input [7:0] b33_pe13,
	
	input [7:0] b00_pe14,
	input [7:0] b01_pe14,
	input [7:0] b02_pe14,
	input [7:0] b03_pe14,
	input [7:0] b10_pe14,
	input [7:0] b11_pe14,
	input [7:0] b12_pe14,
	input [7:0] b13_pe14,
	input [7:0] b20_pe14,
	input [7:0] b21_pe14,
	input [7:0] b22_pe14,
	input [7:0] b23_pe14,
	input [7:0] b30_pe14,
	input [7:0] b31_pe14,
	input [7:0] b32_pe14,
	input [7:0] b33_pe14,
	
	input [7:0] b00_pe15,
	input [7:0] b01_pe15,
	input [7:0] b02_pe15,
	input [7:0] b03_pe15,
	input [7:0] b10_pe15,
	input [7:0] b11_pe15,
	input [7:0] b12_pe15,
	input [7:0] b13_pe15,
	input [7:0] b20_pe15,
	input [7:0] b21_pe15,
	input [7:0] b22_pe15,
	input [7:0] b23_pe15,
	input [7:0] b30_pe15,
	input [7:0] b31_pe15,
	input [7:0] b32_pe15,
	input [7:0] b33_pe15,
	
	output reg [19:0] out
);

wire [11:0] sum_pe00;
wire [11:0] sum_pe01;
wire [11:0] sum_pe02;
wire [11:0] sum_pe03;
wire [11:0] sum_pe04;
wire [11:0] sum_pe05;
wire [11:0] sum_pe06;
wire [11:0] sum_pe07;
wire [11:0] sum_pe08;
wire [11:0] sum_pe09;
wire [11:0] sum_pe10;
wire [11:0] sum_pe11;
wire [11:0] sum_pe12;
wire [11:0] sum_pe13;
wire [11:0] sum_pe14;
wire [11:0] sum_pe15;
wire [19:0] compare_out;

reg enable0;
reg enable1;
reg enable2;
reg [3:0] ctr_word_delay0;
reg [3:0] ctr_word_delay1;

always @ (posedge clk)
begin
	if(rst_n) enable0 <= enable;
	else enable0 <= 0;
end

always @ (posedge clk)
begin
	if(rst_n) enable1 <= enable0;
	else enable1 <= 0;
end

always @ (posedge clk)
begin
	if(rst_n) enable2 <= enable1;
	else enable2 <= 0;
end

always @ (posedge clk)
begin
	if(rst_n) ctr_word_delay0 <= ctr_word;
	else ctr_word_delay0 <= 0;
end

always @ (posedge clk)
begin
	if(rst_n) ctr_word_delay1 <= ctr_word_delay0;
	else ctr_word_delay1 <= 0;
end

always @ (posedge clk)
begin
	if(rst_n) ctr_word_delay2 <= ctr_word_delay1;
	else ctr_word_delay2 <= 0;
end

always @ (posedge clk)
begin
	if(rst_n) ctr_word_delay3 <= ctr_word_delay2;
	else ctr_word_delay3 <= 0;
end

PE PE00(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe00),
		.a00(a00_pe00), .a01(a01_pe00), .a02(a02_pe00), .a03(a03_pe00),
		.a10(a10_pe00), .a11(a11_pe00), .a12(a12_pe00), .a13(a13_pe00),
		.a20(a20_pe00), .a21(a21_pe00), .a22(a22_pe00), .a23(a23_pe00),
		.a30(a30_pe00), .a31(a31_pe00), .a32(a32_pe00), .a33(a33_pe00),
		.b00(b00_pe00), .b01(b01_pe00), .b02(b02_pe00), .b03(b03_pe00),
		.b10(b10_pe00), .b11(b11_pe00), .b12(b12_pe00), .b13(b13_pe00),
		.b20(b20_pe00), .b21(b21_pe00), .b22(b22_pe00), .b23(b23_pe00),
		.b30(b30_pe00), .b31(b31_pe00), .b32(b32_pe00), .b33(b33_pe00));

PE PE01(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe01),
		.a00(a00_pe01), .a01(a01_pe01), .a02(a02_pe01), .a03(a03_pe01),
		.a10(a10_pe01), .a11(a11_pe01), .a12(a12_pe01), .a13(a13_pe01),
		.a20(a20_pe01), .a21(a21_pe01), .a22(a22_pe01), .a23(a23_pe01),
		.a30(a30_pe01), .a31(a31_pe01), .a32(a32_pe01), .a33(a33_pe01),
		.b00(b00_pe01), .b01(b01_pe01), .b02(b02_pe01), .b03(b03_pe01),
		.b10(b10_pe01), .b11(b11_pe01), .b12(b12_pe01), .b13(b13_pe01),
		.b20(b20_pe01), .b21(b21_pe01), .b22(b22_pe01), .b23(b23_pe01),
		.b30(b30_pe01), .b31(b31_pe01), .b32(b32_pe01), .b33(b33_pe01));

PE PE02(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe02),
		.a00(a00_pe02), .a01(a01_pe02), .a02(a02_pe02), .a03(a03_pe02),
		.a10(a10_pe02), .a11(a11_pe02), .a12(a12_pe02), .a13(a13_pe02),
		.a20(a20_pe02), .a21(a21_pe02), .a22(a22_pe02), .a23(a23_pe02),
		.a30(a30_pe02), .a31(a31_pe02), .a32(a32_pe02), .a33(a33_pe02),
		.b00(b00_pe02), .b01(b01_pe02), .b02(b02_pe02), .b03(b03_pe02),
		.b10(b10_pe02), .b11(b11_pe02), .b12(b12_pe02), .b13(b13_pe02),
		.b20(b20_pe02), .b21(b21_pe02), .b22(b22_pe02), .b23(b23_pe02),
		.b30(b30_pe02), .b31(b31_pe02), .b32(b32_pe02), .b33(b33_pe02));

PE PE03(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe03),
		.a00(a00_pe03), .a01(a01_pe03), .a02(a02_pe03), .a03(a03_pe03),
		.a10(a10_pe03), .a11(a11_pe03), .a12(a12_pe03), .a13(a13_pe03),
		.a20(a20_pe03), .a21(a21_pe03), .a22(a22_pe03), .a23(a23_pe03),
		.a30(a30_pe03), .a31(a31_pe03), .a32(a32_pe03), .a33(a33_pe03),
		.b00(b00_pe03), .b01(b01_pe03), .b02(b02_pe03), .b03(b03_pe03),
		.b10(b10_pe03), .b11(b11_pe03), .b12(b12_pe03), .b13(b13_pe03),
		.b20(b20_pe03), .b21(b21_pe03), .b22(b22_pe03), .b23(b23_pe03),
		.b30(b30_pe03), .b31(b31_pe03), .b32(b32_pe03), .b33(b33_pe03));

PE PE04(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe04),
		.a00(a00_pe04), .a01(a01_pe04), .a02(a02_pe04), .a03(a03_pe04),
		.a10(a10_pe04), .a11(a11_pe04), .a12(a12_pe04), .a13(a13_pe04),
		.a20(a20_pe04), .a21(a21_pe04), .a22(a22_pe04), .a23(a23_pe04),
		.a30(a30_pe04), .a31(a31_pe04), .a32(a32_pe04), .a33(a33_pe04),
		.b00(b00_pe04), .b01(b01_pe04), .b02(b02_pe04), .b03(b03_pe04),
		.b10(b10_pe04), .b11(b11_pe04), .b12(b12_pe04), .b13(b13_pe04),
		.b20(b20_pe04), .b21(b21_pe04), .b22(b22_pe04), .b23(b23_pe04),
		.b30(b30_pe04), .b31(b31_pe04), .b32(b32_pe04), .b33(b33_pe04));

PE PE05(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe05),
		.a00(a00_pe05), .a01(a01_pe05), .a02(a02_pe05), .a03(a03_pe05),
		.a10(a10_pe05), .a11(a11_pe05), .a12(a12_pe05), .a13(a13_pe05),
		.a20(a20_pe05), .a21(a21_pe05), .a22(a22_pe05), .a23(a23_pe05),
		.a30(a30_pe05), .a31(a31_pe05), .a32(a32_pe05), .a33(a33_pe05),
		.b00(b00_pe05), .b01(b01_pe05), .b02(b02_pe05), .b03(b03_pe05),
		.b10(b10_pe05), .b11(b11_pe05), .b12(b12_pe05), .b13(b13_pe05),
		.b20(b20_pe05), .b21(b21_pe05), .b22(b22_pe05), .b23(b23_pe05),
		.b30(b30_pe05), .b31(b31_pe05), .b32(b32_pe05), .b33(b33_pe05));

PE PE06(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe06),
		.a00(a00_pe06), .a01(a01_pe06), .a02(a02_pe06), .a03(a03_pe06),
		.a10(a10_pe06), .a11(a11_pe06), .a12(a12_pe06), .a13(a13_pe06),
		.a20(a20_pe06), .a21(a21_pe06), .a22(a22_pe06), .a23(a23_pe06),
		.a30(a30_pe06), .a31(a31_pe06), .a32(a32_pe06), .a33(a33_pe06),
		.b00(b00_pe06), .b01(b01_pe06), .b02(b02_pe06), .b03(b03_pe06),
		.b10(b10_pe06), .b11(b11_pe06), .b12(b12_pe06), .b13(b13_pe06),
		.b20(b20_pe06), .b21(b21_pe06), .b22(b22_pe06), .b23(b23_pe06),
		.b30(b30_pe06), .b31(b31_pe06), .b32(b32_pe06), .b33(b33_pe06));

PE PE07(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe07),
		.a00(a00_pe07), .a01(a01_pe07), .a02(a02_pe07), .a03(a03_pe07),
		.a10(a10_pe07), .a11(a11_pe07), .a12(a12_pe07), .a13(a13_pe07),
		.a20(a20_pe07), .a21(a21_pe07), .a22(a22_pe07), .a23(a23_pe07),
		.a30(a30_pe07), .a31(a31_pe07), .a32(a32_pe07), .a33(a33_pe07),
		.b00(b00_pe07), .b01(b01_pe07), .b02(b02_pe07), .b03(b03_pe07),
		.b10(b10_pe07), .b11(b11_pe07), .b12(b12_pe07), .b13(b13_pe07),
		.b20(b20_pe07), .b21(b21_pe07), .b22(b22_pe07), .b23(b23_pe07),
		.b30(b30_pe07), .b31(b31_pe07), .b32(b32_pe07), .b33(b33_pe07));

PE PE08(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe08),
		.a00(a00_pe08), .a01(a01_pe08), .a02(a02_pe08), .a03(a03_pe08),
		.a10(a10_pe08), .a11(a11_pe08), .a12(a12_pe08), .a13(a13_pe08),
		.a20(a20_pe08), .a21(a21_pe08), .a22(a22_pe08), .a23(a23_pe08),
		.a30(a30_pe08), .a31(a31_pe08), .a32(a32_pe08), .a33(a33_pe08),
		.b00(b00_pe08), .b01(b01_pe08), .b02(b02_pe08), .b03(b03_pe08),
		.b10(b10_pe08), .b11(b11_pe08), .b12(b12_pe08), .b13(b13_pe08),
		.b20(b20_pe08), .b21(b21_pe08), .b22(b22_pe08), .b23(b23_pe08),
		.b30(b30_pe08), .b31(b31_pe08), .b32(b32_pe08), .b33(b33_pe08));

PE PE09(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe09),
		.a00(a00_pe09), .a01(a01_pe09), .a02(a02_pe09), .a03(a03_pe09),
		.a10(a10_pe09), .a11(a11_pe09), .a12(a12_pe09), .a13(a13_pe09),
		.a20(a20_pe09), .a21(a21_pe09), .a22(a22_pe09), .a23(a23_pe09),
		.a30(a30_pe09), .a31(a31_pe09), .a32(a32_pe09), .a33(a33_pe09),
		.b00(b00_pe09), .b01(b01_pe09), .b02(b02_pe09), .b03(b03_pe09),
		.b10(b10_pe09), .b11(b11_pe09), .b12(b12_pe09), .b13(b13_pe09),
		.b20(b20_pe09), .b21(b21_pe09), .b22(b22_pe09), .b23(b23_pe09),
		.b30(b30_pe09), .b31(b31_pe09), .b32(b32_pe09), .b33(b33_pe09));

PE PE10(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe10),
		.a00(a00_pe10), .a01(a01_pe10), .a02(a02_pe10), .a03(a03_pe10),
		.a10(a10_pe10), .a11(a11_pe10), .a12(a12_pe10), .a13(a13_pe10),
		.a20(a20_pe10), .a21(a21_pe10), .a22(a22_pe10), .a23(a23_pe10),
		.a30(a30_pe10), .a31(a31_pe10), .a32(a32_pe10), .a33(a33_pe10),
		.b00(b00_pe10), .b01(b01_pe10), .b02(b02_pe10), .b03(b03_pe10),
		.b10(b10_pe10), .b11(b11_pe10), .b12(b12_pe10), .b13(b13_pe10),
		.b20(b20_pe10), .b21(b21_pe10), .b22(b22_pe10), .b23(b23_pe10),
		.b30(b30_pe10), .b31(b31_pe10), .b32(b32_pe10), .b33(b33_pe10));

PE PE11(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe11),
		.a00(a00_pe11), .a01(a01_pe11), .a02(a02_pe11), .a03(a03_pe11),
		.a10(a10_pe11), .a11(a11_pe11), .a12(a12_pe11), .a13(a13_pe11),
		.a20(a20_pe11), .a21(a21_pe11), .a22(a22_pe11), .a23(a23_pe11),
		.a30(a30_pe11), .a31(a31_pe11), .a32(a32_pe11), .a33(a33_pe11),
		.b00(b00_pe11), .b01(b01_pe11), .b02(b02_pe11), .b03(b03_pe11),
		.b10(b10_pe11), .b11(b11_pe11), .b12(b12_pe11), .b13(b13_pe11),
		.b20(b20_pe11), .b21(b21_pe11), .b22(b22_pe11), .b23(b23_pe11),
		.b30(b30_pe11), .b31(b31_pe11), .b32(b32_pe11), .b33(b33_pe11));

PE PE12(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe12),
		.a00(a00_pe12), .a01(a01_pe12), .a02(a02_pe12), .a03(a03_pe12),
		.a10(a10_pe12), .a11(a11_pe12), .a12(a12_pe12), .a13(a13_pe12),
		.a20(a20_pe12), .a21(a21_pe12), .a22(a22_pe12), .a23(a23_pe12),
		.a30(a30_pe12), .a31(a31_pe12), .a32(a32_pe12), .a33(a33_pe12),
		.b00(b00_pe12), .b01(b01_pe12), .b02(b02_pe12), .b03(b03_pe12),
		.b10(b10_pe12), .b11(b11_pe12), .b12(b12_pe12), .b13(b13_pe12),
		.b20(b20_pe12), .b21(b21_pe12), .b22(b22_pe12), .b23(b23_pe12),
		.b30(b30_pe12), .b31(b31_pe12), .b32(b32_pe12), .b33(b33_pe12));

PE PE13(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe13),
		.a00(a00_pe13), .a01(a01_pe13), .a02(a02_pe13), .a03(a03_pe13),
		.a10(a10_pe13), .a11(a11_pe13), .a12(a12_pe13), .a13(a13_pe13),
		.a20(a20_pe13), .a21(a21_pe13), .a22(a22_pe13), .a23(a23_pe13),
		.a30(a30_pe13), .a31(a31_pe13), .a32(a32_pe13), .a33(a33_pe13),
		.b00(b00_pe13), .b01(b01_pe13), .b02(b02_pe13), .b03(b03_pe13),
		.b10(b10_pe13), .b11(b11_pe13), .b12(b12_pe13), .b13(b13_pe13),
		.b20(b20_pe13), .b21(b21_pe13), .b22(b22_pe13), .b23(b23_pe13),
		.b30(b30_pe13), .b31(b31_pe13), .b32(b32_pe13), .b33(b33_pe13));

PE PE14(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe14),
		.a00(a00_pe14), .a01(a01_pe14), .a02(a02_pe14), .a03(a03_pe14),
		.a10(a10_pe14), .a11(a11_pe14), .a12(a12_pe14), .a13(a13_pe14),
		.a20(a20_pe14), .a21(a21_pe14), .a22(a22_pe14), .a23(a23_pe14),
		.a30(a30_pe14), .a31(a31_pe14), .a32(a32_pe14), .a33(a33_pe14),
		.b00(b00_pe14), .b01(b01_pe14), .b02(b02_pe14), .b03(b03_pe14),
		.b10(b10_pe14), .b11(b11_pe14), .b12(b12_pe14), .b13(b13_pe14),
		.b20(b20_pe14), .b21(b21_pe14), .b22(b22_pe14), .b23(b23_pe14),
		.b30(b30_pe14), .b31(b31_pe14), .b32(b32_pe14), .b33(b33_pe14));

PE PE15(.clk(clk), .rst_n(rst_n), .enable(enable), .sum(sum_pe15),
		.a00(a00_pe15), .a01(a01_pe15), .a02(a02_pe15), .a03(a03_pe15),
		.a10(a10_pe15), .a11(a11_pe15), .a12(a12_pe15), .a13(a13_pe15),
		.a20(a20_pe15), .a21(a21_pe15), .a22(a22_pe15), .a23(a23_pe15),
		.a30(a30_pe15), .a31(a31_pe15), .a32(a32_pe15), .a33(a33_pe15),
		.b00(b00_pe15), .b01(b01_pe15), .b02(b02_pe15), .b03(b03_pe15),
		.b10(b10_pe15), .b11(b11_pe15), .b12(b12_pe15), .b13(b13_pe15),
		.b20(b20_pe15), .b21(b21_pe15), .b22(b22_pe15), .b23(b23_pe15),
		.b30(b30_pe15), .b31(b31_pe15), .b32(b32_pe15), .b33(b33_pe15));

compare compare(.clk(clk), .rst_n(rst_n), .enable(enable0), .ctr_word(ctr_word_delay3), .out(compare_out),
				.sum00(sum_pe00), .sum01(sum_pe01), .sum02(sum_pe02), .sum03(sum_pe03),
				.sum04(sum_pe04), .sum05(sum_pe05), .sum06(sum_pe06), .sum07(sum_pe07),
				.sum08(sum_pe08), .sum09(sum_pe09), .sum10(sum_pe10), .sum11(sum_pe11),
				.sum12(sum_pe12), .sum13(sum_pe13), .sum14(sum_pe14), .sum15(sum_pe15));

always @ (posedge clk)
begin
	if(rst_n && (enable1 || enable2))
	begin
		out <= (out[19:8] < compare_out[19:8]) ? out : compare_out;
	end
	else
	begin
		out <= 20'b11111111111100000000;
	end
end

endmodule
