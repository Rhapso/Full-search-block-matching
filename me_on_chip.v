/**************************************************************** 
  ** Title : on chip module
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  me_on_chip.v
  ** Author : fzp yangbo
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

//pins 
//32 data
//1 clk
//1 rst_n
//1 initial
//1 output


module me_on_chip
#(
    parameter WORD_WIDETH =                 8
)
(
    input                       clk,
    input                       init,
    input [WORD_WIDETH*4-1:0]   input_raw,
    input                       rst_n,
    output reg                  serial20
);

wire net_clk;
wire net_rst_n;
wire net_init;
wire [31:0] net_input_raw;
wire net_serial20;

PIW 
    PIW_clk(.PAD(clk),.C(net_clk)), 
    PIW_rst_n(.PAD(rst_n),.C(net_rst_n)), 
    PIW_init(.PAD(init),.C(net_init)),  
    PIW_input_raw0(.PAD(input_raw[0]),.C(net_input_raw[0])), 
    PIW_input_raw1(.PAD(input_raw[1]),.C(net_input_raw[1])), 
    PIW_input_raw2(.PAD(input_raw[2]),.C(net_input_raw[2])), 
    PIW_input_raw3(.PAD(input_raw[3]),.C(net_input_raw[3])), 
    PIW_input_raw4(.PAD(input_raw[4]),.C(net_input_raw[4])), 
    PIW_input_raw5(.PAD(input_raw[5]),.C(net_input_raw[5])), 
    PIW_input_raw6(.PAD(input_raw[6]),.C(net_input_raw[6])), 
    PIW_input_raw7(.PAD(input_raw[7]),.C(net_input_raw[7])), 
    PIW_input_raw8(.PAD(input_raw[8]),.C(net_input_raw[8])), 
    PIW_input_raw9(.PAD(input_raw[9]),.C(net_input_raw[9])), 
    PIW_input_raw10(.PAD(input_raw[10]),.C(net_input_raw[10])), 
    PIW_input_raw11(.PAD(input_raw[11]),.C(net_input_raw[11])), 
    PIW_input_raw12(.PAD(input_raw[12]),.C(net_input_raw[12])), 
    PIW_input_raw13(.PAD(input_raw[13]),.C(net_input_raw[13])), 
    PIW_input_raw14(.PAD(input_raw[14]),.C(net_input_raw[14])), 
    PIW_input_raw15(.PAD(input_raw[15]),.C(net_input_raw[15])),
    PIW_input_raw16(.PAD(input_raw[16]),.C(net_input_raw[16])), 
    PIW_input_raw17(.PAD(input_raw[17]),.C(net_input_raw[17])), 
    PIW_input_raw18(.PAD(input_raw[18]),.C(net_input_raw[18])), 
    PIW_input_raw19(.PAD(input_raw[19]),.C(net_input_raw[19])), 
    PIW_input_raw20(.PAD(input_raw[20]),.C(net_input_raw[20])), 
    PIW_input_raw21(.PAD(input_raw[21]),.C(net_input_raw[21])),
    PIW_input_raw22(.PAD(input_raw[22]),.C(net_input_raw[22])), 
    PIW_input_raw23(.PAD(input_raw[23]),.C(net_input_raw[23])), 
    PIW_input_raw24(.PAD(input_raw[24]),.C(net_input_raw[24])), 
    PIW_input_raw25(.PAD(input_raw[25]),.C(net_input_raw[25])), 
    PIW_input_raw26(.PAD(input_raw[26]),.C(net_input_raw[26])), 
    PIW_input_raw27(.PAD(input_raw[27]),.C(net_input_raw[27])),
    PIW_input_raw28(.PAD(input_raw[28]),.C(net_input_raw[28])), 
    PIW_input_raw29(.PAD(input_raw[29]),.C(net_input_raw[29])), 
    PIW_input_raw30(.PAD(input_raw[30]),.C(net_input_raw[30])), 
    PIW_input_raw31(.PAD(input_raw[31]),.C(net_input_raw[31])); 

PO8W 
    PO8W_serial20(.I(net_serial20),.PAD(serial20));

me_top #(.WORD_WIDETH(WORD_WIDETH)) me_top (
    .clk(net_clk),
    .rst_n(net_rst_n),
    .init(net_init),
    .input_raw(net_input_raw),
    .serial20(net_serial20)
);

endmodule