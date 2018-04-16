/**************************************************************** 
  ** Title : process unit
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  PE.v
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
module PE(
	input clk,
	input rst_n,
    input enable,

	input [7:0] a00,
	input [7:0] a01,
	input [7:0] a02,
	input [7:0] a03,
	input [7:0] a10,
	input [7:0] a11,
	input [7:0] a12,
	input [7:0] a13,
	input [7:0] a20,
	input [7:0] a21,
	input [7:0] a22,
	input [7:0] a23,
	input [7:0] a30,
	input [7:0] a31,
	input [7:0] a32,
	input [7:0] a33,

	input [7:0] b00,
	input [7:0] b01,
	input [7:0] b02,
	input [7:0] b03,
	input [7:0] b10,
	input [7:0] b11,
	input [7:0] b12,
	input [7:0] b13,
	input [7:0] b20,
	input [7:0] b21,
	input [7:0] b22,
	input [7:0] b23,
	input [7:0] b30,
	input [7:0] b31,
	input [7:0] b32,
	input [7:0] b33,

	output reg [11:0] sum
);

reg 		enable_delay;
reg [19:0] 	sum_reg_00_01_02_03_04_05_06_07;
reg [19:0] 	sum_reg_08_09_10_11_12_13_14_15;

wire [7:0] abs00;
wire [7:0] abs01;
wire [7:0] abs02;
wire [7:0] abs03;
wire [7:0] abs04;
wire [7:0] abs05;
wire [7:0] abs06;
wire [7:0] abs07;
wire [7:0] abs08;
wire [7:0] abs09;
wire [7:0] abs10;
wire [7:0] abs11;
wire [7:0] abs12;
wire [7:0] abs13;
wire [7:0] abs14;
wire [7:0] abs15;

wire [8:0] sum00_01;
wire [8:0] sum02_03;
wire [8:0] sum04_05;
wire [8:0] sum06_07;
wire [8:0] sum08_09;
wire [8:0] sum10_11;
wire [8:0] sum12_13;
wire [8:0] sum14_15;
wire [9:0] sum00_01_02_03;
wire [9:0] sum04_05_06_07;
wire [9:0] sum08_09_10_11;
wire [9:0] sum12_13_14_15;
wire [10:0] sum00_01_02_03_04_05_06_07;
wire [10:0] sum08_09_10_11_12_13_14_15;
wire [11:0] sum_x;

assign abs00 = (a00 <b00) ? b00 - a00 : a00 - b00;
assign abs01 = (a01 <b01) ? b01 - a01 : a01 - b01;
assign abs02 = (a02 <b02) ? b02 - a02 : a02 - b02;
assign abs03 = (a03 <b03) ? b03 - a03 : a03 - b03;
assign abs04 = (a10 <b10) ? b10 - a10 : a10 - b10;
assign abs05 = (a11 <b11) ? b11 - a11 : a11 - b11;
assign abs06 = (a12 <b12) ? b12 - a12 : a12 - b12;
assign abs07 = (a13 <b13) ? b13 - a13 : a13 - b13;
assign abs08 = (a20 <b20) ? b20 - a20 : a20 - b20;
assign abs09 = (a21 <b21) ? b21 - a21 : a21 - b21;
assign abs10 = (a22 <b22) ? b22 - a22 : a22 - b22;
assign abs11 = (a23 <b23) ? b23 - a23 : a23 - b23;
assign abs12 = (a30 <b30) ? b30 - a30 : a30 - b30;
assign abs13 = (a31 <b31) ? b31 - a31 : a31 - b31;
assign abs14 = (a32 <b32) ? b32 - a32 : a32 - b32;
assign abs15 = (a33 <b33) ? b33 - a33 : a33 - b33;

assign sum00_01 = abs00 + abs01;
assign sum02_03 = abs02 + abs03;
assign sum04_05 = abs04 + abs05;
assign sum06_07 = abs06 + abs07;
assign sum08_09 = abs08 + abs09;
assign sum10_11 = abs10 + abs11;
assign sum12_13 = abs12 + abs13;
assign sum14_15 = abs14 + abs15;
assign sum00_01_02_03 = sum00_01 + sum02_03;
assign sum04_05_06_07 = sum04_05 + sum06_07;
assign sum08_09_10_11 = sum08_09 + sum10_11;
assign sum12_13_14_15 = sum12_13 + sum14_15;
assign sum00_01_02_03_04_05_06_07 = sum_reg_00_01_02_03_04_05_06_07[19:10] + sum_reg_00_01_02_03_04_05_06_07[9:0];
assign sum08_09_10_11_12_13_14_15 = sum_reg_08_09_10_11_12_13_14_15[19:10] + sum_reg_08_09_10_11_12_13_14_15[9:0];
assign sum_x = sum00_01_02_03_04_05_06_07 + sum08_09_10_11_12_13_14_15;

always @ (posedge clk)
begin
    if(rst_n) enable_delay <= enable;
    else enable_delay <= 0;
end

always @ (posedge clk)
begin
    if(rst_n) 
	begin
		if(enable)
		begin
			sum_reg_00_01_02_03_04_05_06_07 <= {sum00_01_02_03, sum04_05_06_07};
			sum_reg_08_09_10_11_12_13_14_15 <= {sum08_09_10_11, sum12_13_14_15};
		end
		else
		begin
			sum_reg_00_01_02_03_04_05_06_07 <= sum_reg_00_01_02_03_04_05_06_07;
			sum_reg_08_09_10_11_12_13_14_15 <= sum_reg_08_09_10_11_12_13_14_15;
		end
	end
    else
	begin
		sum_reg_00_01_02_03_04_05_06_07 <= 20'b0;
		sum_reg_08_09_10_11_12_13_14_15 <= 20'b0;
	end
end

always @ (posedge clk)
begin
    if(rst_n && enable_delay) sum <= sum_x;
    else sum <= 12'b0;
end

endmodule
