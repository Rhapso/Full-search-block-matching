/**************************************************************** 
  ** Title : me_top module
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  me_top.v
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
module me_top
#(
    parameter WORD_WIDETH =                 8
)
(
    input                       clk,
    input                       init,
    input [WORD_WIDETH*4-1:0]   input_raw,
    input                       rst_n,
    output                      serial20
);

wire                                en_init;
wire        [3:0]                   ctr_word;
wire                                mem19198_en_input;
wire                                mem448_en_input;
wire                                mem20_en_input;
wire                                mem_init_mode;
wire        [WORD_WIDETH*4-1:0]     input_raw_saved;
wire                                en_pe;

wire  [WORD_WIDETH-1:0]           pe_in00;
wire  [WORD_WIDETH-1:0]           pe_in01;
wire  [WORD_WIDETH-1:0]           pe_in02;
wire  [WORD_WIDETH-1:0]           pe_in03;
wire  [WORD_WIDETH-1:0]           pe_in04;
wire  [WORD_WIDETH-1:0]           pe_in05;
wire  [WORD_WIDETH-1:0]           pe_in06;
wire  [WORD_WIDETH-1:0]           pe_in07;
wire  [WORD_WIDETH-1:0]           pe_in08;
wire  [WORD_WIDETH-1:0]           pe_in09;
wire  [WORD_WIDETH-1:0]           pe_in10;
wire  [WORD_WIDETH-1:0]           pe_in11;
wire  [WORD_WIDETH-1:0]           pe_in12;
wire  [WORD_WIDETH-1:0]           pe_in13;
wire  [WORD_WIDETH-1:0]           pe_in14;
wire  [WORD_WIDETH-1:0]           pe_in15;
wire  [WORD_WIDETH-1:0]           pe00_in00;
wire  [WORD_WIDETH-1:0]           pe00_in01;
wire  [WORD_WIDETH-1:0]           pe00_in02;
wire  [WORD_WIDETH-1:0]           pe00_in03;
wire  [WORD_WIDETH-1:0]           pe00_in04;
wire  [WORD_WIDETH-1:0]           pe00_in05;
wire  [WORD_WIDETH-1:0]           pe00_in06;
wire  [WORD_WIDETH-1:0]           pe00_in07;
wire  [WORD_WIDETH-1:0]           pe00_in08;
wire  [WORD_WIDETH-1:0]           pe00_in09;
wire  [WORD_WIDETH-1:0]           pe00_in10;
wire  [WORD_WIDETH-1:0]           pe00_in11;
wire  [WORD_WIDETH-1:0]           pe00_in12;
wire  [WORD_WIDETH-1:0]           pe00_in13;
wire  [WORD_WIDETH-1:0]           pe00_in14;
wire  [WORD_WIDETH-1:0]           pe00_in15;
wire  [WORD_WIDETH-1:0]           pe01_in00;
wire  [WORD_WIDETH-1:0]           pe01_in01;
wire  [WORD_WIDETH-1:0]           pe01_in02;
wire  [WORD_WIDETH-1:0]           pe01_in03;
wire  [WORD_WIDETH-1:0]           pe01_in04;
wire  [WORD_WIDETH-1:0]           pe01_in05;
wire  [WORD_WIDETH-1:0]           pe01_in06;
wire  [WORD_WIDETH-1:0]           pe01_in07;
wire  [WORD_WIDETH-1:0]           pe01_in08;
wire  [WORD_WIDETH-1:0]           pe01_in09;
wire  [WORD_WIDETH-1:0]           pe01_in10;
wire  [WORD_WIDETH-1:0]           pe01_in11;
wire  [WORD_WIDETH-1:0]           pe01_in12;
wire  [WORD_WIDETH-1:0]           pe01_in13;
wire  [WORD_WIDETH-1:0]           pe01_in14;
wire  [WORD_WIDETH-1:0]           pe01_in15;
wire  [WORD_WIDETH-1:0]           pe02_in00;
wire  [WORD_WIDETH-1:0]           pe02_in01;
wire  [WORD_WIDETH-1:0]           pe02_in02;
wire  [WORD_WIDETH-1:0]           pe02_in03;
wire  [WORD_WIDETH-1:0]           pe02_in04;
wire  [WORD_WIDETH-1:0]           pe02_in05;
wire  [WORD_WIDETH-1:0]           pe02_in06;
wire  [WORD_WIDETH-1:0]           pe02_in07;
wire  [WORD_WIDETH-1:0]           pe02_in08;
wire  [WORD_WIDETH-1:0]           pe02_in09;
wire  [WORD_WIDETH-1:0]           pe02_in10;
wire  [WORD_WIDETH-1:0]           pe02_in11;
wire  [WORD_WIDETH-1:0]           pe02_in12;
wire  [WORD_WIDETH-1:0]           pe02_in13;
wire  [WORD_WIDETH-1:0]           pe02_in14;
wire  [WORD_WIDETH-1:0]           pe02_in15;
wire  [WORD_WIDETH-1:0]           pe03_in00;
wire  [WORD_WIDETH-1:0]           pe03_in01;
wire  [WORD_WIDETH-1:0]           pe03_in02;
wire  [WORD_WIDETH-1:0]           pe03_in03;
wire  [WORD_WIDETH-1:0]           pe03_in04;
wire  [WORD_WIDETH-1:0]           pe03_in05;
wire  [WORD_WIDETH-1:0]           pe03_in06;
wire  [WORD_WIDETH-1:0]           pe03_in07;
wire  [WORD_WIDETH-1:0]           pe03_in08;
wire  [WORD_WIDETH-1:0]           pe03_in09;
wire  [WORD_WIDETH-1:0]           pe03_in10;
wire  [WORD_WIDETH-1:0]           pe03_in11;
wire  [WORD_WIDETH-1:0]           pe03_in12;
wire  [WORD_WIDETH-1:0]           pe03_in13;
wire  [WORD_WIDETH-1:0]           pe03_in14;
wire  [WORD_WIDETH-1:0]           pe03_in15;
wire  [WORD_WIDETH-1:0]           pe04_in00;
wire  [WORD_WIDETH-1:0]           pe04_in01;
wire  [WORD_WIDETH-1:0]           pe04_in02;
wire  [WORD_WIDETH-1:0]           pe04_in03;
wire  [WORD_WIDETH-1:0]           pe04_in04;
wire  [WORD_WIDETH-1:0]           pe04_in05;
wire  [WORD_WIDETH-1:0]           pe04_in06;
wire  [WORD_WIDETH-1:0]           pe04_in07;
wire  [WORD_WIDETH-1:0]           pe04_in08;
wire  [WORD_WIDETH-1:0]           pe04_in09;
wire  [WORD_WIDETH-1:0]           pe04_in10;
wire  [WORD_WIDETH-1:0]           pe04_in11;
wire  [WORD_WIDETH-1:0]           pe04_in12;
wire  [WORD_WIDETH-1:0]           pe04_in13;
wire  [WORD_WIDETH-1:0]           pe04_in14;
wire  [WORD_WIDETH-1:0]           pe04_in15;
wire  [WORD_WIDETH-1:0]           pe05_in00;
wire  [WORD_WIDETH-1:0]           pe05_in01;
wire  [WORD_WIDETH-1:0]           pe05_in02;
wire  [WORD_WIDETH-1:0]           pe05_in03;
wire  [WORD_WIDETH-1:0]           pe05_in04;
wire  [WORD_WIDETH-1:0]           pe05_in05;
wire  [WORD_WIDETH-1:0]           pe05_in06;
wire  [WORD_WIDETH-1:0]           pe05_in07;
wire  [WORD_WIDETH-1:0]           pe05_in08;
wire  [WORD_WIDETH-1:0]           pe05_in09;
wire  [WORD_WIDETH-1:0]           pe05_in10;
wire  [WORD_WIDETH-1:0]           pe05_in11;
wire  [WORD_WIDETH-1:0]           pe05_in12;
wire  [WORD_WIDETH-1:0]           pe05_in13;
wire  [WORD_WIDETH-1:0]           pe05_in14;
wire  [WORD_WIDETH-1:0]           pe05_in15;
wire  [WORD_WIDETH-1:0]           pe06_in00;
wire  [WORD_WIDETH-1:0]           pe06_in01;
wire  [WORD_WIDETH-1:0]           pe06_in02;
wire  [WORD_WIDETH-1:0]           pe06_in03;
wire  [WORD_WIDETH-1:0]           pe06_in04;
wire  [WORD_WIDETH-1:0]           pe06_in05;
wire  [WORD_WIDETH-1:0]           pe06_in06;
wire  [WORD_WIDETH-1:0]           pe06_in07;
wire  [WORD_WIDETH-1:0]           pe06_in08;
wire  [WORD_WIDETH-1:0]           pe06_in09;
wire  [WORD_WIDETH-1:0]           pe06_in10;
wire  [WORD_WIDETH-1:0]           pe06_in11;
wire  [WORD_WIDETH-1:0]           pe06_in12;
wire  [WORD_WIDETH-1:0]           pe06_in13;
wire  [WORD_WIDETH-1:0]           pe06_in14;
wire  [WORD_WIDETH-1:0]           pe06_in15;
wire  [WORD_WIDETH-1:0]           pe07_in00;
wire  [WORD_WIDETH-1:0]           pe07_in01;
wire  [WORD_WIDETH-1:0]           pe07_in02;
wire  [WORD_WIDETH-1:0]           pe07_in03;
wire  [WORD_WIDETH-1:0]           pe07_in04;
wire  [WORD_WIDETH-1:0]           pe07_in05;
wire  [WORD_WIDETH-1:0]           pe07_in06;
wire  [WORD_WIDETH-1:0]           pe07_in07;
wire  [WORD_WIDETH-1:0]           pe07_in08;
wire  [WORD_WIDETH-1:0]           pe07_in09;
wire  [WORD_WIDETH-1:0]           pe07_in10;
wire  [WORD_WIDETH-1:0]           pe07_in11;
wire  [WORD_WIDETH-1:0]           pe07_in12;
wire  [WORD_WIDETH-1:0]           pe07_in13;
wire  [WORD_WIDETH-1:0]           pe07_in14;
wire  [WORD_WIDETH-1:0]           pe07_in15;
wire  [WORD_WIDETH-1:0]           pe08_in00;
wire  [WORD_WIDETH-1:0]           pe08_in01;
wire  [WORD_WIDETH-1:0]           pe08_in02;
wire  [WORD_WIDETH-1:0]           pe08_in03;
wire  [WORD_WIDETH-1:0]           pe08_in04;
wire  [WORD_WIDETH-1:0]           pe08_in05;
wire  [WORD_WIDETH-1:0]           pe08_in06;
wire  [WORD_WIDETH-1:0]           pe08_in07;
wire  [WORD_WIDETH-1:0]           pe08_in08;
wire  [WORD_WIDETH-1:0]           pe08_in09;
wire  [WORD_WIDETH-1:0]           pe08_in10;
wire  [WORD_WIDETH-1:0]           pe08_in11;
wire  [WORD_WIDETH-1:0]           pe08_in12;
wire  [WORD_WIDETH-1:0]           pe08_in13;
wire  [WORD_WIDETH-1:0]           pe08_in14;
wire  [WORD_WIDETH-1:0]           pe08_in15;
wire  [WORD_WIDETH-1:0]           pe09_in00;
wire  [WORD_WIDETH-1:0]           pe09_in01;
wire  [WORD_WIDETH-1:0]           pe09_in02;
wire  [WORD_WIDETH-1:0]           pe09_in03;
wire  [WORD_WIDETH-1:0]           pe09_in04;
wire  [WORD_WIDETH-1:0]           pe09_in05;
wire  [WORD_WIDETH-1:0]           pe09_in06;
wire  [WORD_WIDETH-1:0]           pe09_in07;
wire  [WORD_WIDETH-1:0]           pe09_in08;
wire  [WORD_WIDETH-1:0]           pe09_in09;
wire  [WORD_WIDETH-1:0]           pe09_in10;
wire  [WORD_WIDETH-1:0]           pe09_in11;
wire  [WORD_WIDETH-1:0]           pe09_in12;
wire  [WORD_WIDETH-1:0]           pe09_in13;
wire  [WORD_WIDETH-1:0]           pe09_in14;
wire  [WORD_WIDETH-1:0]           pe09_in15;
wire  [WORD_WIDETH-1:0]           pe10_in00;
wire  [WORD_WIDETH-1:0]           pe10_in01;
wire  [WORD_WIDETH-1:0]           pe10_in02;
wire  [WORD_WIDETH-1:0]           pe10_in03;
wire  [WORD_WIDETH-1:0]           pe10_in04;
wire  [WORD_WIDETH-1:0]           pe10_in05;
wire  [WORD_WIDETH-1:0]           pe10_in06;
wire  [WORD_WIDETH-1:0]           pe10_in07;
wire  [WORD_WIDETH-1:0]           pe10_in08;
wire  [WORD_WIDETH-1:0]           pe10_in09;
wire  [WORD_WIDETH-1:0]           pe10_in10;
wire  [WORD_WIDETH-1:0]           pe10_in11;
wire  [WORD_WIDETH-1:0]           pe10_in12;
wire  [WORD_WIDETH-1:0]           pe10_in13;
wire  [WORD_WIDETH-1:0]           pe10_in14;
wire  [WORD_WIDETH-1:0]           pe10_in15;
wire  [WORD_WIDETH-1:0]           pe11_in00;
wire  [WORD_WIDETH-1:0]           pe11_in01;
wire  [WORD_WIDETH-1:0]           pe11_in02;
wire  [WORD_WIDETH-1:0]           pe11_in03;
wire  [WORD_WIDETH-1:0]           pe11_in04;
wire  [WORD_WIDETH-1:0]           pe11_in05;
wire  [WORD_WIDETH-1:0]           pe11_in06;
wire  [WORD_WIDETH-1:0]           pe11_in07;
wire  [WORD_WIDETH-1:0]           pe11_in08;
wire  [WORD_WIDETH-1:0]           pe11_in09;
wire  [WORD_WIDETH-1:0]           pe11_in10;
wire  [WORD_WIDETH-1:0]           pe11_in11;
wire  [WORD_WIDETH-1:0]           pe11_in12;
wire  [WORD_WIDETH-1:0]           pe11_in13;
wire  [WORD_WIDETH-1:0]           pe11_in14;
wire  [WORD_WIDETH-1:0]           pe11_in15;
wire  [WORD_WIDETH-1:0]           pe12_in00;
wire  [WORD_WIDETH-1:0]           pe12_in01;
wire  [WORD_WIDETH-1:0]           pe12_in02;
wire  [WORD_WIDETH-1:0]           pe12_in03;
wire  [WORD_WIDETH-1:0]           pe12_in04;
wire  [WORD_WIDETH-1:0]           pe12_in05;
wire  [WORD_WIDETH-1:0]           pe12_in06;
wire  [WORD_WIDETH-1:0]           pe12_in07;
wire  [WORD_WIDETH-1:0]           pe12_in08;
wire  [WORD_WIDETH-1:0]           pe12_in09;
wire  [WORD_WIDETH-1:0]           pe12_in10;
wire  [WORD_WIDETH-1:0]           pe12_in11;
wire  [WORD_WIDETH-1:0]           pe12_in12;
wire  [WORD_WIDETH-1:0]           pe12_in13;
wire  [WORD_WIDETH-1:0]           pe12_in14;
wire  [WORD_WIDETH-1:0]           pe12_in15;
wire  [WORD_WIDETH-1:0]           pe13_in00;
wire  [WORD_WIDETH-1:0]           pe13_in01;
wire  [WORD_WIDETH-1:0]           pe13_in02;
wire  [WORD_WIDETH-1:0]           pe13_in03;
wire  [WORD_WIDETH-1:0]           pe13_in04;
wire  [WORD_WIDETH-1:0]           pe13_in05;
wire  [WORD_WIDETH-1:0]           pe13_in06;
wire  [WORD_WIDETH-1:0]           pe13_in07;
wire  [WORD_WIDETH-1:0]           pe13_in08;
wire  [WORD_WIDETH-1:0]           pe13_in09;
wire  [WORD_WIDETH-1:0]           pe13_in10;
wire  [WORD_WIDETH-1:0]           pe13_in11;
wire  [WORD_WIDETH-1:0]           pe13_in12;
wire  [WORD_WIDETH-1:0]           pe13_in13;
wire  [WORD_WIDETH-1:0]           pe13_in14;
wire  [WORD_WIDETH-1:0]           pe13_in15;
wire  [WORD_WIDETH-1:0]           pe14_in00;
wire  [WORD_WIDETH-1:0]           pe14_in01;
wire  [WORD_WIDETH-1:0]           pe14_in02;
wire  [WORD_WIDETH-1:0]           pe14_in03;
wire  [WORD_WIDETH-1:0]           pe14_in04;
wire  [WORD_WIDETH-1:0]           pe14_in05;
wire  [WORD_WIDETH-1:0]           pe14_in06;
wire  [WORD_WIDETH-1:0]           pe14_in07;
wire  [WORD_WIDETH-1:0]           pe14_in08;
wire  [WORD_WIDETH-1:0]           pe14_in09;
wire  [WORD_WIDETH-1:0]           pe14_in10;
wire  [WORD_WIDETH-1:0]           pe14_in11;
wire  [WORD_WIDETH-1:0]           pe14_in12;
wire  [WORD_WIDETH-1:0]           pe14_in13;
wire  [WORD_WIDETH-1:0]           pe14_in14;
wire  [WORD_WIDETH-1:0]           pe14_in15;
wire  [WORD_WIDETH-1:0]           pe15_in00;
wire  [WORD_WIDETH-1:0]           pe15_in01;
wire  [WORD_WIDETH-1:0]           pe15_in02;
wire  [WORD_WIDETH-1:0]           pe15_in03;
wire  [WORD_WIDETH-1:0]           pe15_in04;
wire  [WORD_WIDETH-1:0]           pe15_in05;
wire  [WORD_WIDETH-1:0]           pe15_in06;
wire  [WORD_WIDETH-1:0]           pe15_in07;
wire  [WORD_WIDETH-1:0]           pe15_in08;
wire  [WORD_WIDETH-1:0]           pe15_in09;
wire  [WORD_WIDETH-1:0]           pe15_in10;
wire  [WORD_WIDETH-1:0]           pe15_in11;
wire  [WORD_WIDETH-1:0]           pe15_in12;
wire  [WORD_WIDETH-1:0]           pe15_in13;
wire  [WORD_WIDETH-1:0]           pe15_in14;
wire  [WORD_WIDETH-1:0]           pe15_in15;

wire        [19:0]                  cal_out;

ctr #(.WORD_WIDETH(WORD_WIDETH)) ctr_1(
    .clk(clk),
    .en_init(init), //need last 73 cycle
    .rst_n(rst_n),
    .input_raw(input_raw),
    .ctr_word(ctr_word),
    .mem19198_en_input(mem19198_en_input),
    .mem448_en_input(mem448_en_input),
    .mem20_en_input(mem20_en_input),
    .mem_init_mode(mem_init_mode),
    .input_raw_saved(input_raw_saved),
    .en_pe(en_pe)
);

mem448 #(.WORD_WIDETH(WORD_WIDETH)) mem448_1(
    .clk(clk),
    .input_raw(input_raw_saved),
    .en_input(mem448_en_input),
    .rst_n(rst_n),
    .pe_in00(pe_in00),
    .pe_in01(pe_in01),
    .pe_in02(pe_in02),
    .pe_in03(pe_in03),
    .pe_in04(pe_in04),
    .pe_in05(pe_in05),
    .pe_in06(pe_in06),
    .pe_in07(pe_in07),
    .pe_in08(pe_in08),
    .pe_in09(pe_in09),
    .pe_in10(pe_in10),
    .pe_in11(pe_in11),
    .pe_in12(pe_in12),
    .pe_in13(pe_in13),
    .pe_in14(pe_in14),
    .pe_in15(pe_in15)
);

mem19198 #(.WORD_WIDETH(WORD_WIDETH)) mem19198_1(
    .clk(clk),
    .input_raw(input_raw_saved),
    .ctr_word(ctr_word), // ==0 means do nothing inside
    .en_input(mem19198_en_input),
    .init_mode(mem_init_mode),
    .rst_n(rst_n),
    .pe00_in00(pe00_in00),
    .pe00_in01(pe00_in01),
    .pe00_in02(pe00_in02),
    .pe00_in03(pe00_in03),
    .pe00_in04(pe00_in04),
    .pe00_in05(pe00_in05),
    .pe00_in06(pe00_in06),
    .pe00_in07(pe00_in07),
    .pe00_in08(pe00_in08),
    .pe00_in09(pe00_in09),
    .pe00_in10(pe00_in10),
    .pe00_in11(pe00_in11),
    .pe00_in12(pe00_in12),
    .pe00_in13(pe00_in13),
    .pe00_in14(pe00_in14),
    .pe00_in15(pe00_in15),
    .pe01_in00(pe01_in00),
    .pe01_in01(pe01_in01),
    .pe01_in02(pe01_in02),
    .pe01_in03(pe01_in03),
    .pe01_in04(pe01_in04),
    .pe01_in05(pe01_in05),
    .pe01_in06(pe01_in06),
    .pe01_in07(pe01_in07),
    .pe01_in08(pe01_in08),
    .pe01_in09(pe01_in09),
    .pe01_in10(pe01_in10),
    .pe01_in11(pe01_in11),
    .pe01_in12(pe01_in12),
    .pe01_in13(pe01_in13),
    .pe01_in14(pe01_in14),
    .pe01_in15(pe01_in15),
    .pe02_in00(pe02_in00),
    .pe02_in01(pe02_in01),
    .pe02_in02(pe02_in02),
    .pe02_in03(pe02_in03),
    .pe02_in04(pe02_in04),
    .pe02_in05(pe02_in05),
    .pe02_in06(pe02_in06),
    .pe02_in07(pe02_in07),
    .pe02_in08(pe02_in08),
    .pe02_in09(pe02_in09),
    .pe02_in10(pe02_in10),
    .pe02_in11(pe02_in11),
    .pe02_in12(pe02_in12),
    .pe02_in13(pe02_in13),
    .pe02_in14(pe02_in14),
    .pe02_in15(pe02_in15),
    .pe03_in00(pe03_in00),
    .pe03_in01(pe03_in01),
    .pe03_in02(pe03_in02),
    .pe03_in03(pe03_in03),
    .pe03_in04(pe03_in04),
    .pe03_in05(pe03_in05),
    .pe03_in06(pe03_in06),
    .pe03_in07(pe03_in07),
    .pe03_in08(pe03_in08),
    .pe03_in09(pe03_in09),
    .pe03_in10(pe03_in10),
    .pe03_in11(pe03_in11),
    .pe03_in12(pe03_in12),
    .pe03_in13(pe03_in13),
    .pe03_in14(pe03_in14),
    .pe03_in15(pe03_in15),
    .pe04_in00(pe04_in00),
    .pe04_in01(pe04_in01),
    .pe04_in02(pe04_in02),
    .pe04_in03(pe04_in03),
    .pe04_in04(pe04_in04),
    .pe04_in05(pe04_in05),
    .pe04_in06(pe04_in06),
    .pe04_in07(pe04_in07),
    .pe04_in08(pe04_in08),
    .pe04_in09(pe04_in09),
    .pe04_in10(pe04_in10),
    .pe04_in11(pe04_in11),
    .pe04_in12(pe04_in12),
    .pe04_in13(pe04_in13),
    .pe04_in14(pe04_in14),
    .pe04_in15(pe04_in15),
    .pe05_in00(pe05_in00),
    .pe05_in01(pe05_in01),
    .pe05_in02(pe05_in02),
    .pe05_in03(pe05_in03),
    .pe05_in04(pe05_in04),
    .pe05_in05(pe05_in05),
    .pe05_in06(pe05_in06),
    .pe05_in07(pe05_in07),
    .pe05_in08(pe05_in08),
    .pe05_in09(pe05_in09),
    .pe05_in10(pe05_in10),
    .pe05_in11(pe05_in11),
    .pe05_in12(pe05_in12),
    .pe05_in13(pe05_in13),
    .pe05_in14(pe05_in14),
    .pe05_in15(pe05_in15),
    .pe06_in00(pe06_in00),
    .pe06_in01(pe06_in01),
    .pe06_in02(pe06_in02),
    .pe06_in03(pe06_in03),
    .pe06_in04(pe06_in04),
    .pe06_in05(pe06_in05),
    .pe06_in06(pe06_in06),
    .pe06_in07(pe06_in07),
    .pe06_in08(pe06_in08),
    .pe06_in09(pe06_in09),
    .pe06_in10(pe06_in10),
    .pe06_in11(pe06_in11),
    .pe06_in12(pe06_in12),
    .pe06_in13(pe06_in13),
    .pe06_in14(pe06_in14),
    .pe06_in15(pe06_in15),
    .pe07_in00(pe07_in00),
    .pe07_in01(pe07_in01),
    .pe07_in02(pe07_in02),
    .pe07_in03(pe07_in03),
    .pe07_in04(pe07_in04),
    .pe07_in05(pe07_in05),
    .pe07_in06(pe07_in06),
    .pe07_in07(pe07_in07),
    .pe07_in08(pe07_in08),
    .pe07_in09(pe07_in09),
    .pe07_in10(pe07_in10),
    .pe07_in11(pe07_in11),
    .pe07_in12(pe07_in12),
    .pe07_in13(pe07_in13),
    .pe07_in14(pe07_in14),
    .pe07_in15(pe07_in15),
    .pe08_in00(pe08_in00),
    .pe08_in01(pe08_in01),
    .pe08_in02(pe08_in02),
    .pe08_in03(pe08_in03),
    .pe08_in04(pe08_in04),
    .pe08_in05(pe08_in05),
    .pe08_in06(pe08_in06),
    .pe08_in07(pe08_in07),
    .pe08_in08(pe08_in08),
    .pe08_in09(pe08_in09),
    .pe08_in10(pe08_in10),
    .pe08_in11(pe08_in11),
    .pe08_in12(pe08_in12),
    .pe08_in13(pe08_in13),
    .pe08_in14(pe08_in14),
    .pe08_in15(pe08_in15),
    .pe09_in00(pe09_in00),
    .pe09_in01(pe09_in01),
    .pe09_in02(pe09_in02),
    .pe09_in03(pe09_in03),
    .pe09_in04(pe09_in04),
    .pe09_in05(pe09_in05),
    .pe09_in06(pe09_in06),
    .pe09_in07(pe09_in07),
    .pe09_in08(pe09_in08),
    .pe09_in09(pe09_in09),
    .pe09_in10(pe09_in10),
    .pe09_in11(pe09_in11),
    .pe09_in12(pe09_in12),
    .pe09_in13(pe09_in13),
    .pe09_in14(pe09_in14),
    .pe09_in15(pe09_in15),
    .pe10_in00(pe10_in00),
    .pe10_in01(pe10_in01),
    .pe10_in02(pe10_in02),
    .pe10_in03(pe10_in03),
    .pe10_in04(pe10_in04),
    .pe10_in05(pe10_in05),
    .pe10_in06(pe10_in06),
    .pe10_in07(pe10_in07),
    .pe10_in08(pe10_in08),
    .pe10_in09(pe10_in09),
    .pe10_in10(pe10_in10),
    .pe10_in11(pe10_in11),
    .pe10_in12(pe10_in12),
    .pe10_in13(pe10_in13),
    .pe10_in14(pe10_in14),
    .pe10_in15(pe10_in15),
    .pe11_in00(pe11_in00),
    .pe11_in01(pe11_in01),
    .pe11_in02(pe11_in02),
    .pe11_in03(pe11_in03),
    .pe11_in04(pe11_in04),
    .pe11_in05(pe11_in05),
    .pe11_in06(pe11_in06),
    .pe11_in07(pe11_in07),
    .pe11_in08(pe11_in08),
    .pe11_in09(pe11_in09),
    .pe11_in10(pe11_in10),
    .pe11_in11(pe11_in11),
    .pe11_in12(pe11_in12),
    .pe11_in13(pe11_in13),
    .pe11_in14(pe11_in14),
    .pe11_in15(pe11_in15),
    .pe12_in00(pe12_in00),
    .pe12_in01(pe12_in01),
    .pe12_in02(pe12_in02),
    .pe12_in03(pe12_in03),
    .pe12_in04(pe12_in04),
    .pe12_in05(pe12_in05),
    .pe12_in06(pe12_in06),
    .pe12_in07(pe12_in07),
    .pe12_in08(pe12_in08),
    .pe12_in09(pe12_in09),
    .pe12_in10(pe12_in10),
    .pe12_in11(pe12_in11),
    .pe12_in12(pe12_in12),
    .pe12_in13(pe12_in13),
    .pe12_in14(pe12_in14),
    .pe12_in15(pe12_in15),
    .pe13_in00(pe13_in00),
    .pe13_in01(pe13_in01),
    .pe13_in02(pe13_in02),
    .pe13_in03(pe13_in03),
    .pe13_in04(pe13_in04),
    .pe13_in05(pe13_in05),
    .pe13_in06(pe13_in06),
    .pe13_in07(pe13_in07),
    .pe13_in08(pe13_in08),
    .pe13_in09(pe13_in09),
    .pe13_in10(pe13_in10),
    .pe13_in11(pe13_in11),
    .pe13_in12(pe13_in12),
    .pe13_in13(pe13_in13),
    .pe13_in14(pe13_in14),
    .pe13_in15(pe13_in15),
    .pe14_in00(pe14_in00),
    .pe14_in01(pe14_in01),
    .pe14_in02(pe14_in02),
    .pe14_in03(pe14_in03),
    .pe14_in04(pe14_in04),
    .pe14_in05(pe14_in05),
    .pe14_in06(pe14_in06),
    .pe14_in07(pe14_in07),
    .pe14_in08(pe14_in08),
    .pe14_in09(pe14_in09),
    .pe14_in10(pe14_in10),
    .pe14_in11(pe14_in11),
    .pe14_in12(pe14_in12),
    .pe14_in13(pe14_in13),
    .pe14_in14(pe14_in14),
    .pe14_in15(pe14_in15),
    .pe15_in00(pe15_in00),
    .pe15_in01(pe15_in01),
    .pe15_in02(pe15_in02),
    .pe15_in03(pe15_in03),
    .pe15_in04(pe15_in04),
    .pe15_in05(pe15_in05),
    .pe15_in06(pe15_in06),
    .pe15_in07(pe15_in07),
    .pe15_in08(pe15_in08),
    .pe15_in09(pe15_in09),
    .pe15_in10(pe15_in10),
    .pe15_in11(pe15_in11),
    .pe15_in12(pe15_in12),
    .pe15_in13(pe15_in13),
    .pe15_in14(pe15_in14),
    .pe15_in15(pe15_in15)
);

calculate cal_1(
    .clk(clk),
    .enable(en_pe),
    .rst_n(rst_n),
    .ctr_word(ctr_word),
    .a00_pe00(pe_in00),
    .a01_pe00(pe_in01),
    .a02_pe00(pe_in02),
    .a03_pe00(pe_in03),
    .a10_pe00(pe_in04),
    .a11_pe00(pe_in05),
    .a12_pe00(pe_in06),
    .a13_pe00(pe_in07),
    .a20_pe00(pe_in08),
    .a21_pe00(pe_in09),
    .a22_pe00(pe_in10),
    .a23_pe00(pe_in11),
    .a30_pe00(pe_in12),
    .a31_pe00(pe_in13),
    .a32_pe00(pe_in14),
    .a33_pe00(pe_in15),
    .a00_pe01(pe_in00),
    .a01_pe01(pe_in01),
    .a02_pe01(pe_in02),
    .a03_pe01(pe_in03),
    .a10_pe01(pe_in04),
    .a11_pe01(pe_in05),
    .a12_pe01(pe_in06),
    .a13_pe01(pe_in07),
    .a20_pe01(pe_in08),
    .a21_pe01(pe_in09),
    .a22_pe01(pe_in10),
    .a23_pe01(pe_in11),
    .a30_pe01(pe_in12),
    .a31_pe01(pe_in13),
    .a32_pe01(pe_in14),
    .a33_pe01(pe_in15),
    .a00_pe02(pe_in00),
    .a01_pe02(pe_in01),
    .a02_pe02(pe_in02),
    .a03_pe02(pe_in03),
    .a10_pe02(pe_in04),
    .a11_pe02(pe_in05),
    .a12_pe02(pe_in06),
    .a13_pe02(pe_in07),
    .a20_pe02(pe_in08),
    .a21_pe02(pe_in09),
    .a22_pe02(pe_in10),
    .a23_pe02(pe_in11),
    .a30_pe02(pe_in12),
    .a31_pe02(pe_in13),
    .a32_pe02(pe_in14),
    .a33_pe02(pe_in15),
    .a00_pe03(pe_in00),
    .a01_pe03(pe_in01),
    .a02_pe03(pe_in02),
    .a03_pe03(pe_in03),
    .a10_pe03(pe_in04),
    .a11_pe03(pe_in05),
    .a12_pe03(pe_in06),
    .a13_pe03(pe_in07),
    .a20_pe03(pe_in08),
    .a21_pe03(pe_in09),
    .a22_pe03(pe_in10),
    .a23_pe03(pe_in11),
    .a30_pe03(pe_in12),
    .a31_pe03(pe_in13),
    .a32_pe03(pe_in14),
    .a33_pe03(pe_in15),
    .a00_pe04(pe_in00),
    .a01_pe04(pe_in01),
    .a02_pe04(pe_in02),
    .a03_pe04(pe_in03),
    .a10_pe04(pe_in04),
    .a11_pe04(pe_in05),
    .a12_pe04(pe_in06),
    .a13_pe04(pe_in07),
    .a20_pe04(pe_in08),
    .a21_pe04(pe_in09),
    .a22_pe04(pe_in10),
    .a23_pe04(pe_in11),
    .a30_pe04(pe_in12),
    .a31_pe04(pe_in13),
    .a32_pe04(pe_in14),
    .a33_pe04(pe_in15),
    .a00_pe05(pe_in00),
    .a01_pe05(pe_in01),
    .a02_pe05(pe_in02),
    .a03_pe05(pe_in03),
    .a10_pe05(pe_in04),
    .a11_pe05(pe_in05),
    .a12_pe05(pe_in06),
    .a13_pe05(pe_in07),
    .a20_pe05(pe_in08),
    .a21_pe05(pe_in09),
    .a22_pe05(pe_in10),
    .a23_pe05(pe_in11),
    .a30_pe05(pe_in12),
    .a31_pe05(pe_in13),
    .a32_pe05(pe_in14),
    .a33_pe05(pe_in15),
    .a00_pe06(pe_in00),
    .a01_pe06(pe_in01),
    .a02_pe06(pe_in02),
    .a03_pe06(pe_in03),
    .a10_pe06(pe_in04),
    .a11_pe06(pe_in05),
    .a12_pe06(pe_in06),
    .a13_pe06(pe_in07),
    .a20_pe06(pe_in08),
    .a21_pe06(pe_in09),
    .a22_pe06(pe_in10),
    .a23_pe06(pe_in11),
    .a30_pe06(pe_in12),
    .a31_pe06(pe_in13),
    .a32_pe06(pe_in14),
    .a33_pe06(pe_in15),
    .a00_pe07(pe_in00),
    .a01_pe07(pe_in01),
    .a02_pe07(pe_in02),
    .a03_pe07(pe_in03),
    .a10_pe07(pe_in04),
    .a11_pe07(pe_in05),
    .a12_pe07(pe_in06),
    .a13_pe07(pe_in07),
    .a20_pe07(pe_in08),
    .a21_pe07(pe_in09),
    .a22_pe07(pe_in10),
    .a23_pe07(pe_in11),
    .a30_pe07(pe_in12),
    .a31_pe07(pe_in13),
    .a32_pe07(pe_in14),
    .a33_pe07(pe_in15),
    .a00_pe08(pe_in00),
    .a01_pe08(pe_in01),
    .a02_pe08(pe_in02),
    .a03_pe08(pe_in03),
    .a10_pe08(pe_in04),
    .a11_pe08(pe_in05),
    .a12_pe08(pe_in06),
    .a13_pe08(pe_in07),
    .a20_pe08(pe_in08),
    .a21_pe08(pe_in09),
    .a22_pe08(pe_in10),
    .a23_pe08(pe_in11),
    .a30_pe08(pe_in12),
    .a31_pe08(pe_in13),
    .a32_pe08(pe_in14),
    .a33_pe08(pe_in15),
    .a00_pe09(pe_in00),
    .a01_pe09(pe_in01),
    .a02_pe09(pe_in02),
    .a03_pe09(pe_in03),
    .a10_pe09(pe_in04),
    .a11_pe09(pe_in05),
    .a12_pe09(pe_in06),
    .a13_pe09(pe_in07),
    .a20_pe09(pe_in08),
    .a21_pe09(pe_in09),
    .a22_pe09(pe_in10),
    .a23_pe09(pe_in11),
    .a30_pe09(pe_in12),
    .a31_pe09(pe_in13),
    .a32_pe09(pe_in14),
    .a33_pe09(pe_in15),
    .a00_pe10(pe_in00),
    .a01_pe10(pe_in01),
    .a02_pe10(pe_in02),
    .a03_pe10(pe_in03),
    .a10_pe10(pe_in04),
    .a11_pe10(pe_in05),
    .a12_pe10(pe_in06),
    .a13_pe10(pe_in07),
    .a20_pe10(pe_in08),
    .a21_pe10(pe_in09),
    .a22_pe10(pe_in10),
    .a23_pe10(pe_in11),
    .a30_pe10(pe_in12),
    .a31_pe10(pe_in13),
    .a32_pe10(pe_in14),
    .a33_pe10(pe_in15),
    .a00_pe11(pe_in00),
    .a01_pe11(pe_in01),
    .a02_pe11(pe_in02),
    .a03_pe11(pe_in03),
    .a10_pe11(pe_in04),
    .a11_pe11(pe_in05),
    .a12_pe11(pe_in06),
    .a13_pe11(pe_in07),
    .a20_pe11(pe_in08),
    .a21_pe11(pe_in09),
    .a22_pe11(pe_in10),
    .a23_pe11(pe_in11),
    .a30_pe11(pe_in12),
    .a31_pe11(pe_in13),
    .a32_pe11(pe_in14),
    .a33_pe11(pe_in15),
    .a00_pe12(pe_in00),
    .a01_pe12(pe_in01),
    .a02_pe12(pe_in02),
    .a03_pe12(pe_in03),
    .a10_pe12(pe_in04),
    .a11_pe12(pe_in05),
    .a12_pe12(pe_in06),
    .a13_pe12(pe_in07),
    .a20_pe12(pe_in08),
    .a21_pe12(pe_in09),
    .a22_pe12(pe_in10),
    .a23_pe12(pe_in11),
    .a30_pe12(pe_in12),
    .a31_pe12(pe_in13),
    .a32_pe12(pe_in14),
    .a33_pe12(pe_in15),
    .a00_pe13(pe_in00),
    .a01_pe13(pe_in01),
    .a02_pe13(pe_in02),
    .a03_pe13(pe_in03),
    .a10_pe13(pe_in04),
    .a11_pe13(pe_in05),
    .a12_pe13(pe_in06),
    .a13_pe13(pe_in07),
    .a20_pe13(pe_in08),
    .a21_pe13(pe_in09),
    .a22_pe13(pe_in10),
    .a23_pe13(pe_in11),
    .a30_pe13(pe_in12),
    .a31_pe13(pe_in13),
    .a32_pe13(pe_in14),
    .a33_pe13(pe_in15),
    .a00_pe14(pe_in00),
    .a01_pe14(pe_in01),
    .a02_pe14(pe_in02),
    .a03_pe14(pe_in03),
    .a10_pe14(pe_in04),
    .a11_pe14(pe_in05),
    .a12_pe14(pe_in06),
    .a13_pe14(pe_in07),
    .a20_pe14(pe_in08),
    .a21_pe14(pe_in09),
    .a22_pe14(pe_in10),
    .a23_pe14(pe_in11),
    .a30_pe14(pe_in12),
    .a31_pe14(pe_in13),
    .a32_pe14(pe_in14),
    .a33_pe14(pe_in15),
    .a00_pe15(pe_in00),
    .a01_pe15(pe_in01),
    .a02_pe15(pe_in02),
    .a03_pe15(pe_in03),
    .a10_pe15(pe_in04),
    .a11_pe15(pe_in05),
    .a12_pe15(pe_in06),
    .a13_pe15(pe_in07),
    .a20_pe15(pe_in08),
    .a21_pe15(pe_in09),
    .a22_pe15(pe_in10),
    .a23_pe15(pe_in11),
    .a30_pe15(pe_in12),
    .a31_pe15(pe_in13),
    .a32_pe15(pe_in14),
    .a33_pe15(pe_in15),
    .b00_pe00(pe00_in00),
    .b01_pe00(pe00_in01),
    .b02_pe00(pe00_in02),
    .b03_pe00(pe00_in03),
    .b10_pe00(pe00_in04),
    .b11_pe00(pe00_in05),
    .b12_pe00(pe00_in06),
    .b13_pe00(pe00_in07),
    .b20_pe00(pe00_in08),
    .b21_pe00(pe00_in09),
    .b22_pe00(pe00_in10),
    .b23_pe00(pe00_in11),
    .b30_pe00(pe00_in12),
    .b31_pe00(pe00_in13),
    .b32_pe00(pe00_in14),
    .b33_pe00(pe00_in15),
    .b00_pe01(pe01_in00),
    .b01_pe01(pe01_in01),
    .b02_pe01(pe01_in02),
    .b03_pe01(pe01_in03),
    .b10_pe01(pe01_in04),
    .b11_pe01(pe01_in05),
    .b12_pe01(pe01_in06),
    .b13_pe01(pe01_in07),
    .b20_pe01(pe01_in08),
    .b21_pe01(pe01_in09),
    .b22_pe01(pe01_in10),
    .b23_pe01(pe01_in11),
    .b30_pe01(pe01_in12),
    .b31_pe01(pe01_in13),
    .b32_pe01(pe01_in14),
    .b33_pe01(pe01_in15),
    .b00_pe02(pe02_in00),
    .b01_pe02(pe02_in01),
    .b02_pe02(pe02_in02),
    .b03_pe02(pe02_in03),
    .b10_pe02(pe02_in04),
    .b11_pe02(pe02_in05),
    .b12_pe02(pe02_in06),
    .b13_pe02(pe02_in07),
    .b20_pe02(pe02_in08),
    .b21_pe02(pe02_in09),
    .b22_pe02(pe02_in10),
    .b23_pe02(pe02_in11),
    .b30_pe02(pe02_in12),
    .b31_pe02(pe02_in13),
    .b32_pe02(pe02_in14),
    .b33_pe02(pe02_in15),
    .b00_pe03(pe03_in00),
    .b01_pe03(pe03_in01),
    .b02_pe03(pe03_in02),
    .b03_pe03(pe03_in03),
    .b10_pe03(pe03_in04),
    .b11_pe03(pe03_in05),
    .b12_pe03(pe03_in06),
    .b13_pe03(pe03_in07),
    .b20_pe03(pe03_in08),
    .b21_pe03(pe03_in09),
    .b22_pe03(pe03_in10),
    .b23_pe03(pe03_in11),
    .b30_pe03(pe03_in12),
    .b31_pe03(pe03_in13),
    .b32_pe03(pe03_in14),
    .b33_pe03(pe03_in15),
    .b00_pe04(pe04_in00),
    .b01_pe04(pe04_in01),
    .b02_pe04(pe04_in02),
    .b03_pe04(pe04_in03),
    .b10_pe04(pe04_in04),
    .b11_pe04(pe04_in05),
    .b12_pe04(pe04_in06),
    .b13_pe04(pe04_in07),
    .b20_pe04(pe04_in08),
    .b21_pe04(pe04_in09),
    .b22_pe04(pe04_in10),
    .b23_pe04(pe04_in11),
    .b30_pe04(pe04_in12),
    .b31_pe04(pe04_in13),
    .b32_pe04(pe04_in14),
    .b33_pe04(pe04_in15),
    .b00_pe05(pe05_in00),
    .b01_pe05(pe05_in01),
    .b02_pe05(pe05_in02),
    .b03_pe05(pe05_in03),
    .b10_pe05(pe05_in04),
    .b11_pe05(pe05_in05),
    .b12_pe05(pe05_in06),
    .b13_pe05(pe05_in07),
    .b20_pe05(pe05_in08),
    .b21_pe05(pe05_in09),
    .b22_pe05(pe05_in10),
    .b23_pe05(pe05_in11),
    .b30_pe05(pe05_in12),
    .b31_pe05(pe05_in13),
    .b32_pe05(pe05_in14),
    .b33_pe05(pe05_in15),
    .b00_pe06(pe06_in00),
    .b01_pe06(pe06_in01),
    .b02_pe06(pe06_in02),
    .b03_pe06(pe06_in03),
    .b10_pe06(pe06_in04),
    .b11_pe06(pe06_in05),
    .b12_pe06(pe06_in06),
    .b13_pe06(pe06_in07),
    .b20_pe06(pe06_in08),
    .b21_pe06(pe06_in09),
    .b22_pe06(pe06_in10),
    .b23_pe06(pe06_in11),
    .b30_pe06(pe06_in12),
    .b31_pe06(pe06_in13),
    .b32_pe06(pe06_in14),
    .b33_pe06(pe06_in15),
    .b00_pe07(pe07_in00),
    .b01_pe07(pe07_in01),
    .b02_pe07(pe07_in02),
    .b03_pe07(pe07_in03),
    .b10_pe07(pe07_in04),
    .b11_pe07(pe07_in05),
    .b12_pe07(pe07_in06),
    .b13_pe07(pe07_in07),
    .b20_pe07(pe07_in08),
    .b21_pe07(pe07_in09),
    .b22_pe07(pe07_in10),
    .b23_pe07(pe07_in11),
    .b30_pe07(pe07_in12),
    .b31_pe07(pe07_in13),
    .b32_pe07(pe07_in14),
    .b33_pe07(pe07_in15),
    .b00_pe08(pe08_in00),
    .b01_pe08(pe08_in01),
    .b02_pe08(pe08_in02),
    .b03_pe08(pe08_in03),
    .b10_pe08(pe08_in04),
    .b11_pe08(pe08_in05),
    .b12_pe08(pe08_in06),
    .b13_pe08(pe08_in07),
    .b20_pe08(pe08_in08),
    .b21_pe08(pe08_in09),
    .b22_pe08(pe08_in10),
    .b23_pe08(pe08_in11),
    .b30_pe08(pe08_in12),
    .b31_pe08(pe08_in13),
    .b32_pe08(pe08_in14),
    .b33_pe08(pe08_in15),
    .b00_pe09(pe09_in00),
    .b01_pe09(pe09_in01),
    .b02_pe09(pe09_in02),
    .b03_pe09(pe09_in03),
    .b10_pe09(pe09_in04),
    .b11_pe09(pe09_in05),
    .b12_pe09(pe09_in06),
    .b13_pe09(pe09_in07),
    .b20_pe09(pe09_in08),
    .b21_pe09(pe09_in09),
    .b22_pe09(pe09_in10),
    .b23_pe09(pe09_in11),
    .b30_pe09(pe09_in12),
    .b31_pe09(pe09_in13),
    .b32_pe09(pe09_in14),
    .b33_pe09(pe09_in15),
    .b00_pe10(pe10_in00),
    .b01_pe10(pe10_in01),
    .b02_pe10(pe10_in02),
    .b03_pe10(pe10_in03),
    .b10_pe10(pe10_in04),
    .b11_pe10(pe10_in05),
    .b12_pe10(pe10_in06),
    .b13_pe10(pe10_in07),
    .b20_pe10(pe10_in08),
    .b21_pe10(pe10_in09),
    .b22_pe10(pe10_in10),
    .b23_pe10(pe10_in11),
    .b30_pe10(pe10_in12),
    .b31_pe10(pe10_in13),
    .b32_pe10(pe10_in14),
    .b33_pe10(pe10_in15),
    .b00_pe11(pe11_in00),
    .b01_pe11(pe11_in01),
    .b02_pe11(pe11_in02),
    .b03_pe11(pe11_in03),
    .b10_pe11(pe11_in04),
    .b11_pe11(pe11_in05),
    .b12_pe11(pe11_in06),
    .b13_pe11(pe11_in07),
    .b20_pe11(pe11_in08),
    .b21_pe11(pe11_in09),
    .b22_pe11(pe11_in10),
    .b23_pe11(pe11_in11),
    .b30_pe11(pe11_in12),
    .b31_pe11(pe11_in13),
    .b32_pe11(pe11_in14),
    .b33_pe11(pe11_in15),
    .b00_pe12(pe12_in00),
    .b01_pe12(pe12_in01),
    .b02_pe12(pe12_in02),
    .b03_pe12(pe12_in03),
    .b10_pe12(pe12_in04),
    .b11_pe12(pe12_in05),
    .b12_pe12(pe12_in06),
    .b13_pe12(pe12_in07),
    .b20_pe12(pe12_in08),
    .b21_pe12(pe12_in09),
    .b22_pe12(pe12_in10),
    .b23_pe12(pe12_in11),
    .b30_pe12(pe12_in12),
    .b31_pe12(pe12_in13),
    .b32_pe12(pe12_in14),
    .b33_pe12(pe12_in15),
    .b00_pe13(pe13_in00),
    .b01_pe13(pe13_in01),
    .b02_pe13(pe13_in02),
    .b03_pe13(pe13_in03),
    .b10_pe13(pe13_in04),
    .b11_pe13(pe13_in05),
    .b12_pe13(pe13_in06),
    .b13_pe13(pe13_in07),
    .b20_pe13(pe13_in08),
    .b21_pe13(pe13_in09),
    .b22_pe13(pe13_in10),
    .b23_pe13(pe13_in11),
    .b30_pe13(pe13_in12),
    .b31_pe13(pe13_in13),
    .b32_pe13(pe13_in14),
    .b33_pe13(pe13_in15),
    .b00_pe14(pe14_in00),
    .b01_pe14(pe14_in01),
    .b02_pe14(pe14_in02),
    .b03_pe14(pe14_in03),
    .b10_pe14(pe14_in04),
    .b11_pe14(pe14_in05),
    .b12_pe14(pe14_in06),
    .b13_pe14(pe14_in07),
    .b20_pe14(pe14_in08),
    .b21_pe14(pe14_in09),
    .b22_pe14(pe14_in10),
    .b23_pe14(pe14_in11),
    .b30_pe14(pe14_in12),
    .b31_pe14(pe14_in13),
    .b32_pe14(pe14_in14),
    .b33_pe14(pe14_in15),
    .b00_pe15(pe15_in00),
    .b01_pe15(pe15_in01),
    .b02_pe15(pe15_in02),
    .b03_pe15(pe15_in03),
    .b10_pe15(pe15_in04),
    .b11_pe15(pe15_in05),
    .b12_pe15(pe15_in06),
    .b13_pe15(pe15_in07),
    .b20_pe15(pe15_in08),
    .b21_pe15(pe15_in09),
    .b22_pe15(pe15_in10),
    .b23_pe15(pe15_in11),
    .b30_pe15(pe15_in12),
    .b31_pe15(pe15_in13),
    .b32_pe15(pe15_in14),
    .b33_pe15(pe15_in15),
    .out(cal_out)
);

mem20 mem20_1(
    .clk(clk),
    .en_input(mem20_en_input),
    .rst_n(rst_n),
    .data_raw(cal_out),
    .s_out_port(serial20)
);

endmodule
