/**************************************************************** 
  ** Title : compare module
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  compare.v
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

module compare(
    input 			    clk,
    input 			  	rst_n,
    input               enable,
    input [3:0] 		ctr_word,

    input [11:0] 		sum00,
    input [11:0] 		sum01,
    input [11:0] 		sum02,
    input [11:0] 		sum03,
    input [11:0] 		sum04,
    input [11:0] 		sum05,
    input [11:0] 		sum06,
    input [11:0] 		sum07,
    input [11:0] 		sum08,
    input [11:0] 		sum09,
    input [11:0] 		sum10,
    input [11:0] 		sum11,
    input [11:0] 		sum12,
    input [11:0] 		sum13,
    input [11:0] 		sum14,
    input [11:0] 		sum15,

    output reg [19:0] 	out
);

reg 		enable_delay;
reg [23:0] 	com_reg_00_01_02_03_04_05_06_07;
reg [23:0] 	com_reg_08_09_10_11_12_13_14_15;
reg [7:0]   location_reg_00_01_02_03_04_05_06_07;
reg [7:0] 	location_reg_08_09_10_11_12_13_14_15;

wire [11:0] com00_01;
wire [11:0] com02_03;
wire [11:0] com04_05;
wire [11:0] com06_07;
wire [11:0] com08_09;
wire [11:0] com10_11;
wire [11:0] com12_13;
wire [11:0] com14_15;
wire [11:0] com00_01_02_03;
wire [11:0] com04_05_06_07;
wire [11:0] com08_09_10_11;
wire [11:0] com12_13_14_15;
wire [11:0] com00_01_02_03_04_05_06_07;
wire [11:0] com08_09_10_11_12_13_14_15;
wire [11:0] com_x;

wire [3:0] location00_01;
wire [3:0] location02_03;
wire [3:0] location04_05;
wire [3:0] location06_07;
wire [3:0] location08_09;
wire [3:0] location10_11;
wire [3:0] location12_13;
wire [3:0] location14_15;
wire [3:0] location00_01_02_03;
wire [3:0] location04_05_06_07;
wire [3:0] location08_09_10_11;
wire [3:0] location12_13_14_15;
wire [3:0] location00_01_02_03_04_05_06_07;
wire [3:0] location08_09_10_11_12_13_14_15;
wire [3:0] location_x;

assign com00_01 = (sum00 < sum01) ? sum00 : sum01;
assign com02_03 = (sum02 < sum03) ? sum02 : sum03;
assign com04_05 = (sum04 < sum05) ? sum04 : sum05;
assign com06_07 = (sum06 < sum07) ? sum06 : sum07;
assign com08_09 = (sum08 < sum09) ? sum08 : sum09;
assign com10_11 = (sum10 < sum11) ? sum10 : sum11;
assign com12_13 = (sum12 < sum13) ? sum12 : sum13;
assign com14_15 = (sum14 < sum15) ? sum14 : sum15;
assign com00_01_02_03 = (com00_01 < com02_03) ? com00_01 : com02_03;
assign com04_05_06_07 = (com04_05 < com06_07) ? com04_05 : com06_07;
assign com08_09_10_11 = (com08_09 < com10_11) ? com08_09 : com10_11;
assign com12_13_14_15 = (com12_13 < com14_15) ? com12_13 : com14_15;
assign com00_01_02_03_04_05_06_07 = 
        (com_reg_00_01_02_03_04_05_06_07[23:12] < com_reg_00_01_02_03_04_05_06_07[11:0]) ? 
        com_reg_00_01_02_03_04_05_06_07[23:12] : com_reg_00_01_02_03_04_05_06_07[11:0];
assign com08_09_10_11_12_13_14_15 = 
        (com_reg_08_09_10_11_12_13_14_15[23:12] < com_reg_08_09_10_11_12_13_14_15[11:0]) ? 
        com_reg_08_09_10_11_12_13_14_15[23:12] : com_reg_08_09_10_11_12_13_14_15[11:0];
assign com_x = (com00_01_02_03_04_05_06_07 < com08_09_10_11_12_13_14_15) ? com00_01_02_03_04_05_06_07 : com08_09_10_11_12_13_14_15;

assign location00_01 = (sum00 < sum01) ? 4'b0000 : 4'b0001;
assign location02_03 = (sum02 < sum03) ? 4'b0010 : 4'b0011;
assign location04_05 = (sum04 < sum05) ? 4'b0100 : 4'b0101;
assign location06_07 = (sum06 < sum07) ? 4'b0110 : 4'b0111;
assign location08_09 = (sum08 < sum09) ? 4'b1000 : 4'b1001;
assign location10_11 = (sum10 < sum11) ? 4'b1010 : 4'b1011;
assign location12_13 = (sum12 < sum13) ? 4'b1100 : 4'b1101;
assign location14_15 = (sum14 < sum15) ? 4'b1110 : 4'b1111;
assign location00_01_02_03 = (com00_01 < com02_03) ? location00_01 : location02_03;
assign location04_05_06_07 = (com04_05 < com06_07) ? location04_05 : location06_07;
assign location08_09_10_11 = (com08_09 < com10_11) ? location08_09 : location10_11;
assign location12_13_14_15 = (com12_13 < com14_15) ? location12_13 : location14_15;
assign location00_01_02_03_04_05_06_07 = 
        (com_reg_00_01_02_03_04_05_06_07[23:12] < com_reg_00_01_02_03_04_05_06_07[11:0]) ? 
        location_reg_00_01_02_03_04_05_06_07[7:4] : location_reg_00_01_02_03_04_05_06_07[3:0];
assign location08_09_10_11_12_13_14_15 = 
        (com_reg_08_09_10_11_12_13_14_15[23:12] < com_reg_08_09_10_11_12_13_14_15[11:0]) ? 
        location_reg_08_09_10_11_12_13_14_15[7:4] : location_reg_08_09_10_11_12_13_14_15[3:0];
assign location_x = (com00_01_02_03_04_05_06_07 < com08_09_10_11_12_13_14_15) ? location00_01_02_03_04_05_06_07 : location08_09_10_11_12_13_14_15;

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
			com_reg_00_01_02_03_04_05_06_07 <= {com00_01_02_03, com04_05_06_07};
			com_reg_08_09_10_11_12_13_14_15 <= {com08_09_10_11, com12_13_14_15};
            location_reg_00_01_02_03_04_05_06_07 <= {location00_01_02_03, location04_05_06_07};
            location_reg_08_09_10_11_12_13_14_15 <= {location08_09_10_11, location12_13_14_15};
		end
		else
		begin
			com_reg_00_01_02_03_04_05_06_07 <= com_reg_00_01_02_03_04_05_06_07;
			com_reg_08_09_10_11_12_13_14_15 <= com_reg_08_09_10_11_12_13_14_15;
            location_reg_00_01_02_03_04_05_06_07 <= location_reg_00_01_02_03_04_05_06_07;
            location_reg_08_09_10_11_12_13_14_15 <= location_reg_08_09_10_11_12_13_14_15;
		end
	end
    else
	begin
		com_reg_00_01_02_03_04_05_06_07 <= 24'b111111111111111111111111;
        com_reg_08_09_10_11_12_13_14_15 <= 24'b111111111111111111111111;
        location_reg_00_01_02_03_04_05_06_07 <= 8'b0;
        location_reg_08_09_10_11_12_13_14_15 <= 8'b0;
	end
end


always @ (posedge clk)
begin
    if(rst_n && enable_delay)
    begin
        out <= {com_x, location_x, ctr_word}; //pattern: SAD 12bit, x 4bit, y 4bit.
    end
    else
    begin
        out <= 20'b11111111111100000000;
    end
end

endmodule
