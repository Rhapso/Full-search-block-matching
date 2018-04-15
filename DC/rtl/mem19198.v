/**************************************************************** 
  ** Title : 19*19*8bit register
  ** Project :  full-search block matching algorithm on VLSI
***************************************************************** 
  ** File :  mem19198.v
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


module mem19198
#(
    parameter   WORD_WIDETH =               8
)
(
    input                                   clk,
    input       [WORD_WIDETH*4-1:0]         input_raw,
    input       [3:0]                       ctr_word, // ==0 means do nothing inside
    input                                   en_input,
    input                                   init_mode,
    input                                   rst_n,
    output reg  [WORD_WIDETH-1:0]           pe00_in00,
    output reg  [WORD_WIDETH-1:0]           pe00_in01,
    output reg  [WORD_WIDETH-1:0]           pe00_in02,
    output reg  [WORD_WIDETH-1:0]           pe00_in03,
    output reg  [WORD_WIDETH-1:0]           pe00_in04,
    output reg  [WORD_WIDETH-1:0]           pe00_in05,
    output reg  [WORD_WIDETH-1:0]           pe00_in06,
    output reg  [WORD_WIDETH-1:0]           pe00_in07,
    output reg  [WORD_WIDETH-1:0]           pe00_in08,
    output reg  [WORD_WIDETH-1:0]           pe00_in09,
    output reg  [WORD_WIDETH-1:0]           pe00_in10,
    output reg  [WORD_WIDETH-1:0]           pe00_in11,
    output reg  [WORD_WIDETH-1:0]           pe00_in12,
    output reg  [WORD_WIDETH-1:0]           pe00_in13,
    output reg  [WORD_WIDETH-1:0]           pe00_in14,
    output reg  [WORD_WIDETH-1:0]           pe00_in15,
    output reg  [WORD_WIDETH-1:0]           pe01_in00,
    output reg  [WORD_WIDETH-1:0]           pe01_in01,
    output reg  [WORD_WIDETH-1:0]           pe01_in02,
    output reg  [WORD_WIDETH-1:0]           pe01_in03,
    output reg  [WORD_WIDETH-1:0]           pe01_in04,
    output reg  [WORD_WIDETH-1:0]           pe01_in05,
    output reg  [WORD_WIDETH-1:0]           pe01_in06,
    output reg  [WORD_WIDETH-1:0]           pe01_in07,
    output reg  [WORD_WIDETH-1:0]           pe01_in08,
    output reg  [WORD_WIDETH-1:0]           pe01_in09,
    output reg  [WORD_WIDETH-1:0]           pe01_in10,
    output reg  [WORD_WIDETH-1:0]           pe01_in11,
    output reg  [WORD_WIDETH-1:0]           pe01_in12,
    output reg  [WORD_WIDETH-1:0]           pe01_in13,
    output reg  [WORD_WIDETH-1:0]           pe01_in14,
    output reg  [WORD_WIDETH-1:0]           pe01_in15,
    output reg  [WORD_WIDETH-1:0]           pe02_in00,
    output reg  [WORD_WIDETH-1:0]           pe02_in01,
    output reg  [WORD_WIDETH-1:0]           pe02_in02,
    output reg  [WORD_WIDETH-1:0]           pe02_in03,
    output reg  [WORD_WIDETH-1:0]           pe02_in04,
    output reg  [WORD_WIDETH-1:0]           pe02_in05,
    output reg  [WORD_WIDETH-1:0]           pe02_in06,
    output reg  [WORD_WIDETH-1:0]           pe02_in07,
    output reg  [WORD_WIDETH-1:0]           pe02_in08,
    output reg  [WORD_WIDETH-1:0]           pe02_in09,
    output reg  [WORD_WIDETH-1:0]           pe02_in10,
    output reg  [WORD_WIDETH-1:0]           pe02_in11,
    output reg  [WORD_WIDETH-1:0]           pe02_in12,
    output reg  [WORD_WIDETH-1:0]           pe02_in13,
    output reg  [WORD_WIDETH-1:0]           pe02_in14,
    output reg  [WORD_WIDETH-1:0]           pe02_in15,
    output reg  [WORD_WIDETH-1:0]           pe03_in00,
    output reg  [WORD_WIDETH-1:0]           pe03_in01,
    output reg  [WORD_WIDETH-1:0]           pe03_in02,
    output reg  [WORD_WIDETH-1:0]           pe03_in03,
    output reg  [WORD_WIDETH-1:0]           pe03_in04,
    output reg  [WORD_WIDETH-1:0]           pe03_in05,
    output reg  [WORD_WIDETH-1:0]           pe03_in06,
    output reg  [WORD_WIDETH-1:0]           pe03_in07,
    output reg  [WORD_WIDETH-1:0]           pe03_in08,
    output reg  [WORD_WIDETH-1:0]           pe03_in09,
    output reg  [WORD_WIDETH-1:0]           pe03_in10,
    output reg  [WORD_WIDETH-1:0]           pe03_in11,
    output reg  [WORD_WIDETH-1:0]           pe03_in12,
    output reg  [WORD_WIDETH-1:0]           pe03_in13,
    output reg  [WORD_WIDETH-1:0]           pe03_in14,
    output reg  [WORD_WIDETH-1:0]           pe03_in15,
    output reg  [WORD_WIDETH-1:0]           pe04_in00,
    output reg  [WORD_WIDETH-1:0]           pe04_in01,
    output reg  [WORD_WIDETH-1:0]           pe04_in02,
    output reg  [WORD_WIDETH-1:0]           pe04_in03,
    output reg  [WORD_WIDETH-1:0]           pe04_in04,
    output reg  [WORD_WIDETH-1:0]           pe04_in05,
    output reg  [WORD_WIDETH-1:0]           pe04_in06,
    output reg  [WORD_WIDETH-1:0]           pe04_in07,
    output reg  [WORD_WIDETH-1:0]           pe04_in08,
    output reg  [WORD_WIDETH-1:0]           pe04_in09,
    output reg  [WORD_WIDETH-1:0]           pe04_in10,
    output reg  [WORD_WIDETH-1:0]           pe04_in11,
    output reg  [WORD_WIDETH-1:0]           pe04_in12,
    output reg  [WORD_WIDETH-1:0]           pe04_in13,
    output reg  [WORD_WIDETH-1:0]           pe04_in14,
    output reg  [WORD_WIDETH-1:0]           pe04_in15,
    output reg  [WORD_WIDETH-1:0]           pe05_in00,
    output reg  [WORD_WIDETH-1:0]           pe05_in01,
    output reg  [WORD_WIDETH-1:0]           pe05_in02,
    output reg  [WORD_WIDETH-1:0]           pe05_in03,
    output reg  [WORD_WIDETH-1:0]           pe05_in04,
    output reg  [WORD_WIDETH-1:0]           pe05_in05,
    output reg  [WORD_WIDETH-1:0]           pe05_in06,
    output reg  [WORD_WIDETH-1:0]           pe05_in07,
    output reg  [WORD_WIDETH-1:0]           pe05_in08,
    output reg  [WORD_WIDETH-1:0]           pe05_in09,
    output reg  [WORD_WIDETH-1:0]           pe05_in10,
    output reg  [WORD_WIDETH-1:0]           pe05_in11,
    output reg  [WORD_WIDETH-1:0]           pe05_in12,
    output reg  [WORD_WIDETH-1:0]           pe05_in13,
    output reg  [WORD_WIDETH-1:0]           pe05_in14,
    output reg  [WORD_WIDETH-1:0]           pe05_in15,
    output reg  [WORD_WIDETH-1:0]           pe06_in00,
    output reg  [WORD_WIDETH-1:0]           pe06_in01,
    output reg  [WORD_WIDETH-1:0]           pe06_in02,
    output reg  [WORD_WIDETH-1:0]           pe06_in03,
    output reg  [WORD_WIDETH-1:0]           pe06_in04,
    output reg  [WORD_WIDETH-1:0]           pe06_in05,
    output reg  [WORD_WIDETH-1:0]           pe06_in06,
    output reg  [WORD_WIDETH-1:0]           pe06_in07,
    output reg  [WORD_WIDETH-1:0]           pe06_in08,
    output reg  [WORD_WIDETH-1:0]           pe06_in09,
    output reg  [WORD_WIDETH-1:0]           pe06_in10,
    output reg  [WORD_WIDETH-1:0]           pe06_in11,
    output reg  [WORD_WIDETH-1:0]           pe06_in12,
    output reg  [WORD_WIDETH-1:0]           pe06_in13,
    output reg  [WORD_WIDETH-1:0]           pe06_in14,
    output reg  [WORD_WIDETH-1:0]           pe06_in15,
    output reg  [WORD_WIDETH-1:0]           pe07_in00,
    output reg  [WORD_WIDETH-1:0]           pe07_in01,
    output reg  [WORD_WIDETH-1:0]           pe07_in02,
    output reg  [WORD_WIDETH-1:0]           pe07_in03,
    output reg  [WORD_WIDETH-1:0]           pe07_in04,
    output reg  [WORD_WIDETH-1:0]           pe07_in05,
    output reg  [WORD_WIDETH-1:0]           pe07_in06,
    output reg  [WORD_WIDETH-1:0]           pe07_in07,
    output reg  [WORD_WIDETH-1:0]           pe07_in08,
    output reg  [WORD_WIDETH-1:0]           pe07_in09,
    output reg  [WORD_WIDETH-1:0]           pe07_in10,
    output reg  [WORD_WIDETH-1:0]           pe07_in11,
    output reg  [WORD_WIDETH-1:0]           pe07_in12,
    output reg  [WORD_WIDETH-1:0]           pe07_in13,
    output reg  [WORD_WIDETH-1:0]           pe07_in14,
    output reg  [WORD_WIDETH-1:0]           pe07_in15,
    output reg  [WORD_WIDETH-1:0]           pe08_in00,
    output reg  [WORD_WIDETH-1:0]           pe08_in01,
    output reg  [WORD_WIDETH-1:0]           pe08_in02,
    output reg  [WORD_WIDETH-1:0]           pe08_in03,
    output reg  [WORD_WIDETH-1:0]           pe08_in04,
    output reg  [WORD_WIDETH-1:0]           pe08_in05,
    output reg  [WORD_WIDETH-1:0]           pe08_in06,
    output reg  [WORD_WIDETH-1:0]           pe08_in07,
    output reg  [WORD_WIDETH-1:0]           pe08_in08,
    output reg  [WORD_WIDETH-1:0]           pe08_in09,
    output reg  [WORD_WIDETH-1:0]           pe08_in10,
    output reg  [WORD_WIDETH-1:0]           pe08_in11,
    output reg  [WORD_WIDETH-1:0]           pe08_in12,
    output reg  [WORD_WIDETH-1:0]           pe08_in13,
    output reg  [WORD_WIDETH-1:0]           pe08_in14,
    output reg  [WORD_WIDETH-1:0]           pe08_in15,
    output reg  [WORD_WIDETH-1:0]           pe09_in00,
    output reg  [WORD_WIDETH-1:0]           pe09_in01,
    output reg  [WORD_WIDETH-1:0]           pe09_in02,
    output reg  [WORD_WIDETH-1:0]           pe09_in03,
    output reg  [WORD_WIDETH-1:0]           pe09_in04,
    output reg  [WORD_WIDETH-1:0]           pe09_in05,
    output reg  [WORD_WIDETH-1:0]           pe09_in06,
    output reg  [WORD_WIDETH-1:0]           pe09_in07,
    output reg  [WORD_WIDETH-1:0]           pe09_in08,
    output reg  [WORD_WIDETH-1:0]           pe09_in09,
    output reg  [WORD_WIDETH-1:0]           pe09_in10,
    output reg  [WORD_WIDETH-1:0]           pe09_in11,
    output reg  [WORD_WIDETH-1:0]           pe09_in12,
    output reg  [WORD_WIDETH-1:0]           pe09_in13,
    output reg  [WORD_WIDETH-1:0]           pe09_in14,
    output reg  [WORD_WIDETH-1:0]           pe09_in15,
    output reg  [WORD_WIDETH-1:0]           pe10_in00,
    output reg  [WORD_WIDETH-1:0]           pe10_in01,
    output reg  [WORD_WIDETH-1:0]           pe10_in02,
    output reg  [WORD_WIDETH-1:0]           pe10_in03,
    output reg  [WORD_WIDETH-1:0]           pe10_in04,
    output reg  [WORD_WIDETH-1:0]           pe10_in05,
    output reg  [WORD_WIDETH-1:0]           pe10_in06,
    output reg  [WORD_WIDETH-1:0]           pe10_in07,
    output reg  [WORD_WIDETH-1:0]           pe10_in08,
    output reg  [WORD_WIDETH-1:0]           pe10_in09,
    output reg  [WORD_WIDETH-1:0]           pe10_in10,
    output reg  [WORD_WIDETH-1:0]           pe10_in11,
    output reg  [WORD_WIDETH-1:0]           pe10_in12,
    output reg  [WORD_WIDETH-1:0]           pe10_in13,
    output reg  [WORD_WIDETH-1:0]           pe10_in14,
    output reg  [WORD_WIDETH-1:0]           pe10_in15,
    output reg  [WORD_WIDETH-1:0]           pe11_in00,
    output reg  [WORD_WIDETH-1:0]           pe11_in01,
    output reg  [WORD_WIDETH-1:0]           pe11_in02,
    output reg  [WORD_WIDETH-1:0]           pe11_in03,
    output reg  [WORD_WIDETH-1:0]           pe11_in04,
    output reg  [WORD_WIDETH-1:0]           pe11_in05,
    output reg  [WORD_WIDETH-1:0]           pe11_in06,
    output reg  [WORD_WIDETH-1:0]           pe11_in07,
    output reg  [WORD_WIDETH-1:0]           pe11_in08,
    output reg  [WORD_WIDETH-1:0]           pe11_in09,
    output reg  [WORD_WIDETH-1:0]           pe11_in10,
    output reg  [WORD_WIDETH-1:0]           pe11_in11,
    output reg  [WORD_WIDETH-1:0]           pe11_in12,
    output reg  [WORD_WIDETH-1:0]           pe11_in13,
    output reg  [WORD_WIDETH-1:0]           pe11_in14,
    output reg  [WORD_WIDETH-1:0]           pe11_in15,
    output reg  [WORD_WIDETH-1:0]           pe12_in00,
    output reg  [WORD_WIDETH-1:0]           pe12_in01,
    output reg  [WORD_WIDETH-1:0]           pe12_in02,
    output reg  [WORD_WIDETH-1:0]           pe12_in03,
    output reg  [WORD_WIDETH-1:0]           pe12_in04,
    output reg  [WORD_WIDETH-1:0]           pe12_in05,
    output reg  [WORD_WIDETH-1:0]           pe12_in06,
    output reg  [WORD_WIDETH-1:0]           pe12_in07,
    output reg  [WORD_WIDETH-1:0]           pe12_in08,
    output reg  [WORD_WIDETH-1:0]           pe12_in09,
    output reg  [WORD_WIDETH-1:0]           pe12_in10,
    output reg  [WORD_WIDETH-1:0]           pe12_in11,
    output reg  [WORD_WIDETH-1:0]           pe12_in12,
    output reg  [WORD_WIDETH-1:0]           pe12_in13,
    output reg  [WORD_WIDETH-1:0]           pe12_in14,
    output reg  [WORD_WIDETH-1:0]           pe12_in15,
    output reg  [WORD_WIDETH-1:0]           pe13_in00,
    output reg  [WORD_WIDETH-1:0]           pe13_in01,
    output reg  [WORD_WIDETH-1:0]           pe13_in02,
    output reg  [WORD_WIDETH-1:0]           pe13_in03,
    output reg  [WORD_WIDETH-1:0]           pe13_in04,
    output reg  [WORD_WIDETH-1:0]           pe13_in05,
    output reg  [WORD_WIDETH-1:0]           pe13_in06,
    output reg  [WORD_WIDETH-1:0]           pe13_in07,
    output reg  [WORD_WIDETH-1:0]           pe13_in08,
    output reg  [WORD_WIDETH-1:0]           pe13_in09,
    output reg  [WORD_WIDETH-1:0]           pe13_in10,
    output reg  [WORD_WIDETH-1:0]           pe13_in11,
    output reg  [WORD_WIDETH-1:0]           pe13_in12,
    output reg  [WORD_WIDETH-1:0]           pe13_in13,
    output reg  [WORD_WIDETH-1:0]           pe13_in14,
    output reg  [WORD_WIDETH-1:0]           pe13_in15,
    output reg  [WORD_WIDETH-1:0]           pe14_in00,
    output reg  [WORD_WIDETH-1:0]           pe14_in01,
    output reg  [WORD_WIDETH-1:0]           pe14_in02,
    output reg  [WORD_WIDETH-1:0]           pe14_in03,
    output reg  [WORD_WIDETH-1:0]           pe14_in04,
    output reg  [WORD_WIDETH-1:0]           pe14_in05,
    output reg  [WORD_WIDETH-1:0]           pe14_in06,
    output reg  [WORD_WIDETH-1:0]           pe14_in07,
    output reg  [WORD_WIDETH-1:0]           pe14_in08,
    output reg  [WORD_WIDETH-1:0]           pe14_in09,
    output reg  [WORD_WIDETH-1:0]           pe14_in10,
    output reg  [WORD_WIDETH-1:0]           pe14_in11,
    output reg  [WORD_WIDETH-1:0]           pe14_in12,
    output reg  [WORD_WIDETH-1:0]           pe14_in13,
    output reg  [WORD_WIDETH-1:0]           pe14_in14,
    output reg  [WORD_WIDETH-1:0]           pe14_in15,
    output reg  [WORD_WIDETH-1:0]           pe15_in00,
    output reg  [WORD_WIDETH-1:0]           pe15_in01,
    output reg  [WORD_WIDETH-1:0]           pe15_in02,
    output reg  [WORD_WIDETH-1:0]           pe15_in03,
    output reg  [WORD_WIDETH-1:0]           pe15_in04,
    output reg  [WORD_WIDETH-1:0]           pe15_in05,
    output reg  [WORD_WIDETH-1:0]           pe15_in06,
    output reg  [WORD_WIDETH-1:0]           pe15_in07,
    output reg  [WORD_WIDETH-1:0]           pe15_in08,
    output reg  [WORD_WIDETH-1:0]           pe15_in09,
    output reg  [WORD_WIDETH-1:0]           pe15_in10,
    output reg  [WORD_WIDETH-1:0]           pe15_in11,
    output reg  [WORD_WIDETH-1:0]           pe15_in12,
    output reg  [WORD_WIDETH-1:0]           pe15_in13,
    output reg  [WORD_WIDETH-1:0]           pe15_in14,
    output reg  [WORD_WIDETH-1:0]           pe15_in15
);
reg [WORD_WIDETH-1:0]           mem0000;
reg [WORD_WIDETH-1:0]           mem0001;
reg [WORD_WIDETH-1:0]           mem0002;
reg [WORD_WIDETH-1:0]           mem0003;
reg [WORD_WIDETH-1:0]           mem0004;
reg [WORD_WIDETH-1:0]           mem0005;
reg [WORD_WIDETH-1:0]           mem0006;
reg [WORD_WIDETH-1:0]           mem0007;
reg [WORD_WIDETH-1:0]           mem0008;
reg [WORD_WIDETH-1:0]           mem0009;
reg [WORD_WIDETH-1:0]           mem0010;
reg [WORD_WIDETH-1:0]           mem0011;
reg [WORD_WIDETH-1:0]           mem0012;
reg [WORD_WIDETH-1:0]           mem0013;
reg [WORD_WIDETH-1:0]           mem0014;
reg [WORD_WIDETH-1:0]           mem0015;
reg [WORD_WIDETH-1:0]           mem0016;
reg [WORD_WIDETH-1:0]           mem0017;
reg [WORD_WIDETH-1:0]           mem0018;
reg [WORD_WIDETH-1:0]           mem0100;
reg [WORD_WIDETH-1:0]           mem0101;
reg [WORD_WIDETH-1:0]           mem0102;
reg [WORD_WIDETH-1:0]           mem0103;
reg [WORD_WIDETH-1:0]           mem0104;
reg [WORD_WIDETH-1:0]           mem0105;
reg [WORD_WIDETH-1:0]           mem0106;
reg [WORD_WIDETH-1:0]           mem0107;
reg [WORD_WIDETH-1:0]           mem0108;
reg [WORD_WIDETH-1:0]           mem0109;
reg [WORD_WIDETH-1:0]           mem0110;
reg [WORD_WIDETH-1:0]           mem0111;
reg [WORD_WIDETH-1:0]           mem0112;
reg [WORD_WIDETH-1:0]           mem0113;
reg [WORD_WIDETH-1:0]           mem0114;
reg [WORD_WIDETH-1:0]           mem0115;
reg [WORD_WIDETH-1:0]           mem0116;
reg [WORD_WIDETH-1:0]           mem0117;
reg [WORD_WIDETH-1:0]           mem0118;
reg [WORD_WIDETH-1:0]           mem0200;
reg [WORD_WIDETH-1:0]           mem0201;
reg [WORD_WIDETH-1:0]           mem0202;
reg [WORD_WIDETH-1:0]           mem0203;
reg [WORD_WIDETH-1:0]           mem0204;
reg [WORD_WIDETH-1:0]           mem0205;
reg [WORD_WIDETH-1:0]           mem0206;
reg [WORD_WIDETH-1:0]           mem0207;
reg [WORD_WIDETH-1:0]           mem0208;
reg [WORD_WIDETH-1:0]           mem0209;
reg [WORD_WIDETH-1:0]           mem0210;
reg [WORD_WIDETH-1:0]           mem0211;
reg [WORD_WIDETH-1:0]           mem0212;
reg [WORD_WIDETH-1:0]           mem0213;
reg [WORD_WIDETH-1:0]           mem0214;
reg [WORD_WIDETH-1:0]           mem0215;
reg [WORD_WIDETH-1:0]           mem0216;
reg [WORD_WIDETH-1:0]           mem0217;
reg [WORD_WIDETH-1:0]           mem0218;
reg [WORD_WIDETH-1:0]           mem0300;
reg [WORD_WIDETH-1:0]           mem0301;
reg [WORD_WIDETH-1:0]           mem0302;
reg [WORD_WIDETH-1:0]           mem0303;
reg [WORD_WIDETH-1:0]           mem0304;
reg [WORD_WIDETH-1:0]           mem0305;
reg [WORD_WIDETH-1:0]           mem0306;
reg [WORD_WIDETH-1:0]           mem0307;
reg [WORD_WIDETH-1:0]           mem0308;
reg [WORD_WIDETH-1:0]           mem0309;
reg [WORD_WIDETH-1:0]           mem0310;
reg [WORD_WIDETH-1:0]           mem0311;
reg [WORD_WIDETH-1:0]           mem0312;
reg [WORD_WIDETH-1:0]           mem0313;
reg [WORD_WIDETH-1:0]           mem0314;
reg [WORD_WIDETH-1:0]           mem0315;
reg [WORD_WIDETH-1:0]           mem0316;
reg [WORD_WIDETH-1:0]           mem0317;
reg [WORD_WIDETH-1:0]           mem0318;
reg [WORD_WIDETH-1:0]           mem0400;
reg [WORD_WIDETH-1:0]           mem0401;
reg [WORD_WIDETH-1:0]           mem0402;
reg [WORD_WIDETH-1:0]           mem0403;
reg [WORD_WIDETH-1:0]           mem0404;
reg [WORD_WIDETH-1:0]           mem0405;
reg [WORD_WIDETH-1:0]           mem0406;
reg [WORD_WIDETH-1:0]           mem0407;
reg [WORD_WIDETH-1:0]           mem0408;
reg [WORD_WIDETH-1:0]           mem0409;
reg [WORD_WIDETH-1:0]           mem0410;
reg [WORD_WIDETH-1:0]           mem0411;
reg [WORD_WIDETH-1:0]           mem0412;
reg [WORD_WIDETH-1:0]           mem0413;
reg [WORD_WIDETH-1:0]           mem0414;
reg [WORD_WIDETH-1:0]           mem0415;
reg [WORD_WIDETH-1:0]           mem0416;
reg [WORD_WIDETH-1:0]           mem0417;
reg [WORD_WIDETH-1:0]           mem0418;
reg [WORD_WIDETH-1:0]           mem0500;
reg [WORD_WIDETH-1:0]           mem0501;
reg [WORD_WIDETH-1:0]           mem0502;
reg [WORD_WIDETH-1:0]           mem0503;
reg [WORD_WIDETH-1:0]           mem0504;
reg [WORD_WIDETH-1:0]           mem0505;
reg [WORD_WIDETH-1:0]           mem0506;
reg [WORD_WIDETH-1:0]           mem0507;
reg [WORD_WIDETH-1:0]           mem0508;
reg [WORD_WIDETH-1:0]           mem0509;
reg [WORD_WIDETH-1:0]           mem0510;
reg [WORD_WIDETH-1:0]           mem0511;
reg [WORD_WIDETH-1:0]           mem0512;
reg [WORD_WIDETH-1:0]           mem0513;
reg [WORD_WIDETH-1:0]           mem0514;
reg [WORD_WIDETH-1:0]           mem0515;
reg [WORD_WIDETH-1:0]           mem0516;
reg [WORD_WIDETH-1:0]           mem0517;
reg [WORD_WIDETH-1:0]           mem0518;
reg [WORD_WIDETH-1:0]           mem0600;
reg [WORD_WIDETH-1:0]           mem0601;
reg [WORD_WIDETH-1:0]           mem0602;
reg [WORD_WIDETH-1:0]           mem0603;
reg [WORD_WIDETH-1:0]           mem0604;
reg [WORD_WIDETH-1:0]           mem0605;
reg [WORD_WIDETH-1:0]           mem0606;
reg [WORD_WIDETH-1:0]           mem0607;
reg [WORD_WIDETH-1:0]           mem0608;
reg [WORD_WIDETH-1:0]           mem0609;
reg [WORD_WIDETH-1:0]           mem0610;
reg [WORD_WIDETH-1:0]           mem0611;
reg [WORD_WIDETH-1:0]           mem0612;
reg [WORD_WIDETH-1:0]           mem0613;
reg [WORD_WIDETH-1:0]           mem0614;
reg [WORD_WIDETH-1:0]           mem0615;
reg [WORD_WIDETH-1:0]           mem0616;
reg [WORD_WIDETH-1:0]           mem0617;
reg [WORD_WIDETH-1:0]           mem0618;
reg [WORD_WIDETH-1:0]           mem0700;
reg [WORD_WIDETH-1:0]           mem0701;
reg [WORD_WIDETH-1:0]           mem0702;
reg [WORD_WIDETH-1:0]           mem0703;
reg [WORD_WIDETH-1:0]           mem0704;
reg [WORD_WIDETH-1:0]           mem0705;
reg [WORD_WIDETH-1:0]           mem0706;
reg [WORD_WIDETH-1:0]           mem0707;
reg [WORD_WIDETH-1:0]           mem0708;
reg [WORD_WIDETH-1:0]           mem0709;
reg [WORD_WIDETH-1:0]           mem0710;
reg [WORD_WIDETH-1:0]           mem0711;
reg [WORD_WIDETH-1:0]           mem0712;
reg [WORD_WIDETH-1:0]           mem0713;
reg [WORD_WIDETH-1:0]           mem0714;
reg [WORD_WIDETH-1:0]           mem0715;
reg [WORD_WIDETH-1:0]           mem0716;
reg [WORD_WIDETH-1:0]           mem0717;
reg [WORD_WIDETH-1:0]           mem0718;
reg [WORD_WIDETH-1:0]           mem0800;
reg [WORD_WIDETH-1:0]           mem0801;
reg [WORD_WIDETH-1:0]           mem0802;
reg [WORD_WIDETH-1:0]           mem0803;
reg [WORD_WIDETH-1:0]           mem0804;
reg [WORD_WIDETH-1:0]           mem0805;
reg [WORD_WIDETH-1:0]           mem0806;
reg [WORD_WIDETH-1:0]           mem0807;
reg [WORD_WIDETH-1:0]           mem0808;
reg [WORD_WIDETH-1:0]           mem0809;
reg [WORD_WIDETH-1:0]           mem0810;
reg [WORD_WIDETH-1:0]           mem0811;
reg [WORD_WIDETH-1:0]           mem0812;
reg [WORD_WIDETH-1:0]           mem0813;
reg [WORD_WIDETH-1:0]           mem0814;
reg [WORD_WIDETH-1:0]           mem0815;
reg [WORD_WIDETH-1:0]           mem0816;
reg [WORD_WIDETH-1:0]           mem0817;
reg [WORD_WIDETH-1:0]           mem0818;
reg [WORD_WIDETH-1:0]           mem0900;
reg [WORD_WIDETH-1:0]           mem0901;
reg [WORD_WIDETH-1:0]           mem0902;
reg [WORD_WIDETH-1:0]           mem0903;
reg [WORD_WIDETH-1:0]           mem0904;
reg [WORD_WIDETH-1:0]           mem0905;
reg [WORD_WIDETH-1:0]           mem0906;
reg [WORD_WIDETH-1:0]           mem0907;
reg [WORD_WIDETH-1:0]           mem0908;
reg [WORD_WIDETH-1:0]           mem0909;
reg [WORD_WIDETH-1:0]           mem0910;
reg [WORD_WIDETH-1:0]           mem0911;
reg [WORD_WIDETH-1:0]           mem0912;
reg [WORD_WIDETH-1:0]           mem0913;
reg [WORD_WIDETH-1:0]           mem0914;
reg [WORD_WIDETH-1:0]           mem0915;
reg [WORD_WIDETH-1:0]           mem0916;
reg [WORD_WIDETH-1:0]           mem0917;
reg [WORD_WIDETH-1:0]           mem0918;
reg [WORD_WIDETH-1:0]           mem1000;
reg [WORD_WIDETH-1:0]           mem1001;
reg [WORD_WIDETH-1:0]           mem1002;
reg [WORD_WIDETH-1:0]           mem1003;
reg [WORD_WIDETH-1:0]           mem1004;
reg [WORD_WIDETH-1:0]           mem1005;
reg [WORD_WIDETH-1:0]           mem1006;
reg [WORD_WIDETH-1:0]           mem1007;
reg [WORD_WIDETH-1:0]           mem1008;
reg [WORD_WIDETH-1:0]           mem1009;
reg [WORD_WIDETH-1:0]           mem1010;
reg [WORD_WIDETH-1:0]           mem1011;
reg [WORD_WIDETH-1:0]           mem1012;
reg [WORD_WIDETH-1:0]           mem1013;
reg [WORD_WIDETH-1:0]           mem1014;
reg [WORD_WIDETH-1:0]           mem1015;
reg [WORD_WIDETH-1:0]           mem1016;
reg [WORD_WIDETH-1:0]           mem1017;
reg [WORD_WIDETH-1:0]           mem1018;
reg [WORD_WIDETH-1:0]           mem1100;
reg [WORD_WIDETH-1:0]           mem1101;
reg [WORD_WIDETH-1:0]           mem1102;
reg [WORD_WIDETH-1:0]           mem1103;
reg [WORD_WIDETH-1:0]           mem1104;
reg [WORD_WIDETH-1:0]           mem1105;
reg [WORD_WIDETH-1:0]           mem1106;
reg [WORD_WIDETH-1:0]           mem1107;
reg [WORD_WIDETH-1:0]           mem1108;
reg [WORD_WIDETH-1:0]           mem1109;
reg [WORD_WIDETH-1:0]           mem1110;
reg [WORD_WIDETH-1:0]           mem1111;
reg [WORD_WIDETH-1:0]           mem1112;
reg [WORD_WIDETH-1:0]           mem1113;
reg [WORD_WIDETH-1:0]           mem1114;
reg [WORD_WIDETH-1:0]           mem1115;
reg [WORD_WIDETH-1:0]           mem1116;
reg [WORD_WIDETH-1:0]           mem1117;
reg [WORD_WIDETH-1:0]           mem1118;
reg [WORD_WIDETH-1:0]           mem1200;
reg [WORD_WIDETH-1:0]           mem1201;
reg [WORD_WIDETH-1:0]           mem1202;
reg [WORD_WIDETH-1:0]           mem1203;
reg [WORD_WIDETH-1:0]           mem1204;
reg [WORD_WIDETH-1:0]           mem1205;
reg [WORD_WIDETH-1:0]           mem1206;
reg [WORD_WIDETH-1:0]           mem1207;
reg [WORD_WIDETH-1:0]           mem1208;
reg [WORD_WIDETH-1:0]           mem1209;
reg [WORD_WIDETH-1:0]           mem1210;
reg [WORD_WIDETH-1:0]           mem1211;
reg [WORD_WIDETH-1:0]           mem1212;
reg [WORD_WIDETH-1:0]           mem1213;
reg [WORD_WIDETH-1:0]           mem1214;
reg [WORD_WIDETH-1:0]           mem1215;
reg [WORD_WIDETH-1:0]           mem1216;
reg [WORD_WIDETH-1:0]           mem1217;
reg [WORD_WIDETH-1:0]           mem1218;
reg [WORD_WIDETH-1:0]           mem1300;
reg [WORD_WIDETH-1:0]           mem1301;
reg [WORD_WIDETH-1:0]           mem1302;
reg [WORD_WIDETH-1:0]           mem1303;
reg [WORD_WIDETH-1:0]           mem1304;
reg [WORD_WIDETH-1:0]           mem1305;
reg [WORD_WIDETH-1:0]           mem1306;
reg [WORD_WIDETH-1:0]           mem1307;
reg [WORD_WIDETH-1:0]           mem1308;
reg [WORD_WIDETH-1:0]           mem1309;
reg [WORD_WIDETH-1:0]           mem1310;
reg [WORD_WIDETH-1:0]           mem1311;
reg [WORD_WIDETH-1:0]           mem1312;
reg [WORD_WIDETH-1:0]           mem1313;
reg [WORD_WIDETH-1:0]           mem1314;
reg [WORD_WIDETH-1:0]           mem1315;
reg [WORD_WIDETH-1:0]           mem1316;
reg [WORD_WIDETH-1:0]           mem1317;
reg [WORD_WIDETH-1:0]           mem1318;
reg [WORD_WIDETH-1:0]           mem1400;
reg [WORD_WIDETH-1:0]           mem1401;
reg [WORD_WIDETH-1:0]           mem1402;
reg [WORD_WIDETH-1:0]           mem1403;
reg [WORD_WIDETH-1:0]           mem1404;
reg [WORD_WIDETH-1:0]           mem1405;
reg [WORD_WIDETH-1:0]           mem1406;
reg [WORD_WIDETH-1:0]           mem1407;
reg [WORD_WIDETH-1:0]           mem1408;
reg [WORD_WIDETH-1:0]           mem1409;
reg [WORD_WIDETH-1:0]           mem1410;
reg [WORD_WIDETH-1:0]           mem1411;
reg [WORD_WIDETH-1:0]           mem1412;
reg [WORD_WIDETH-1:0]           mem1413;
reg [WORD_WIDETH-1:0]           mem1414;
reg [WORD_WIDETH-1:0]           mem1415;
reg [WORD_WIDETH-1:0]           mem1416;
reg [WORD_WIDETH-1:0]           mem1417;
reg [WORD_WIDETH-1:0]           mem1418;
reg [WORD_WIDETH-1:0]           mem1500;
reg [WORD_WIDETH-1:0]           mem1501;
reg [WORD_WIDETH-1:0]           mem1502;
reg [WORD_WIDETH-1:0]           mem1503;
reg [WORD_WIDETH-1:0]           mem1504;
reg [WORD_WIDETH-1:0]           mem1505;
reg [WORD_WIDETH-1:0]           mem1506;
reg [WORD_WIDETH-1:0]           mem1507;
reg [WORD_WIDETH-1:0]           mem1508;
reg [WORD_WIDETH-1:0]           mem1509;
reg [WORD_WIDETH-1:0]           mem1510;
reg [WORD_WIDETH-1:0]           mem1511;
reg [WORD_WIDETH-1:0]           mem1512;
reg [WORD_WIDETH-1:0]           mem1513;
reg [WORD_WIDETH-1:0]           mem1514;
reg [WORD_WIDETH-1:0]           mem1515;
reg [WORD_WIDETH-1:0]           mem1516;
reg [WORD_WIDETH-1:0]           mem1517;
reg [WORD_WIDETH-1:0]           mem1518;
reg [WORD_WIDETH-1:0]           mem1600;
reg [WORD_WIDETH-1:0]           mem1601;
reg [WORD_WIDETH-1:0]           mem1602;
reg [WORD_WIDETH-1:0]           mem1603;
reg [WORD_WIDETH-1:0]           mem1604;
reg [WORD_WIDETH-1:0]           mem1605;
reg [WORD_WIDETH-1:0]           mem1606;
reg [WORD_WIDETH-1:0]           mem1607;
reg [WORD_WIDETH-1:0]           mem1608;
reg [WORD_WIDETH-1:0]           mem1609;
reg [WORD_WIDETH-1:0]           mem1610;
reg [WORD_WIDETH-1:0]           mem1611;
reg [WORD_WIDETH-1:0]           mem1612;
reg [WORD_WIDETH-1:0]           mem1613;
reg [WORD_WIDETH-1:0]           mem1614;
reg [WORD_WIDETH-1:0]           mem1615;
reg [WORD_WIDETH-1:0]           mem1616;
reg [WORD_WIDETH-1:0]           mem1617;
reg [WORD_WIDETH-1:0]           mem1618;
reg [WORD_WIDETH-1:0]           mem1700;
reg [WORD_WIDETH-1:0]           mem1701;
reg [WORD_WIDETH-1:0]           mem1702;
reg [WORD_WIDETH-1:0]           mem1703;
reg [WORD_WIDETH-1:0]           mem1704;
reg [WORD_WIDETH-1:0]           mem1705;
reg [WORD_WIDETH-1:0]           mem1706;
reg [WORD_WIDETH-1:0]           mem1707;
reg [WORD_WIDETH-1:0]           mem1708;
reg [WORD_WIDETH-1:0]           mem1709;
reg [WORD_WIDETH-1:0]           mem1710;
reg [WORD_WIDETH-1:0]           mem1711;
reg [WORD_WIDETH-1:0]           mem1712;
reg [WORD_WIDETH-1:0]           mem1713;
reg [WORD_WIDETH-1:0]           mem1714;
reg [WORD_WIDETH-1:0]           mem1715;
reg [WORD_WIDETH-1:0]           mem1716;
reg [WORD_WIDETH-1:0]           mem1717;
reg [WORD_WIDETH-1:0]           mem1718;
reg [WORD_WIDETH-1:0]           mem1800;
reg [WORD_WIDETH-1:0]           mem1801;
reg [WORD_WIDETH-1:0]           mem1802;
reg [WORD_WIDETH-1:0]           mem1803;
reg [WORD_WIDETH-1:0]           mem1804;
reg [WORD_WIDETH-1:0]           mem1805;
reg [WORD_WIDETH-1:0]           mem1806;
reg [WORD_WIDETH-1:0]           mem1807;
reg [WORD_WIDETH-1:0]           mem1808;
reg [WORD_WIDETH-1:0]           mem1809;
reg [WORD_WIDETH-1:0]           mem1810;
reg [WORD_WIDETH-1:0]           mem1811;
reg [WORD_WIDETH-1:0]           mem1812;
reg [WORD_WIDETH-1:0]           mem1813;
reg [WORD_WIDETH-1:0]           mem1814;
reg [WORD_WIDETH-1:0]           mem1815;
reg [WORD_WIDETH-1:0]           mem1816;
reg [WORD_WIDETH-1:0]           mem1817;
reg [WORD_WIDETH-1:0]           mem1818;

wire [WORD_WIDETH*19-1:0]       memline00;
wire [WORD_WIDETH*19-1:0]       memline01;
wire [WORD_WIDETH*19-1:0]       memline02;
wire [WORD_WIDETH*19-1:0]       memline03;
wire [WORD_WIDETH*19-1:0]       memline04;
wire [WORD_WIDETH*19-1:0]       memline05;
wire [WORD_WIDETH*19-1:0]       memline06;
wire [WORD_WIDETH*19-1:0]       memline07;
wire [WORD_WIDETH*19-1:0]       memline08;
wire [WORD_WIDETH*19-1:0]       memline09;
wire [WORD_WIDETH*19-1:0]       memline10;
wire [WORD_WIDETH*19-1:0]       memline11;
wire [WORD_WIDETH*19-1:0]       memline12;
wire [WORD_WIDETH*19-1:0]       memline13;
wire [WORD_WIDETH*19-1:0]       memline14;
wire [WORD_WIDETH*19-1:0]       memline15;
wire [WORD_WIDETH*19-1:0]       memline16;
wire [WORD_WIDETH*19-1:0]       memline17;
wire [WORD_WIDETH*19-1:0]       memline18;

assign memline00 = {mem0000,mem0001,mem0002,mem0003,mem0004,mem0005,mem0006,mem0007,mem0008,mem0009,mem0010,mem0011,mem0012,mem0013,mem0014,mem0015,mem0016,mem0017,mem0018};
assign memline01 = {mem0100,mem0101,mem0102,mem0103,mem0104,mem0105,mem0106,mem0107,mem0108,mem0109,mem0110,mem0111,mem0112,mem0113,mem0114,mem0115,mem0116,mem0117,mem0118};
assign memline02 = {mem0200,mem0201,mem0202,mem0203,mem0204,mem0205,mem0206,mem0207,mem0208,mem0209,mem0210,mem0211,mem0212,mem0213,mem0214,mem0215,mem0216,mem0217,mem0218};
assign memline03 = {mem0300,mem0301,mem0302,mem0303,mem0304,mem0305,mem0306,mem0307,mem0308,mem0309,mem0310,mem0311,mem0312,mem0313,mem0314,mem0315,mem0316,mem0317,mem0318};
assign memline04 = {mem0400,mem0401,mem0402,mem0403,mem0404,mem0405,mem0406,mem0407,mem0408,mem0409,mem0410,mem0411,mem0412,mem0413,mem0414,mem0415,mem0416,mem0417,mem0418};
assign memline05 = {mem0500,mem0501,mem0502,mem0503,mem0504,mem0505,mem0506,mem0507,mem0508,mem0509,mem0510,mem0511,mem0512,mem0513,mem0514,mem0515,mem0516,mem0517,mem0518};
assign memline06 = {mem0600,mem0601,mem0602,mem0603,mem0604,mem0605,mem0606,mem0607,mem0608,mem0609,mem0610,mem0611,mem0612,mem0613,mem0614,mem0615,mem0616,mem0617,mem0618};
assign memline07 = {mem0700,mem0701,mem0702,mem0703,mem0704,mem0705,mem0706,mem0707,mem0708,mem0709,mem0710,mem0711,mem0712,mem0713,mem0714,mem0715,mem0716,mem0717,mem0718};
assign memline08 = {mem0800,mem0801,mem0802,mem0803,mem0804,mem0805,mem0806,mem0807,mem0808,mem0809,mem0810,mem0811,mem0812,mem0813,mem0814,mem0815,mem0816,mem0817,mem0818};
assign memline09 = {mem0900,mem0901,mem0902,mem0903,mem0904,mem0905,mem0906,mem0907,mem0908,mem0909,mem0910,mem0911,mem0912,mem0913,mem0914,mem0915,mem0916,mem0917,mem0918};
assign memline10 = {mem1000,mem1001,mem1002,mem1003,mem1004,mem1005,mem1006,mem1007,mem1008,mem1009,mem1010,mem1011,mem1012,mem1013,mem1014,mem1015,mem1016,mem1017,mem1018};
assign memline11 = {mem1100,mem1101,mem1102,mem1103,mem1104,mem1105,mem1106,mem1107,mem1108,mem1109,mem1110,mem1111,mem1112,mem1113,mem1114,mem1115,mem1116,mem1117,mem1118};
assign memline12 = {mem1200,mem1201,mem1202,mem1203,mem1204,mem1205,mem1206,mem1207,mem1208,mem1209,mem1210,mem1211,mem1212,mem1213,mem1214,mem1215,mem1216,mem1217,mem1218};
assign memline13 = {mem1300,mem1301,mem1302,mem1303,mem1304,mem1305,mem1306,mem1307,mem1308,mem1309,mem1310,mem1311,mem1312,mem1313,mem1314,mem1315,mem1316,mem1317,mem1318};
assign memline14 = {mem1400,mem1401,mem1402,mem1403,mem1404,mem1405,mem1406,mem1407,mem1408,mem1409,mem1410,mem1411,mem1412,mem1413,mem1414,mem1415,mem1416,mem1417,mem1418};
assign memline15 = {mem1500,mem1501,mem1502,mem1503,mem1504,mem1505,mem1506,mem1507,mem1508,mem1509,mem1510,mem1511,mem1512,mem1513,mem1514,mem1515,mem1516,mem1517,mem1518};
assign memline16 = {mem1600,mem1601,mem1602,mem1603,mem1604,mem1605,mem1606,mem1607,mem1608,mem1609,mem1610,mem1611,mem1612,mem1613,mem1614,mem1615,mem1616,mem1617,mem1618};
assign memline17 = {mem1700,mem1701,mem1702,mem1703,mem1704,mem1705,mem1706,mem1707,mem1708,mem1709,mem1710,mem1711,mem1712,mem1713,mem1714,mem1715,mem1716,mem1717,mem1718};
assign memline18 = {mem1800,mem1801,mem1802,mem1803,mem1804,mem1805,mem1806,mem1807,mem1808,mem1809,mem1810,mem1811,mem1812,mem1813,mem1814,mem1815,mem1816,mem1817,mem1818};

/**********************************************************************************************************************/
/************************ INPUT Logic *********************************************************************************/
/**********************************************************************************************************************/
reg [WORD_WIDETH*19-1:0]    input_buffer; //[151:0]
reg [WORD_WIDETH*3-1:0]     input_extra_buffer; //[23:0]
reg [4:0]                   input_counter;
reg [4:0]                   target_line;
reg                         buffer_ready;

always @ (posedge clk)
begin
    if(rst_n)
    begin
        buffer_ready <= (input_counter == 5'b00100 || input_counter == 5'b01001 || input_counter == 5'b01110 || input_counter == 5'b10010);
    end
    else
    begin
        buffer_ready <= 0;
    end
end

// input_counter logic
always @ (posedge clk)
begin
    if(rst_n && en_input) input_counter <= input_counter == 5'b10010 ? 5'b00000 : input_counter + 5'b00001;
    else input_counter <= 5'b0;
end

// target line logic is crtical while changing initial mode to full speed mode
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && buffer_ready) target_line <= target_line == 5'b10010 ? 5'b00000 : target_line + 5'b00001;
        else if(!init_mode && buffer_ready) target_line <= target_line == 5'b10010 ? 5'b01111 : target_line + 5'b00001;
        else target_line <= target_line;
    end
    else
    begin
        target_line <= 5'b0;
    end
end
//input buffer logic
always @ (posedge clk)
begin
    if(rst_n)
    begin
        case ({en_input, input_counter})
        6'b100000: {input_buffer, input_extra_buffer} <= {input_raw[WORD_WIDETH*4-1:0],                         input_buffer[WORD_WIDETH*15-1:0],   input_extra_buffer[WORD_WIDETH*3-1:0]};
        6'b100001: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*15],        input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*11-1:0], input_extra_buffer};
        6'b100010: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*11],        input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*7-1:0], input_extra_buffer};
        6'b100011: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*7],         input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*3-1:0], input_extra_buffer};
        6'b100100: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*3],         input_raw[WORD_WIDETH*4-1:0],       input_extra_buffer[WORD_WIDETH*2-1:0]}; //push to reg
        6'b100101: {input_buffer, input_extra_buffer} <= {input_extra_buffer[WORD_WIDETH*3-1:WORD_WIDETH*2],    input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*14-1:0], input_extra_buffer};
        6'b100110: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*14],        input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*10-1:0], input_extra_buffer};
        6'b100111: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*10],        input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*6-1:0], input_extra_buffer};
        6'b101000: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*6],         input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*2-1:0], input_extra_buffer};
        6'b101001: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*2],         input_raw[WORD_WIDETH*4-1:0],       input_extra_buffer[WORD_WIDETH*1-1:0]}; //push to reg
        6'b101010: {input_buffer, input_extra_buffer} <= {input_extra_buffer[WORD_WIDETH*3-1:WORD_WIDETH*1],    input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*13-1:0], input_extra_buffer};
        6'b101011: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*13],        input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*9-1:0], input_extra_buffer};
        6'b101100: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*9],         input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*5-1:0], input_extra_buffer};
        6'b101101: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*5],         input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*1-1:0], input_extra_buffer};
        6'b101110: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*1],         input_raw[WORD_WIDETH*4-1:0]}; //push to reg
        6'b101111: {input_buffer, input_extra_buffer} <= {input_extra_buffer[WORD_WIDETH*3-1:0],                input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*12-1:0], input_extra_buffer};
        6'b110000: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*12],        input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*8-1:0], input_extra_buffer};
        6'b110001: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*8],         input_raw[WORD_WIDETH*4-1:0],       input_buffer[WORD_WIDETH*4-1:0], input_extra_buffer};
        6'b110010: {input_buffer, input_extra_buffer} <= {input_buffer[WORD_WIDETH*19-1:WORD_WIDETH*4],         input_raw[WORD_WIDETH*4-1:0],       input_extra_buffer[WORD_WIDETH*3-1:0]}; //push to reg
        default: {input_buffer, input_extra_buffer} <= 0;
        endcase
    end
    else 
    begin
        {input_buffer, input_extra_buffer} <= 0;
    end
end

/************************ INPUT Logic END ****************************/

/**********************************************************************************************************************/
/************************ mem write Logic ********************************************************************************/
/**********************************************************************************************************************/

//line00
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b00000 && buffer_ready)
        begin
            {mem0000,mem0001,mem0002,mem0003,mem0004,mem0005,mem0006,mem0007,mem0008,mem0009,mem0010,mem0011,mem0012,mem0013,mem0014,mem0015,mem0016,mem0017,mem0018}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'h1)
        begin
            {mem0000,mem0001,mem0002,mem0003,mem0004,mem0005,mem0006,mem0007,mem0008,mem0009,mem0010,mem0011,mem0012,mem0013,mem0014,mem0015,mem0016,mem0017,mem0018}
            <= memline04;
        end
        else
        begin
            {mem0000,mem0001,mem0002,mem0003,mem0004,mem0005,mem0006,mem0007,mem0008,mem0009,mem0010,mem0011,mem0012,mem0013,mem0014,mem0015,mem0016,mem0017,mem0018}
            <= memline00;
        end
    end
    else
    begin
        {mem0000,mem0001,mem0002,mem0003,mem0004,mem0005,mem0006,mem0007,mem0008,mem0009,mem0010,mem0011,mem0012,mem0013,mem0014,mem0015,mem0016,mem0017,mem0018}
        <= 0;
    end
end
//line01
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b00001 && buffer_ready)
        begin
            {mem0100,mem0101,mem0102,mem0103,mem0104,mem0105,mem0106,mem0107,mem0108,mem0109,mem0110,mem0111,mem0112,mem0113,mem0114,mem0115,mem0116,mem0117,mem0118}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'h2)
        begin
            {mem0100,mem0101,mem0102,mem0103,mem0104,mem0105,mem0106,mem0107,mem0108,mem0109,mem0110,mem0111,mem0112,mem0113,mem0114,mem0115,mem0116,mem0117,mem0118}
            <= memline05;
        end
        else
        begin
            {mem0100,mem0101,mem0102,mem0103,mem0104,mem0105,mem0106,mem0107,mem0108,mem0109,mem0110,mem0111,mem0112,mem0113,mem0114,mem0115,mem0116,mem0117,mem0118}
            <= memline01;
        end
    end
    else
    begin
        {mem0100,mem0101,mem0102,mem0103,mem0104,mem0105,mem0106,mem0107,mem0108,mem0109,mem0110,mem0111,mem0112,mem0113,mem0114,mem0115,mem0116,mem0117,mem0118}
        <= 0;
    end
end
//line02
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b00010 && buffer_ready)
        begin
            {mem0200,mem0201,mem0202,mem0203,mem0204,mem0205,mem0206,mem0207,mem0208,mem0209,mem0210,mem0211,mem0212,mem0213,mem0214,mem0215,mem0216,mem0217,mem0218}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'h3)
        begin
            {mem0200,mem0201,mem0202,mem0203,mem0204,mem0205,mem0206,mem0207,mem0208,mem0209,mem0210,mem0211,mem0212,mem0213,mem0214,mem0215,mem0216,mem0217,mem0218}
            <= memline06;
        end
        else
        begin
            {mem0200,mem0201,mem0202,mem0203,mem0204,mem0205,mem0206,mem0207,mem0208,mem0209,mem0210,mem0211,mem0212,mem0213,mem0214,mem0215,mem0216,mem0217,mem0218}
            <= memline02;
        end
    end
    else
    begin
        {mem0200,mem0201,mem0202,mem0203,mem0204,mem0205,mem0206,mem0207,mem0208,mem0209,mem0210,mem0211,mem0212,mem0213,mem0214,mem0215,mem0216,mem0217,mem0218}
        <= 0;
    end
end
//line03
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b00011 && buffer_ready)
        begin
            {mem0300,mem0301,mem0302,mem0303,mem0304,mem0305,mem0306,mem0307,mem0308,mem0309,mem0310,mem0311,mem0312,mem0313,mem0314,mem0315,mem0316,mem0317,mem0318}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'h4)
        begin
            {mem0300,mem0301,mem0302,mem0303,mem0304,mem0305,mem0306,mem0307,mem0308,mem0309,mem0310,mem0311,mem0312,mem0313,mem0314,mem0315,mem0316,mem0317,mem0318}
            <= memline07;
        end
        else
        begin
            {mem0300,mem0301,mem0302,mem0303,mem0304,mem0305,mem0306,mem0307,mem0308,mem0309,mem0310,mem0311,mem0312,mem0313,mem0314,mem0315,mem0316,mem0317,mem0318}
            <= memline03;
        end
    end
    else
    begin
        {mem0300,mem0301,mem0302,mem0303,mem0304,mem0305,mem0306,mem0307,mem0308,mem0309,mem0310,mem0311,mem0312,mem0313,mem0314,mem0315,mem0316,mem0317,mem0318}
        <= 0;
    end
end
//line04
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b00100 && buffer_ready)
        begin
            {mem0400,mem0401,mem0402,mem0403,mem0404,mem0405,mem0406,mem0407,mem0408,mem0409,mem0410,mem0411,mem0412,mem0413,mem0414,mem0415,mem0416,mem0417,mem0418}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'h5)
        begin
            {mem0400,mem0401,mem0402,mem0403,mem0404,mem0405,mem0406,mem0407,mem0408,mem0409,mem0410,mem0411,mem0412,mem0413,mem0414,mem0415,mem0416,mem0417,mem0418}
            <= memline08;
        end
        else
        begin
            {mem0400,mem0401,mem0402,mem0403,mem0404,mem0405,mem0406,mem0407,mem0408,mem0409,mem0410,mem0411,mem0412,mem0413,mem0414,mem0415,mem0416,mem0417,mem0418}
            <= memline04;
        end
    end
    else
    begin
        {mem0400,mem0401,mem0402,mem0403,mem0404,mem0405,mem0406,mem0407,mem0408,mem0409,mem0410,mem0411,mem0412,mem0413,mem0414,mem0415,mem0416,mem0417,mem0418}
        <= 0;
    end
end
//line05
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b00101 && buffer_ready)
        begin
            {mem0500,mem0501,mem0502,mem0503,mem0504,mem0505,mem0506,mem0507,mem0508,mem0509,mem0510,mem0511,mem0512,mem0513,mem0514,mem0515,mem0516,mem0517,mem0518}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'h6)
        begin
            {mem0500,mem0501,mem0502,mem0503,mem0504,mem0505,mem0506,mem0507,mem0508,mem0509,mem0510,mem0511,mem0512,mem0513,mem0514,mem0515,mem0516,mem0517,mem0518}
            <= memline09;
        end
        else
        begin
            {mem0500,mem0501,mem0502,mem0503,mem0504,mem0505,mem0506,mem0507,mem0508,mem0509,mem0510,mem0511,mem0512,mem0513,mem0514,mem0515,mem0516,mem0517,mem0518}
            <= memline05;
        end
    end
    else
    begin
        {mem0500,mem0501,mem0502,mem0503,mem0504,mem0505,mem0506,mem0507,mem0508,mem0509,mem0510,mem0511,mem0512,mem0513,mem0514,mem0515,mem0516,mem0517,mem0518}
        <= 0;
    end
end
//line06
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b00110 && buffer_ready)
        begin
            {mem0600,mem0601,mem0602,mem0603,mem0604,mem0605,mem0606,mem0607,mem0608,mem0609,mem0610,mem0611,mem0612,mem0613,mem0614,mem0615,mem0616,mem0617,mem0618}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'h7)
        begin
            {mem0600,mem0601,mem0602,mem0603,mem0604,mem0605,mem0606,mem0607,mem0608,mem0609,mem0610,mem0611,mem0612,mem0613,mem0614,mem0615,mem0616,mem0617,mem0618}
            <= memline10;
        end
        else
        begin
            {mem0600,mem0601,mem0602,mem0603,mem0604,mem0605,mem0606,mem0607,mem0608,mem0609,mem0610,mem0611,mem0612,mem0613,mem0614,mem0615,mem0616,mem0617,mem0618}
            <= memline06;
        end
    end
    else
    begin
        {mem0600,mem0601,mem0602,mem0603,mem0604,mem0605,mem0606,mem0607,mem0608,mem0609,mem0610,mem0611,mem0612,mem0613,mem0614,mem0615,mem0616,mem0617,mem0618}
        <= 0;
    end
end
//line07
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b00111 && buffer_ready)
        begin
            {mem0700,mem0701,mem0702,mem0703,mem0704,mem0705,mem0706,mem0707,mem0708,mem0709,mem0710,mem0711,mem0712,mem0713,mem0714,mem0715,mem0716,mem0717,mem0718}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'h8)
        begin
            {mem0700,mem0701,mem0702,mem0703,mem0704,mem0705,mem0706,mem0707,mem0708,mem0709,mem0710,mem0711,mem0712,mem0713,mem0714,mem0715,mem0716,mem0717,mem0718}
            <= memline11;
        end
        else
        begin
            {mem0700,mem0701,mem0702,mem0703,mem0704,mem0705,mem0706,mem0707,mem0708,mem0709,mem0710,mem0711,mem0712,mem0713,mem0714,mem0715,mem0716,mem0717,mem0718}
            <= memline07;
        end
    end
    else
    begin
        {mem0700,mem0701,mem0702,mem0703,mem0704,mem0705,mem0706,mem0707,mem0708,mem0709,mem0710,mem0711,mem0712,mem0713,mem0714,mem0715,mem0716,mem0717,mem0718}
        <= 0;
    end
end
//line08
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b01000 && buffer_ready)
        begin
            {mem0800,mem0801,mem0802,mem0803,mem0804,mem0805,mem0806,mem0807,mem0808,mem0809,mem0810,mem0811,mem0812,mem0813,mem0814,mem0815,mem0816,mem0817,mem0818}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'h9)
        begin
            {mem0800,mem0801,mem0802,mem0803,mem0804,mem0805,mem0806,mem0807,mem0808,mem0809,mem0810,mem0811,mem0812,mem0813,mem0814,mem0815,mem0816,mem0817,mem0818}
            <= memline12;
        end
        else
        begin
            {mem0800,mem0801,mem0802,mem0803,mem0804,mem0805,mem0806,mem0807,mem0808,mem0809,mem0810,mem0811,mem0812,mem0813,mem0814,mem0815,mem0816,mem0817,mem0818}
            <= memline08;
        end
    end
    else
    begin
        {mem0800,mem0801,mem0802,mem0803,mem0804,mem0805,mem0806,mem0807,mem0808,mem0809,mem0810,mem0811,mem0812,mem0813,mem0814,mem0815,mem0816,mem0817,mem0818}
        <= 0;
    end
end
//line09
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b01001 && buffer_ready)
        begin
            {mem0900,mem0901,mem0902,mem0903,mem0904,mem0905,mem0906,mem0907,mem0908,mem0909,mem0910,mem0911,mem0912,mem0913,mem0914,mem0915,mem0916,mem0917,mem0918}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'ha)
        begin
            {mem0900,mem0901,mem0902,mem0903,mem0904,mem0905,mem0906,mem0907,mem0908,mem0909,mem0910,mem0911,mem0912,mem0913,mem0914,mem0915,mem0916,mem0917,mem0918}
            <= memline13;
        end
        else
        begin
            {mem0900,mem0901,mem0902,mem0903,mem0904,mem0905,mem0906,mem0907,mem0908,mem0909,mem0910,mem0911,mem0912,mem0913,mem0914,mem0915,mem0916,mem0917,mem0918}
            <= memline09;
        end
    end
    else
    begin
        {mem0900,mem0901,mem0902,mem0903,mem0904,mem0905,mem0906,mem0907,mem0908,mem0909,mem0910,mem0911,mem0912,mem0913,mem0914,mem0915,mem0916,mem0917,mem0918}
        <= 0;
    end
end
//line10
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b01010 && buffer_ready)
        begin
            {mem1000,mem1001,mem1002,mem1003,mem1004,mem1005,mem1006,mem1007,mem1008,mem1009,mem1010,mem1011,mem1012,mem1013,mem1014,mem1015,mem1016,mem1017,mem1018}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'hb)
        begin
            {mem1000,mem1001,mem1002,mem1003,mem1004,mem1005,mem1006,mem1007,mem1008,mem1009,mem1010,mem1011,mem1012,mem1013,mem1014,mem1015,mem1016,mem1017,mem1018}
            <= memline14;
        end
        else
        begin
            {mem1000,mem1001,mem1002,mem1003,mem1004,mem1005,mem1006,mem1007,mem1008,mem1009,mem1010,mem1011,mem1012,mem1013,mem1014,mem1015,mem1016,mem1017,mem1018}
            <= memline10;
        end
    end
    else
    begin
        {mem1000,mem1001,mem1002,mem1003,mem1004,mem1005,mem1006,mem1007,mem1008,mem1009,mem1010,mem1011,mem1012,mem1013,mem1014,mem1015,mem1016,mem1017,mem1018}
        <= 0;
    end
end
//line11
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b01011 && buffer_ready)
        begin
            {mem1100,mem1101,mem1102,mem1103,mem1104,mem1105,mem1106,mem1107,mem1108,mem1109,mem1110,mem1111,mem1112,mem1113,mem1114,mem1115,mem1116,mem1117,mem1118}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'hc)
        begin
            {mem1100,mem1101,mem1102,mem1103,mem1104,mem1105,mem1106,mem1107,mem1108,mem1109,mem1110,mem1111,mem1112,mem1113,mem1114,mem1115,mem1116,mem1117,mem1118}
            <= memline15;
        end
        else
        begin
            {mem1100,mem1101,mem1102,mem1103,mem1104,mem1105,mem1106,mem1107,mem1108,mem1109,mem1110,mem1111,mem1112,mem1113,mem1114,mem1115,mem1116,mem1117,mem1118}
            <= memline11;
        end
    end
    else
    begin
        {mem1100,mem1101,mem1102,mem1103,mem1104,mem1105,mem1106,mem1107,mem1108,mem1109,mem1110,mem1111,mem1112,mem1113,mem1114,mem1115,mem1116,mem1117,mem1118}
        <= 0;
    end
end
//line12
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b01100 && buffer_ready)
        begin
            {mem1200,mem1201,mem1202,mem1203,mem1204,mem1205,mem1206,mem1207,mem1208,mem1209,mem1210,mem1211,mem1212,mem1213,mem1214,mem1215,mem1216,mem1217,mem1218}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'hd)
        begin
            {mem1200,mem1201,mem1202,mem1203,mem1204,mem1205,mem1206,mem1207,mem1208,mem1209,mem1210,mem1211,mem1212,mem1213,mem1214,mem1215,mem1216,mem1217,mem1218}
            <= memline16;
        end
        else
        begin
            {mem1200,mem1201,mem1202,mem1203,mem1204,mem1205,mem1206,mem1207,mem1208,mem1209,mem1210,mem1211,mem1212,mem1213,mem1214,mem1215,mem1216,mem1217,mem1218}
            <= memline12;
        end
    end
    else
    begin
        {mem1200,mem1201,mem1202,mem1203,mem1204,mem1205,mem1206,mem1207,mem1208,mem1209,mem1210,mem1211,mem1212,mem1213,mem1214,mem1215,mem1216,mem1217,mem1218}
        <= 0;
    end
end
//line13
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b01101 && buffer_ready)
        begin
            {mem1300,mem1301,mem1302,mem1303,mem1304,mem1305,mem1306,mem1307,mem1308,mem1309,mem1310,mem1311,mem1312,mem1313,mem1314,mem1315,mem1316,mem1317,mem1318}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'he)
        begin
            {mem1300,mem1301,mem1302,mem1303,mem1304,mem1305,mem1306,mem1307,mem1308,mem1309,mem1310,mem1311,mem1312,mem1313,mem1314,mem1315,mem1316,mem1317,mem1318}
            <= memline17;
        end
        else
        begin
            {mem1300,mem1301,mem1302,mem1303,mem1304,mem1305,mem1306,mem1307,mem1308,mem1309,mem1310,mem1311,mem1312,mem1313,mem1314,mem1315,mem1316,mem1317,mem1318}
            <= memline13;
        end
    end
    else
    begin
        {mem1300,mem1301,mem1302,mem1303,mem1304,mem1305,mem1306,mem1307,mem1308,mem1309,mem1310,mem1311,mem1312,mem1313,mem1314,mem1315,mem1316,mem1317,mem1318}
        <= 0;
    end
end
//line14
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if(init_mode && target_line == 5'b01110 && buffer_ready)
        begin
            {mem1400,mem1401,mem1402,mem1403,mem1404,mem1405,mem1406,mem1407,mem1408,mem1409,mem1410,mem1411,mem1412,mem1413,mem1414,mem1415,mem1416,mem1417,mem1418}
            <= input_buffer;
        end
        else if (!init_mode && ctr_word == 4'hf)
        begin
            {mem1400,mem1401,mem1402,mem1403,mem1404,mem1405,mem1406,mem1407,mem1408,mem1409,mem1410,mem1411,mem1412,mem1413,mem1414,mem1415,mem1416,mem1417,mem1418}
            <= memline18;
        end
        else
        begin
            {mem1400,mem1401,mem1402,mem1403,mem1404,mem1405,mem1406,mem1407,mem1408,mem1409,mem1410,mem1411,mem1412,mem1413,mem1414,mem1415,mem1416,mem1417,mem1418}
            <= memline14;
        end
    end
    else
    begin
        {mem1400,mem1401,mem1402,mem1403,mem1404,mem1405,mem1406,mem1407,mem1408,mem1409,mem1410,mem1411,mem1412,mem1413,mem1414,mem1415,mem1416,mem1417,mem1418}
        <= 0;
    end
end
//line15
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if (!init_mode && target_line == 5'b01111 && buffer_ready )
        begin
            {mem1500,mem1501,mem1502,mem1503,mem1504,mem1505,mem1506,mem1507,mem1508,mem1509,mem1510,mem1511,mem1512,mem1513,mem1514,mem1515,mem1516,mem1517,mem1518}
            <= input_buffer;
        end
        else
        begin
            {mem1500,mem1501,mem1502,mem1503,mem1504,mem1505,mem1506,mem1507,mem1508,mem1509,mem1510,mem1511,mem1512,mem1513,mem1514,mem1515,mem1516,mem1517,mem1518}
            <= memline15;
        end
    end
    else
    begin
        {mem1500,mem1501,mem1502,mem1503,mem1504,mem1505,mem1506,mem1507,mem1508,mem1509,mem1510,mem1511,mem1512,mem1513,mem1514,mem1515,mem1516,mem1517,mem1518}
        <= 0;
    end
end
//line16
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if (!init_mode && target_line == 5'b10000 && buffer_ready)
        begin
            {mem1600,mem1601,mem1602,mem1603,mem1604,mem1605,mem1606,mem1607,mem1608,mem1609,mem1610,mem1611,mem1612,mem1613,mem1614,mem1615,mem1616,mem1617,mem1618}
            <= input_buffer;
        end
        else
        begin
            {mem1600,mem1601,mem1602,mem1603,mem1604,mem1605,mem1606,mem1607,mem1608,mem1609,mem1610,mem1611,mem1612,mem1613,mem1614,mem1615,mem1616,mem1617,mem1618}
            <= memline16;
        end
    end
    else
    begin
        {mem1600,mem1601,mem1602,mem1603,mem1604,mem1605,mem1606,mem1607,mem1608,mem1609,mem1610,mem1611,mem1612,mem1613,mem1614,mem1615,mem1616,mem1617,mem1618}
        <= 0;
    end
end
//line17
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if (!init_mode && target_line == 5'b10001 && buffer_ready)
        begin
            {mem1700,mem1701,mem1702,mem1703,mem1704,mem1705,mem1706,mem1707,mem1708,mem1709,mem1710,mem1711,mem1712,mem1713,mem1714,mem1715,mem1716,mem1717,mem1718}
            <= input_buffer;
        end
        else
        begin
            {mem1700,mem1701,mem1702,mem1703,mem1704,mem1705,mem1706,mem1707,mem1708,mem1709,mem1710,mem1711,mem1712,mem1713,mem1714,mem1715,mem1716,mem1717,mem1718}
            <= memline17;
        end
    end
    else
    begin
        {mem1700,mem1701,mem1702,mem1703,mem1704,mem1705,mem1706,mem1707,mem1708,mem1709,mem1710,mem1711,mem1712,mem1713,mem1714,mem1715,mem1716,mem1717,mem1718}
        <= 0;
    end
end
//line18
always @ (posedge clk)
begin
    if(rst_n)
    begin
        if (!init_mode && target_line == 5'b10010 && buffer_ready)
        begin
            {mem1800,mem1801,mem1802,mem1803,mem1804,mem1805,mem1806,mem1807,mem1808,mem1809,mem1810,mem1811,mem1812,mem1813,mem1814,mem1815,mem1816,mem1817,mem1818}
            <= input_buffer;
        end
        else
        begin
            {mem1800,mem1801,mem1802,mem1803,mem1804,mem1805,mem1806,mem1807,mem1808,mem1809,mem1810,mem1811,mem1812,mem1813,mem1814,mem1815,mem1816,mem1817,mem1818}
            <= memline18;
        end
    end
    else
    begin
        {mem1800,mem1801,mem1802,mem1803,mem1804,mem1805,mem1806,mem1807,mem1808,mem1809,mem1810,mem1811,mem1812,mem1813,mem1814,mem1815,mem1816,mem1817,mem1818}
        <= 0;
    end
end
/************************ mem write Logic END *******************/

/**********************************************************************************************************************/
/************************ OUTPUT Logic ********************************************************************************/
/**********************************************************************************************************************/
//port00
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0000,mem0001,mem0002,mem0003,mem0100,mem0101,mem0102,mem0103,mem0200,mem0201,mem0202,mem0203,mem0300,mem0301,mem0302,mem0303};
    4'h1: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0100,mem0101,mem0102,mem0103,mem0200,mem0201,mem0202,mem0203,mem0300,mem0301,mem0302,mem0303,mem0400,mem0401,mem0402,mem0403};
    4'h2: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0200,mem0201,mem0202,mem0203,mem0300,mem0301,mem0302,mem0303,mem0400,mem0401,mem0402,mem0403,mem0500,mem0501,mem0502,mem0503};
    4'h3: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0300,mem0301,mem0302,mem0303,mem0400,mem0401,mem0402,mem0403,mem0500,mem0501,mem0502,mem0503,mem0600,mem0601,mem0602,mem0603};
    4'h4: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0400,mem0401,mem0402,mem0403,mem0500,mem0501,mem0502,mem0503,mem0600,mem0601,mem0602,mem0603,mem0700,mem0701,mem0702,mem0703};
    4'h5: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0500,mem0501,mem0502,mem0503,mem0600,mem0601,mem0602,mem0603,mem0700,mem0701,mem0702,mem0703,mem0800,mem0801,mem0802,mem0803};
    4'h6: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0600,mem0601,mem0602,mem0603,mem0700,mem0701,mem0702,mem0703,mem0800,mem0801,mem0802,mem0803,mem0900,mem0901,mem0902,mem0903};
    4'h7: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0700,mem0701,mem0702,mem0703,mem0800,mem0801,mem0802,mem0803,mem0900,mem0901,mem0902,mem0903,mem1000,mem1001,mem1002,mem1003};
    4'h8: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0800,mem0801,mem0802,mem0803,mem0900,mem0901,mem0902,mem0903,mem1000,mem1001,mem1002,mem1003,mem1100,mem1101,mem1102,mem1103};
    4'h9: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem0900,mem0901,mem0902,mem0903,mem1000,mem1001,mem1002,mem1003,mem1100,mem1101,mem1102,mem1103,mem1200,mem1201,mem1202,mem1203};
    4'ha: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem1000,mem1001,mem1002,mem1003,mem1100,mem1101,mem1102,mem1103,mem1200,mem1201,mem1202,mem1203,mem1300,mem1301,mem1302,mem1303};
    4'hb: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem1100,mem1101,mem1102,mem1103,mem1200,mem1201,mem1202,mem1203,mem1300,mem1301,mem1302,mem1303,mem1400,mem1401,mem1402,mem1403};
    4'hc: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem1200,mem1201,mem1202,mem1203,mem1300,mem1301,mem1302,mem1303,mem1400,mem1401,mem1402,mem1403,mem1500,mem1501,mem1502,mem1503};
    4'hd: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem1300,mem1301,mem1302,mem1303,mem1400,mem1401,mem1402,mem1403,mem1500,mem1501,mem1502,mem1503,mem1600,mem1601,mem1602,mem1603};
    4'he: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem1400,mem1401,mem1402,mem1403,mem1500,mem1501,mem1502,mem1503,mem1600,mem1601,mem1602,mem1603,mem1700,mem1701,mem1702,mem1703};
    4'hf: {pe00_in00,pe00_in01,pe00_in02,pe00_in03,pe00_in04,pe00_in05,pe00_in06,pe00_in07,pe00_in08,pe00_in09,pe00_in10,pe00_in11,pe00_in12,pe00_in13,pe00_in14,pe00_in15}
        <= {mem1500,mem1501,mem1502,mem1503,mem1600,mem1601,mem1602,mem1603,mem1700,mem1701,mem1702,mem1703,mem1800,mem1801,mem1802,mem1803};
    endcase
end
//port01
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0001,mem0002,mem0003,mem0004,mem0101,mem0102,mem0103,mem0104,mem0201,mem0202,mem0203,mem0204,mem0301,mem0302,mem0303,mem0304};
    4'h1: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0101,mem0102,mem0103,mem0104,mem0201,mem0202,mem0203,mem0204,mem0301,mem0302,mem0303,mem0304,mem0401,mem0402,mem0403,mem0404};
    4'h2: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0201,mem0202,mem0203,mem0204,mem0301,mem0302,mem0303,mem0304,mem0401,mem0402,mem0403,mem0404,mem0501,mem0502,mem0503,mem0504};
    4'h3: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0301,mem0302,mem0303,mem0304,mem0401,mem0402,mem0403,mem0404,mem0501,mem0502,mem0503,mem0504,mem0601,mem0602,mem0603,mem0604};
    4'h4: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0401,mem0402,mem0403,mem0404,mem0501,mem0502,mem0503,mem0504,mem0601,mem0602,mem0603,mem0604,mem0701,mem0702,mem0703,mem0704};
    4'h5: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0501,mem0502,mem0503,mem0504,mem0601,mem0602,mem0603,mem0604,mem0701,mem0702,mem0703,mem0704,mem0801,mem0802,mem0803,mem0804};
    4'h6: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0601,mem0602,mem0603,mem0604,mem0701,mem0702,mem0703,mem0704,mem0801,mem0802,mem0803,mem0804,mem0901,mem0902,mem0903,mem0904};
    4'h7: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0701,mem0702,mem0703,mem0704,mem0801,mem0802,mem0803,mem0804,mem0901,mem0902,mem0903,mem0904,mem1001,mem1002,mem1003,mem1004};
    4'h8: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0801,mem0802,mem0803,mem0804,mem0901,mem0902,mem0903,mem0904,mem1001,mem1002,mem1003,mem1004,mem1101,mem1102,mem1103,mem1104};
    4'h9: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem0901,mem0902,mem0903,mem0904,mem1001,mem1002,mem1003,mem1004,mem1101,mem1102,mem1103,mem1104,mem1201,mem1202,mem1203,mem1204};
    4'ha: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem1001,mem1002,mem1003,mem1004,mem1101,mem1102,mem1103,mem1104,mem1201,mem1202,mem1203,mem1204,mem1301,mem1302,mem1303,mem1304};
    4'hb: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem1101,mem1102,mem1103,mem1104,mem1201,mem1202,mem1203,mem1204,mem1301,mem1302,mem1303,mem1304,mem1401,mem1402,mem1403,mem1404};
    4'hc: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem1201,mem1202,mem1203,mem1204,mem1301,mem1302,mem1303,mem1304,mem1401,mem1402,mem1403,mem1404,mem1501,mem1502,mem1503,mem1504};
    4'hd: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem1301,mem1302,mem1303,mem1304,mem1401,mem1402,mem1403,mem1404,mem1501,mem1502,mem1503,mem1504,mem1601,mem1602,mem1603,mem1604};
    4'he: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem1401,mem1402,mem1403,mem1404,mem1501,mem1502,mem1503,mem1504,mem1601,mem1602,mem1603,mem1604,mem1701,mem1702,mem1703,mem1704};
    4'hf: {pe01_in00,pe01_in01,pe01_in02,pe01_in03,pe01_in04,pe01_in05,pe01_in06,pe01_in07,pe01_in08,pe01_in09,pe01_in10,pe01_in11,pe01_in12,pe01_in13,pe01_in14,pe01_in15}
        <= {mem1501,mem1502,mem1503,mem1504,mem1601,mem1602,mem1603,mem1604,mem1701,mem1702,mem1703,mem1704,mem1801,mem1802,mem1803,mem1804};
    endcase
end
//port02
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0002,mem0003,mem0004,mem0005,mem0102,mem0103,mem0104,mem0105,mem0202,mem0203,mem0204,mem0205,mem0302,mem0303,mem0304,mem0305};
    4'h1: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0102,mem0103,mem0104,mem0105,mem0202,mem0203,mem0204,mem0205,mem0302,mem0303,mem0304,mem0305,mem0402,mem0403,mem0404,mem0405};
    4'h2: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0202,mem0203,mem0204,mem0205,mem0302,mem0303,mem0304,mem0305,mem0402,mem0403,mem0404,mem0405,mem0502,mem0503,mem0504,mem0505};
    4'h3: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0302,mem0303,mem0304,mem0305,mem0402,mem0403,mem0404,mem0405,mem0502,mem0503,mem0504,mem0505,mem0602,mem0603,mem0604,mem0605};
    4'h4: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0402,mem0403,mem0404,mem0405,mem0502,mem0503,mem0504,mem0505,mem0602,mem0603,mem0604,mem0605,mem0702,mem0703,mem0704,mem0705};
    4'h5: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0502,mem0503,mem0504,mem0505,mem0602,mem0603,mem0604,mem0605,mem0702,mem0703,mem0704,mem0705,mem0802,mem0803,mem0804,mem0805};
    4'h6: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0602,mem0603,mem0604,mem0605,mem0702,mem0703,mem0704,mem0705,mem0802,mem0803,mem0804,mem0805,mem0902,mem0903,mem0904,mem0905};
    4'h7: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0702,mem0703,mem0704,mem0705,mem0802,mem0803,mem0804,mem0805,mem0902,mem0903,mem0904,mem0905,mem1002,mem1003,mem1004,mem1005};
    4'h8: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0802,mem0803,mem0804,mem0805,mem0902,mem0903,mem0904,mem0905,mem1002,mem1003,mem1004,mem1005,mem1102,mem1103,mem1104,mem1105};
    4'h9: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem0902,mem0903,mem0904,mem0905,mem1002,mem1003,mem1004,mem1005,mem1102,mem1103,mem1104,mem1105,mem1202,mem1203,mem1204,mem1205};
    4'ha: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem1002,mem1003,mem1004,mem1005,mem1102,mem1103,mem1104,mem1105,mem1202,mem1203,mem1204,mem1205,mem1302,mem1303,mem1304,mem1305};
    4'hb: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem1102,mem1103,mem1104,mem1105,mem1202,mem1203,mem1204,mem1205,mem1302,mem1303,mem1304,mem1305,mem1402,mem1403,mem1404,mem1405};
    4'hc: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem1202,mem1203,mem1204,mem1205,mem1302,mem1303,mem1304,mem1305,mem1402,mem1403,mem1404,mem1405,mem1502,mem1503,mem1504,mem1505};
    4'hd: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem1302,mem1303,mem1304,mem1305,mem1402,mem1403,mem1404,mem1405,mem1502,mem1503,mem1504,mem1505,mem1602,mem1603,mem1604,mem1605};
    4'he: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem1402,mem1403,mem1404,mem1405,mem1502,mem1503,mem1504,mem1505,mem1602,mem1603,mem1604,mem1605,mem1702,mem1703,mem1704,mem1705};
    4'hf: {pe02_in00,pe02_in01,pe02_in02,pe02_in03,pe02_in04,pe02_in05,pe02_in06,pe02_in07,pe02_in08,pe02_in09,pe02_in10,pe02_in11,pe02_in12,pe02_in13,pe02_in14,pe02_in15}
        <= {mem1502,mem1503,mem1504,mem1505,mem1602,mem1603,mem1604,mem1605,mem1702,mem1703,mem1704,mem1705,mem1802,mem1803,mem1804,mem1805};
    endcase
end
//port03
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0003,mem0004,mem0005,mem0006,mem0103,mem0104,mem0105,mem0106,mem0203,mem0204,mem0205,mem0206,mem0303,mem0304,mem0305,mem0306};
    4'h1: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0103,mem0104,mem0105,mem0106,mem0203,mem0204,mem0205,mem0206,mem0303,mem0304,mem0305,mem0306,mem0403,mem0404,mem0405,mem0406};
    4'h2: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0203,mem0204,mem0205,mem0206,mem0303,mem0304,mem0305,mem0306,mem0403,mem0404,mem0405,mem0406,mem0503,mem0504,mem0505,mem0506};
    4'h3: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0303,mem0304,mem0305,mem0306,mem0403,mem0404,mem0405,mem0406,mem0503,mem0504,mem0505,mem0506,mem0603,mem0604,mem0605,mem0606};
    4'h4: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0403,mem0404,mem0405,mem0406,mem0503,mem0504,mem0505,mem0506,mem0603,mem0604,mem0605,mem0606,mem0703,mem0704,mem0705,mem0706};
    4'h5: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0503,mem0504,mem0505,mem0506,mem0603,mem0604,mem0605,mem0606,mem0703,mem0704,mem0705,mem0706,mem0803,mem0804,mem0805,mem0806};
    4'h6: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0603,mem0604,mem0605,mem0606,mem0703,mem0704,mem0705,mem0706,mem0803,mem0804,mem0805,mem0806,mem0903,mem0904,mem0905,mem0906};
    4'h7: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0703,mem0704,mem0705,mem0706,mem0803,mem0804,mem0805,mem0806,mem0903,mem0904,mem0905,mem0906,mem1003,mem1004,mem1005,mem1006};
    4'h8: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0803,mem0804,mem0805,mem0806,mem0903,mem0904,mem0905,mem0906,mem1003,mem1004,mem1005,mem1006,mem1103,mem1104,mem1105,mem1106};
    4'h9: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem0903,mem0904,mem0905,mem0906,mem1003,mem1004,mem1005,mem1006,mem1103,mem1104,mem1105,mem1106,mem1203,mem1204,mem1205,mem1206};
    4'ha: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem1003,mem1004,mem1005,mem1006,mem1103,mem1104,mem1105,mem1106,mem1203,mem1204,mem1205,mem1206,mem1303,mem1304,mem1305,mem1306};
    4'hb: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem1103,mem1104,mem1105,mem1106,mem1203,mem1204,mem1205,mem1206,mem1303,mem1304,mem1305,mem1306,mem1403,mem1404,mem1405,mem1406};
    4'hc: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem1203,mem1204,mem1205,mem1206,mem1303,mem1304,mem1305,mem1306,mem1403,mem1404,mem1405,mem1406,mem1503,mem1504,mem1505,mem1506};
    4'hd: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem1303,mem1304,mem1305,mem1306,mem1403,mem1404,mem1405,mem1406,mem1503,mem1504,mem1505,mem1506,mem1603,mem1604,mem1605,mem1606};
    4'he: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem1403,mem1404,mem1405,mem1406,mem1503,mem1504,mem1505,mem1506,mem1603,mem1604,mem1605,mem1606,mem1703,mem1704,mem1705,mem1706};
    4'hf: {pe03_in00,pe03_in01,pe03_in02,pe03_in03,pe03_in04,pe03_in05,pe03_in06,pe03_in07,pe03_in08,pe03_in09,pe03_in10,pe03_in11,pe03_in12,pe03_in13,pe03_in14,pe03_in15}
        <= {mem1503,mem1504,mem1505,mem1506,mem1603,mem1604,mem1605,mem1606,mem1703,mem1704,mem1705,mem1706,mem1803,mem1804,mem1805,mem1806};
    endcase
end
//port04
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0004,mem0005,mem0006,mem0007,mem0104,mem0105,mem0106,mem0107,mem0204,mem0205,mem0206,mem0207,mem0304,mem0305,mem0306,mem0307};
    4'h1: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0104,mem0105,mem0106,mem0107,mem0204,mem0205,mem0206,mem0207,mem0304,mem0305,mem0306,mem0307,mem0404,mem0405,mem0406,mem0407};
    4'h2: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0204,mem0205,mem0206,mem0207,mem0304,mem0305,mem0306,mem0307,mem0404,mem0405,mem0406,mem0407,mem0504,mem0505,mem0506,mem0507};
    4'h3: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0304,mem0305,mem0306,mem0307,mem0404,mem0405,mem0406,mem0407,mem0504,mem0505,mem0506,mem0507,mem0604,mem0605,mem0606,mem0607};
    4'h4: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0404,mem0405,mem0406,mem0407,mem0504,mem0505,mem0506,mem0507,mem0604,mem0605,mem0606,mem0607,mem0704,mem0705,mem0706,mem0707};
    4'h5: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0504,mem0505,mem0506,mem0507,mem0604,mem0605,mem0606,mem0607,mem0704,mem0705,mem0706,mem0707,mem0804,mem0805,mem0806,mem0807};
    4'h6: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0604,mem0605,mem0606,mem0607,mem0704,mem0705,mem0706,mem0707,mem0804,mem0805,mem0806,mem0807,mem0904,mem0905,mem0906,mem0907};
    4'h7: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0704,mem0705,mem0706,mem0707,mem0804,mem0805,mem0806,mem0807,mem0904,mem0905,mem0906,mem0907,mem1004,mem1005,mem1006,mem1007};
    4'h8: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0804,mem0805,mem0806,mem0807,mem0904,mem0905,mem0906,mem0907,mem1004,mem1005,mem1006,mem1007,mem1104,mem1105,mem1106,mem1107};
    4'h9: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem0904,mem0905,mem0906,mem0907,mem1004,mem1005,mem1006,mem1007,mem1104,mem1105,mem1106,mem1107,mem1204,mem1205,mem1206,mem1207};
    4'ha: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem1004,mem1005,mem1006,mem1007,mem1104,mem1105,mem1106,mem1107,mem1204,mem1205,mem1206,mem1207,mem1304,mem1305,mem1306,mem1307};
    4'hb: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem1104,mem1105,mem1106,mem1107,mem1204,mem1205,mem1206,mem1207,mem1304,mem1305,mem1306,mem1307,mem1404,mem1405,mem1406,mem1407};
    4'hc: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem1204,mem1205,mem1206,mem1207,mem1304,mem1305,mem1306,mem1307,mem1404,mem1405,mem1406,mem1407,mem1504,mem1505,mem1506,mem1507};
    4'hd: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem1304,mem1305,mem1306,mem1307,mem1404,mem1405,mem1406,mem1407,mem1504,mem1505,mem1506,mem1507,mem1604,mem1605,mem1606,mem1607};
    4'he: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem1404,mem1405,mem1406,mem1407,mem1504,mem1505,mem1506,mem1507,mem1604,mem1605,mem1606,mem1607,mem1704,mem1705,mem1706,mem1707};
    4'hf: {pe04_in00,pe04_in01,pe04_in02,pe04_in03,pe04_in04,pe04_in05,pe04_in06,pe04_in07,pe04_in08,pe04_in09,pe04_in10,pe04_in11,pe04_in12,pe04_in13,pe04_in14,pe04_in15}
        <= {mem1504,mem1505,mem1506,mem1507,mem1604,mem1605,mem1606,mem1607,mem1704,mem1705,mem1706,mem1707,mem1804,mem1805,mem1806,mem1807};
    endcase
end
//port05
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0005,mem0006,mem0007,mem0008,mem0105,mem0106,mem0107,mem0108,mem0205,mem0206,mem0207,mem0208,mem0305,mem0306,mem0307,mem0308};
    4'h1: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0105,mem0106,mem0107,mem0108,mem0205,mem0206,mem0207,mem0208,mem0305,mem0306,mem0307,mem0308,mem0405,mem0406,mem0407,mem0408};
    4'h2: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0205,mem0206,mem0207,mem0208,mem0305,mem0306,mem0307,mem0308,mem0405,mem0406,mem0407,mem0408,mem0505,mem0506,mem0507,mem0508};
    4'h3: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0305,mem0306,mem0307,mem0308,mem0405,mem0406,mem0407,mem0408,mem0505,mem0506,mem0507,mem0508,mem0605,mem0606,mem0607,mem0608};
    4'h4: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0405,mem0406,mem0407,mem0408,mem0505,mem0506,mem0507,mem0508,mem0605,mem0606,mem0607,mem0608,mem0705,mem0706,mem0707,mem0708};
    4'h5: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0505,mem0506,mem0507,mem0508,mem0605,mem0606,mem0607,mem0608,mem0705,mem0706,mem0707,mem0708,mem0805,mem0806,mem0807,mem0808};
    4'h6: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0605,mem0606,mem0607,mem0608,mem0705,mem0706,mem0707,mem0708,mem0805,mem0806,mem0807,mem0808,mem0905,mem0906,mem0907,mem0908};
    4'h7: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0705,mem0706,mem0707,mem0708,mem0805,mem0806,mem0807,mem0808,mem0905,mem0906,mem0907,mem0908,mem1005,mem1006,mem1007,mem1008};
    4'h8: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0805,mem0806,mem0807,mem0808,mem0905,mem0906,mem0907,mem0908,mem1005,mem1006,mem1007,mem1008,mem1105,mem1106,mem1107,mem1108};
    4'h9: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem0905,mem0906,mem0907,mem0908,mem1005,mem1006,mem1007,mem1008,mem1105,mem1106,mem1107,mem1108,mem1205,mem1206,mem1207,mem1208};
    4'ha: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem1005,mem1006,mem1007,mem1008,mem1105,mem1106,mem1107,mem1108,mem1205,mem1206,mem1207,mem1208,mem1305,mem1306,mem1307,mem1308};
    4'hb: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem1105,mem1106,mem1107,mem1108,mem1205,mem1206,mem1207,mem1208,mem1305,mem1306,mem1307,mem1308,mem1405,mem1406,mem1407,mem1408};
    4'hc: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem1205,mem1206,mem1207,mem1208,mem1305,mem1306,mem1307,mem1308,mem1405,mem1406,mem1407,mem1408,mem1505,mem1506,mem1507,mem1508};
    4'hd: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem1305,mem1306,mem1307,mem1308,mem1405,mem1406,mem1407,mem1408,mem1505,mem1506,mem1507,mem1508,mem1605,mem1606,mem1607,mem1608};
    4'he: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem1405,mem1406,mem1407,mem1408,mem1505,mem1506,mem1507,mem1508,mem1605,mem1606,mem1607,mem1608,mem1705,mem1706,mem1707,mem1708};
    4'hf: {pe05_in00,pe05_in01,pe05_in02,pe05_in03,pe05_in04,pe05_in05,pe05_in06,pe05_in07,pe05_in08,pe05_in09,pe05_in10,pe05_in11,pe05_in12,pe05_in13,pe05_in14,pe05_in15}
        <= {mem1505,mem1506,mem1507,mem1508,mem1605,mem1606,mem1607,mem1608,mem1705,mem1706,mem1707,mem1708,mem1805,mem1806,mem1807,mem1808};
    endcase
end
//port06
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0006,mem0007,mem0008,mem0009,mem0106,mem0107,mem0108,mem0109,mem0206,mem0207,mem0208,mem0209,mem0306,mem0307,mem0308,mem0309};
    4'h1: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0106,mem0107,mem0108,mem0109,mem0206,mem0207,mem0208,mem0209,mem0306,mem0307,mem0308,mem0309,mem0406,mem0407,mem0408,mem0409};
    4'h2: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0206,mem0207,mem0208,mem0209,mem0306,mem0307,mem0308,mem0309,mem0406,mem0407,mem0408,mem0409,mem0506,mem0507,mem0508,mem0509};
    4'h3: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0306,mem0307,mem0308,mem0309,mem0406,mem0407,mem0408,mem0409,mem0506,mem0507,mem0508,mem0509,mem0606,mem0607,mem0608,mem0609};
    4'h4: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0406,mem0407,mem0408,mem0409,mem0506,mem0507,mem0508,mem0509,mem0606,mem0607,mem0608,mem0609,mem0706,mem0707,mem0708,mem0709};
    4'h5: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0506,mem0507,mem0508,mem0509,mem0606,mem0607,mem0608,mem0609,mem0706,mem0707,mem0708,mem0709,mem0806,mem0807,mem0808,mem0809};
    4'h6: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0606,mem0607,mem0608,mem0609,mem0706,mem0707,mem0708,mem0709,mem0806,mem0807,mem0808,mem0809,mem0906,mem0907,mem0908,mem0909};
    4'h7: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0706,mem0707,mem0708,mem0709,mem0806,mem0807,mem0808,mem0809,mem0906,mem0907,mem0908,mem0909,mem1006,mem1007,mem1008,mem1009};
    4'h8: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0806,mem0807,mem0808,mem0809,mem0906,mem0907,mem0908,mem0909,mem1006,mem1007,mem1008,mem1009,mem1106,mem1107,mem1108,mem1109};
    4'h9: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem0906,mem0907,mem0908,mem0909,mem1006,mem1007,mem1008,mem1009,mem1106,mem1107,mem1108,mem1109,mem1206,mem1207,mem1208,mem1209};
    4'ha: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem1006,mem1007,mem1008,mem1009,mem1106,mem1107,mem1108,mem1109,mem1206,mem1207,mem1208,mem1209,mem1306,mem1307,mem1308,mem1309};
    4'hb: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem1106,mem1107,mem1108,mem1109,mem1206,mem1207,mem1208,mem1209,mem1306,mem1307,mem1308,mem1309,mem1406,mem1407,mem1408,mem1409};
    4'hc: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem1206,mem1207,mem1208,mem1209,mem1306,mem1307,mem1308,mem1309,mem1406,mem1407,mem1408,mem1409,mem1506,mem1507,mem1508,mem1509};
    4'hd: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem1306,mem1307,mem1308,mem1309,mem1406,mem1407,mem1408,mem1409,mem1506,mem1507,mem1508,mem1509,mem1606,mem1607,mem1608,mem1609};
    4'he: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem1406,mem1407,mem1408,mem1409,mem1506,mem1507,mem1508,mem1509,mem1606,mem1607,mem1608,mem1609,mem1706,mem1707,mem1708,mem1709};
    4'hf: {pe06_in00,pe06_in01,pe06_in02,pe06_in03,pe06_in04,pe06_in05,pe06_in06,pe06_in07,pe06_in08,pe06_in09,pe06_in10,pe06_in11,pe06_in12,pe06_in13,pe06_in14,pe06_in15}
        <= {mem1506,mem1507,mem1508,mem1509,mem1606,mem1607,mem1608,mem1609,mem1706,mem1707,mem1708,mem1709,mem1806,mem1807,mem1808,mem1809};
    endcase
end
//port07
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0007,mem0008,mem0009,mem0010,mem0107,mem0108,mem0109,mem0110,mem0207,mem0208,mem0209,mem0210,mem0307,mem0308,mem0309,mem0310};
    4'h1: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0107,mem0108,mem0109,mem0110,mem0207,mem0208,mem0209,mem0210,mem0307,mem0308,mem0309,mem0310,mem0407,mem0408,mem0409,mem0410};
    4'h2: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0207,mem0208,mem0209,mem0210,mem0307,mem0308,mem0309,mem0310,mem0407,mem0408,mem0409,mem0410,mem0507,mem0508,mem0509,mem0510};
    4'h3: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0307,mem0308,mem0309,mem0310,mem0407,mem0408,mem0409,mem0410,mem0507,mem0508,mem0509,mem0510,mem0607,mem0608,mem0609,mem0610};
    4'h4: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0407,mem0408,mem0409,mem0410,mem0507,mem0508,mem0509,mem0510,mem0607,mem0608,mem0609,mem0610,mem0707,mem0708,mem0709,mem0710};
    4'h5: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0507,mem0508,mem0509,mem0510,mem0607,mem0608,mem0609,mem0610,mem0707,mem0708,mem0709,mem0710,mem0807,mem0808,mem0809,mem0810};
    4'h6: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0607,mem0608,mem0609,mem0610,mem0707,mem0708,mem0709,mem0710,mem0807,mem0808,mem0809,mem0810,mem0907,mem0908,mem0909,mem0910};
    4'h7: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0707,mem0708,mem0709,mem0710,mem0807,mem0808,mem0809,mem0810,mem0907,mem0908,mem0909,mem0910,mem1007,mem1008,mem1009,mem1010};
    4'h8: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0807,mem0808,mem0809,mem0810,mem0907,mem0908,mem0909,mem0910,mem1007,mem1008,mem1009,mem1010,mem1107,mem1108,mem1109,mem1110};
    4'h9: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem0907,mem0908,mem0909,mem0910,mem1007,mem1008,mem1009,mem1010,mem1107,mem1108,mem1109,mem1110,mem1207,mem1208,mem1209,mem1210};
    4'ha: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem1007,mem1008,mem1009,mem1010,mem1107,mem1108,mem1109,mem1110,mem1207,mem1208,mem1209,mem1210,mem1307,mem1308,mem1309,mem1310};
    4'hb: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem1107,mem1108,mem1109,mem1110,mem1207,mem1208,mem1209,mem1210,mem1307,mem1308,mem1309,mem1310,mem1407,mem1408,mem1409,mem1410};
    4'hc: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem1207,mem1208,mem1209,mem1210,mem1307,mem1308,mem1309,mem1310,mem1407,mem1408,mem1409,mem1410,mem1507,mem1508,mem1509,mem1510};
    4'hd: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem1307,mem1308,mem1309,mem1310,mem1407,mem1408,mem1409,mem1410,mem1507,mem1508,mem1509,mem1510,mem1607,mem1608,mem1609,mem1610};
    4'he: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem1407,mem1408,mem1409,mem1410,mem1507,mem1508,mem1509,mem1510,mem1607,mem1608,mem1609,mem1610,mem1707,mem1708,mem1709,mem1710};
    4'hf: {pe07_in00,pe07_in01,pe07_in02,pe07_in03,pe07_in04,pe07_in05,pe07_in06,pe07_in07,pe07_in08,pe07_in09,pe07_in10,pe07_in11,pe07_in12,pe07_in13,pe07_in14,pe07_in15}
        <= {mem1507,mem1508,mem1509,mem1510,mem1607,mem1608,mem1609,mem1610,mem1707,mem1708,mem1709,mem1710,mem1807,mem1808,mem1809,mem1810};
    endcase
end
//port08
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0008,mem0009,mem0010,mem0011,mem0108,mem0109,mem0110,mem0111,mem0208,mem0209,mem0210,mem0211,mem0308,mem0309,mem0310,mem0311};
    4'h1: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0108,mem0109,mem0110,mem0111,mem0208,mem0209,mem0210,mem0211,mem0308,mem0309,mem0310,mem0311,mem0408,mem0409,mem0410,mem0411};
    4'h2: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0208,mem0209,mem0210,mem0211,mem0308,mem0309,mem0310,mem0311,mem0408,mem0409,mem0410,mem0411,mem0508,mem0509,mem0510,mem0511};
    4'h3: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0308,mem0309,mem0310,mem0311,mem0408,mem0409,mem0410,mem0411,mem0508,mem0509,mem0510,mem0511,mem0608,mem0609,mem0610,mem0611};
    4'h4: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0408,mem0409,mem0410,mem0411,mem0508,mem0509,mem0510,mem0511,mem0608,mem0609,mem0610,mem0611,mem0708,mem0709,mem0710,mem0711};
    4'h5: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0508,mem0509,mem0510,mem0511,mem0608,mem0609,mem0610,mem0611,mem0708,mem0709,mem0710,mem0711,mem0808,mem0809,mem0810,mem0811};
    4'h6: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0608,mem0609,mem0610,mem0611,mem0708,mem0709,mem0710,mem0711,mem0808,mem0809,mem0810,mem0811,mem0908,mem0909,mem0910,mem0911};
    4'h7: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0708,mem0709,mem0710,mem0711,mem0808,mem0809,mem0810,mem0811,mem0908,mem0909,mem0910,mem0911,mem1008,mem1009,mem1010,mem1011};
    4'h8: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0808,mem0809,mem0810,mem0811,mem0908,mem0909,mem0910,mem0911,mem1008,mem1009,mem1010,mem1011,mem1108,mem1109,mem1110,mem1111};
    4'h9: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem0908,mem0909,mem0910,mem0911,mem1008,mem1009,mem1010,mem1011,mem1108,mem1109,mem1110,mem1111,mem1208,mem1209,mem1210,mem1211};
    4'ha: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem1008,mem1009,mem1010,mem1011,mem1108,mem1109,mem1110,mem1111,mem1208,mem1209,mem1210,mem1211,mem1308,mem1309,mem1310,mem1311};
    4'hb: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem1108,mem1109,mem1110,mem1111,mem1208,mem1209,mem1210,mem1211,mem1308,mem1309,mem1310,mem1311,mem1408,mem1409,mem1410,mem1411};
    4'hc: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem1208,mem1209,mem1210,mem1211,mem1308,mem1309,mem1310,mem1311,mem1408,mem1409,mem1410,mem1411,mem1508,mem1509,mem1510,mem1511};
    4'hd: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem1308,mem1309,mem1310,mem1311,mem1408,mem1409,mem1410,mem1411,mem1508,mem1509,mem1510,mem1511,mem1608,mem1609,mem1610,mem1611};
    4'he: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem1408,mem1409,mem1410,mem1411,mem1508,mem1509,mem1510,mem1511,mem1608,mem1609,mem1610,mem1611,mem1708,mem1709,mem1710,mem1711};
    4'hf: {pe08_in00,pe08_in01,pe08_in02,pe08_in03,pe08_in04,pe08_in05,pe08_in06,pe08_in07,pe08_in08,pe08_in09,pe08_in10,pe08_in11,pe08_in12,pe08_in13,pe08_in14,pe08_in15}
        <= {mem1508,mem1509,mem1510,mem1511,mem1608,mem1609,mem1610,mem1611,mem1708,mem1709,mem1710,mem1711,mem1808,mem1809,mem1810,mem1811};
    endcase
end
//port09
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0009,mem0010,mem0011,mem0012,mem0109,mem0110,mem0111,mem0112,mem0209,mem0210,mem0211,mem0212,mem0309,mem0310,mem0311,mem0312};
    4'h1: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0109,mem0110,mem0111,mem0112,mem0209,mem0210,mem0211,mem0212,mem0309,mem0310,mem0311,mem0312,mem0409,mem0410,mem0411,mem0412};
    4'h2: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0209,mem0210,mem0211,mem0212,mem0309,mem0310,mem0311,mem0312,mem0409,mem0410,mem0411,mem0412,mem0509,mem0510,mem0511,mem0512};
    4'h3: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0309,mem0310,mem0311,mem0312,mem0409,mem0410,mem0411,mem0412,mem0509,mem0510,mem0511,mem0512,mem0609,mem0610,mem0611,mem0612};
    4'h4: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0409,mem0410,mem0411,mem0412,mem0509,mem0510,mem0511,mem0512,mem0609,mem0610,mem0611,mem0612,mem0709,mem0710,mem0711,mem0712};
    4'h5: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0509,mem0510,mem0511,mem0512,mem0609,mem0610,mem0611,mem0612,mem0709,mem0710,mem0711,mem0712,mem0809,mem0810,mem0811,mem0812};
    4'h6: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0609,mem0610,mem0611,mem0612,mem0709,mem0710,mem0711,mem0712,mem0809,mem0810,mem0811,mem0812,mem0909,mem0910,mem0911,mem0912};
    4'h7: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0709,mem0710,mem0711,mem0712,mem0809,mem0810,mem0811,mem0812,mem0909,mem0910,mem0911,mem0912,mem1009,mem1010,mem1011,mem1012};
    4'h8: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0809,mem0810,mem0811,mem0812,mem0909,mem0910,mem0911,mem0912,mem1009,mem1010,mem1011,mem1012,mem1109,mem1110,mem1111,mem1112};
    4'h9: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem0909,mem0910,mem0911,mem0912,mem1009,mem1010,mem1011,mem1012,mem1109,mem1110,mem1111,mem1112,mem1209,mem1210,mem1211,mem1212};
    4'ha: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem1009,mem1010,mem1011,mem1012,mem1109,mem1110,mem1111,mem1112,mem1209,mem1210,mem1211,mem1212,mem1309,mem1310,mem1311,mem1312};
    4'hb: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem1109,mem1110,mem1111,mem1112,mem1209,mem1210,mem1211,mem1212,mem1309,mem1310,mem1311,mem1312,mem1409,mem1410,mem1411,mem1412};
    4'hc: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem1209,mem1210,mem1211,mem1212,mem1309,mem1310,mem1311,mem1312,mem1409,mem1410,mem1411,mem1412,mem1509,mem1510,mem1511,mem1512};
    4'hd: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem1309,mem1310,mem1311,mem1312,mem1409,mem1410,mem1411,mem1412,mem1509,mem1510,mem1511,mem1512,mem1609,mem1610,mem1611,mem1612};
    4'he: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem1409,mem1410,mem1411,mem1412,mem1509,mem1510,mem1511,mem1512,mem1609,mem1610,mem1611,mem1612,mem1709,mem1710,mem1711,mem1712};
    4'hf: {pe09_in00,pe09_in01,pe09_in02,pe09_in03,pe09_in04,pe09_in05,pe09_in06,pe09_in07,pe09_in08,pe09_in09,pe09_in10,pe09_in11,pe09_in12,pe09_in13,pe09_in14,pe09_in15}
        <= {mem1509,mem1510,mem1511,mem1512,mem1609,mem1610,mem1611,mem1612,mem1709,mem1710,mem1711,mem1712,mem1809,mem1810,mem1811,mem1812};
    endcase
end
//port10
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0010,mem0011,mem0012,mem0013,mem0110,mem0111,mem0112,mem0113,mem0210,mem0211,mem0212,mem0213,mem0310,mem0311,mem0312,mem0313};
    4'h1: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0110,mem0111,mem0112,mem0113,mem0210,mem0211,mem0212,mem0213,mem0310,mem0311,mem0312,mem0313,mem0410,mem0411,mem0412,mem0413};
    4'h2: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0210,mem0211,mem0212,mem0213,mem0310,mem0311,mem0312,mem0313,mem0410,mem0411,mem0412,mem0413,mem0510,mem0511,mem0512,mem0513};
    4'h3: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0310,mem0311,mem0312,mem0313,mem0410,mem0411,mem0412,mem0413,mem0510,mem0511,mem0512,mem0513,mem0610,mem0611,mem0612,mem0613};
    4'h4: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0410,mem0411,mem0412,mem0413,mem0510,mem0511,mem0512,mem0513,mem0610,mem0611,mem0612,mem0613,mem0710,mem0711,mem0712,mem0713};
    4'h5: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0510,mem0511,mem0512,mem0513,mem0610,mem0611,mem0612,mem0613,mem0710,mem0711,mem0712,mem0713,mem0810,mem0811,mem0812,mem0813};
    4'h6: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0610,mem0611,mem0612,mem0613,mem0710,mem0711,mem0712,mem0713,mem0810,mem0811,mem0812,mem0813,mem0910,mem0911,mem0912,mem0913};
    4'h7: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0710,mem0711,mem0712,mem0713,mem0810,mem0811,mem0812,mem0813,mem0910,mem0911,mem0912,mem0913,mem1010,mem1011,mem1012,mem1013};
    4'h8: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0810,mem0811,mem0812,mem0813,mem0910,mem0911,mem0912,mem0913,mem1010,mem1011,mem1012,mem1013,mem1110,mem1111,mem1112,mem1113};
    4'h9: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem0910,mem0911,mem0912,mem0913,mem1010,mem1011,mem1012,mem1013,mem1110,mem1111,mem1112,mem1113,mem1210,mem1211,mem1212,mem1213};
    4'ha: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem1010,mem1011,mem1012,mem1013,mem1110,mem1111,mem1112,mem1113,mem1210,mem1211,mem1212,mem1213,mem1310,mem1311,mem1312,mem1313};
    4'hb: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem1110,mem1111,mem1112,mem1113,mem1210,mem1211,mem1212,mem1213,mem1310,mem1311,mem1312,mem1313,mem1410,mem1411,mem1412,mem1413};
    4'hc: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem1210,mem1211,mem1212,mem1213,mem1310,mem1311,mem1312,mem1313,mem1410,mem1411,mem1412,mem1413,mem1510,mem1511,mem1512,mem1513};
    4'hd: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem1310,mem1311,mem1312,mem1313,mem1410,mem1411,mem1412,mem1413,mem1510,mem1511,mem1512,mem1513,mem1610,mem1611,mem1612,mem1613};
    4'he: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem1410,mem1411,mem1412,mem1413,mem1510,mem1511,mem1512,mem1513,mem1610,mem1611,mem1612,mem1613,mem1710,mem1711,mem1712,mem1713};
    4'hf: {pe10_in00,pe10_in01,pe10_in02,pe10_in03,pe10_in04,pe10_in05,pe10_in06,pe10_in07,pe10_in08,pe10_in09,pe10_in10,pe10_in11,pe10_in12,pe10_in13,pe10_in14,pe10_in15}
        <= {mem1510,mem1511,mem1512,mem1513,mem1610,mem1611,mem1612,mem1613,mem1710,mem1711,mem1712,mem1713,mem1810,mem1811,mem1812,mem1813};
    endcase
end
//port11
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0011,mem0012,mem0013,mem0014,mem0111,mem0112,mem0113,mem0114,mem0211,mem0212,mem0213,mem0214,mem0311,mem0312,mem0313,mem0314};
    4'h1: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0111,mem0112,mem0113,mem0114,mem0211,mem0212,mem0213,mem0214,mem0311,mem0312,mem0313,mem0314,mem0411,mem0412,mem0413,mem0414};
    4'h2: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0211,mem0212,mem0213,mem0214,mem0311,mem0312,mem0313,mem0314,mem0411,mem0412,mem0413,mem0414,mem0511,mem0512,mem0513,mem0514};
    4'h3: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0311,mem0312,mem0313,mem0314,mem0411,mem0412,mem0413,mem0414,mem0511,mem0512,mem0513,mem0514,mem0611,mem0612,mem0613,mem0614};
    4'h4: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0411,mem0412,mem0413,mem0414,mem0511,mem0512,mem0513,mem0514,mem0611,mem0612,mem0613,mem0614,mem0711,mem0712,mem0713,mem0714};
    4'h5: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0511,mem0512,mem0513,mem0514,mem0611,mem0612,mem0613,mem0614,mem0711,mem0712,mem0713,mem0714,mem0811,mem0812,mem0813,mem0814};
    4'h6: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0611,mem0612,mem0613,mem0614,mem0711,mem0712,mem0713,mem0714,mem0811,mem0812,mem0813,mem0814,mem0911,mem0912,mem0913,mem0914};
    4'h7: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0711,mem0712,mem0713,mem0714,mem0811,mem0812,mem0813,mem0814,mem0911,mem0912,mem0913,mem0914,mem1011,mem1012,mem1013,mem1014};
    4'h8: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0811,mem0812,mem0813,mem0814,mem0911,mem0912,mem0913,mem0914,mem1011,mem1012,mem1013,mem1014,mem1111,mem1112,mem1113,mem1114};
    4'h9: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem0911,mem0912,mem0913,mem0914,mem1011,mem1012,mem1013,mem1014,mem1111,mem1112,mem1113,mem1114,mem1211,mem1212,mem1213,mem1214};
    4'ha: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem1011,mem1012,mem1013,mem1014,mem1111,mem1112,mem1113,mem1114,mem1211,mem1212,mem1213,mem1214,mem1311,mem1312,mem1313,mem1314};
    4'hb: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem1111,mem1112,mem1113,mem1114,mem1211,mem1212,mem1213,mem1214,mem1311,mem1312,mem1313,mem1314,mem1411,mem1412,mem1413,mem1414};
    4'hc: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem1211,mem1212,mem1213,mem1214,mem1311,mem1312,mem1313,mem1314,mem1411,mem1412,mem1413,mem1414,mem1511,mem1512,mem1513,mem1514};
    4'hd: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem1311,mem1312,mem1313,mem1314,mem1411,mem1412,mem1413,mem1414,mem1511,mem1512,mem1513,mem1514,mem1611,mem1612,mem1613,mem1614};
    4'he: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem1411,mem1412,mem1413,mem1414,mem1511,mem1512,mem1513,mem1514,mem1611,mem1612,mem1613,mem1614,mem1711,mem1712,mem1713,mem1714};
    4'hf: {pe11_in00,pe11_in01,pe11_in02,pe11_in03,pe11_in04,pe11_in05,pe11_in06,pe11_in07,pe11_in08,pe11_in09,pe11_in10,pe11_in11,pe11_in12,pe11_in13,pe11_in14,pe11_in15}
        <= {mem1511,mem1512,mem1513,mem1514,mem1611,mem1612,mem1613,mem1614,mem1711,mem1712,mem1713,mem1714,mem1811,mem1812,mem1813,mem1814};
    endcase
end
//port12
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0012,mem0013,mem0014,mem0015,mem0112,mem0113,mem0114,mem0115,mem0212,mem0213,mem0214,mem0215,mem0312,mem0313,mem0314,mem0315};
    4'h1: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0112,mem0113,mem0114,mem0115,mem0212,mem0213,mem0214,mem0215,mem0312,mem0313,mem0314,mem0315,mem0412,mem0413,mem0414,mem0415};
    4'h2: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0212,mem0213,mem0214,mem0215,mem0312,mem0313,mem0314,mem0315,mem0412,mem0413,mem0414,mem0415,mem0512,mem0513,mem0514,mem0515};
    4'h3: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0312,mem0313,mem0314,mem0315,mem0412,mem0413,mem0414,mem0415,mem0512,mem0513,mem0514,mem0515,mem0612,mem0613,mem0614,mem0615};
    4'h4: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0412,mem0413,mem0414,mem0415,mem0512,mem0513,mem0514,mem0515,mem0612,mem0613,mem0614,mem0615,mem0712,mem0713,mem0714,mem0715};
    4'h5: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0512,mem0513,mem0514,mem0515,mem0612,mem0613,mem0614,mem0615,mem0712,mem0713,mem0714,mem0715,mem0812,mem0813,mem0814,mem0815};
    4'h6: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0612,mem0613,mem0614,mem0615,mem0712,mem0713,mem0714,mem0715,mem0812,mem0813,mem0814,mem0815,mem0912,mem0913,mem0914,mem0915};
    4'h7: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0712,mem0713,mem0714,mem0715,mem0812,mem0813,mem0814,mem0815,mem0912,mem0913,mem0914,mem0915,mem1012,mem1013,mem1014,mem1015};
    4'h8: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0812,mem0813,mem0814,mem0815,mem0912,mem0913,mem0914,mem0915,mem1012,mem1013,mem1014,mem1015,mem1112,mem1113,mem1114,mem1115};
    4'h9: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem0912,mem0913,mem0914,mem0915,mem1012,mem1013,mem1014,mem1015,mem1112,mem1113,mem1114,mem1115,mem1212,mem1213,mem1214,mem1215};
    4'ha: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem1012,mem1013,mem1014,mem1015,mem1112,mem1113,mem1114,mem1115,mem1212,mem1213,mem1214,mem1215,mem1312,mem1313,mem1314,mem1315};
    4'hb: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem1112,mem1113,mem1114,mem1115,mem1212,mem1213,mem1214,mem1215,mem1312,mem1313,mem1314,mem1315,mem1412,mem1413,mem1414,mem1415};
    4'hc: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem1212,mem1213,mem1214,mem1215,mem1312,mem1313,mem1314,mem1315,mem1412,mem1413,mem1414,mem1415,mem1512,mem1513,mem1514,mem1515};
    4'hd: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem1312,mem1313,mem1314,mem1315,mem1412,mem1413,mem1414,mem1415,mem1512,mem1513,mem1514,mem1515,mem1612,mem1613,mem1614,mem1615};
    4'he: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem1412,mem1413,mem1414,mem1415,mem1512,mem1513,mem1514,mem1515,mem1612,mem1613,mem1614,mem1615,mem1712,mem1713,mem1714,mem1715};
    4'hf: {pe12_in00,pe12_in01,pe12_in02,pe12_in03,pe12_in04,pe12_in05,pe12_in06,pe12_in07,pe12_in08,pe12_in09,pe12_in10,pe12_in11,pe12_in12,pe12_in13,pe12_in14,pe12_in15}
        <= {mem1512,mem1513,mem1514,mem1515,mem1612,mem1613,mem1614,mem1615,mem1712,mem1713,mem1714,mem1715,mem1812,mem1813,mem1814,mem1815};
    endcase
end
//port13
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0013,mem0014,mem0015,mem0016,mem0113,mem0114,mem0115,mem0116,mem0213,mem0214,mem0215,mem0216,mem0313,mem0314,mem0315,mem0316};
    4'h1: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0113,mem0114,mem0115,mem0116,mem0213,mem0214,mem0215,mem0216,mem0313,mem0314,mem0315,mem0316,mem0413,mem0414,mem0415,mem0416};
    4'h2: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0213,mem0214,mem0215,mem0216,mem0313,mem0314,mem0315,mem0316,mem0413,mem0414,mem0415,mem0416,mem0513,mem0514,mem0515,mem0516};
    4'h3: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0313,mem0314,mem0315,mem0316,mem0413,mem0414,mem0415,mem0416,mem0513,mem0514,mem0515,mem0516,mem0613,mem0614,mem0615,mem0616};
    4'h4: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0413,mem0414,mem0415,mem0416,mem0513,mem0514,mem0515,mem0516,mem0613,mem0614,mem0615,mem0616,mem0713,mem0714,mem0715,mem0716};
    4'h5: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0513,mem0514,mem0515,mem0516,mem0613,mem0614,mem0615,mem0616,mem0713,mem0714,mem0715,mem0716,mem0813,mem0814,mem0815,mem0816};
    4'h6: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0613,mem0614,mem0615,mem0616,mem0713,mem0714,mem0715,mem0716,mem0813,mem0814,mem0815,mem0816,mem0913,mem0914,mem0915,mem0916};
    4'h7: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0713,mem0714,mem0715,mem0716,mem0813,mem0814,mem0815,mem0816,mem0913,mem0914,mem0915,mem0916,mem1013,mem1014,mem1015,mem1016};
    4'h8: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0813,mem0814,mem0815,mem0816,mem0913,mem0914,mem0915,mem0916,mem1013,mem1014,mem1015,mem1016,mem1113,mem1114,mem1115,mem1116};
    4'h9: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem0913,mem0914,mem0915,mem0916,mem1013,mem1014,mem1015,mem1016,mem1113,mem1114,mem1115,mem1116,mem1213,mem1214,mem1215,mem1216};
    4'ha: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem1013,mem1014,mem1015,mem1016,mem1113,mem1114,mem1115,mem1116,mem1213,mem1214,mem1215,mem1216,mem1313,mem1314,mem1315,mem1316};
    4'hb: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem1113,mem1114,mem1115,mem1116,mem1213,mem1214,mem1215,mem1216,mem1313,mem1314,mem1315,mem1316,mem1413,mem1414,mem1415,mem1416};
    4'hc: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem1213,mem1214,mem1215,mem1216,mem1313,mem1314,mem1315,mem1316,mem1413,mem1414,mem1415,mem1416,mem1513,mem1514,mem1515,mem1516};
    4'hd: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem1313,mem1314,mem1315,mem1316,mem1413,mem1414,mem1415,mem1416,mem1513,mem1514,mem1515,mem1516,mem1613,mem1614,mem1615,mem1616};
    4'he: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem1413,mem1414,mem1415,mem1416,mem1513,mem1514,mem1515,mem1516,mem1613,mem1614,mem1615,mem1616,mem1713,mem1714,mem1715,mem1716};
    4'hf: {pe13_in00,pe13_in01,pe13_in02,pe13_in03,pe13_in04,pe13_in05,pe13_in06,pe13_in07,pe13_in08,pe13_in09,pe13_in10,pe13_in11,pe13_in12,pe13_in13,pe13_in14,pe13_in15}
        <= {mem1513,mem1514,mem1515,mem1516,mem1613,mem1614,mem1615,mem1616,mem1713,mem1714,mem1715,mem1716,mem1813,mem1814,mem1815,mem1816};
    endcase
end
//port14
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0014,mem0015,mem0016,mem0017,mem0114,mem0115,mem0116,mem0117,mem0214,mem0215,mem0216,mem0217,mem0314,mem0315,mem0316,mem0317};
    4'h1: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0114,mem0115,mem0116,mem0117,mem0214,mem0215,mem0216,mem0217,mem0314,mem0315,mem0316,mem0317,mem0414,mem0415,mem0416,mem0417};
    4'h2: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0214,mem0215,mem0216,mem0217,mem0314,mem0315,mem0316,mem0317,mem0414,mem0415,mem0416,mem0417,mem0514,mem0515,mem0516,mem0517};
    4'h3: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0314,mem0315,mem0316,mem0317,mem0414,mem0415,mem0416,mem0417,mem0514,mem0515,mem0516,mem0517,mem0614,mem0615,mem0616,mem0617};
    4'h4: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0414,mem0415,mem0416,mem0417,mem0514,mem0515,mem0516,mem0517,mem0614,mem0615,mem0616,mem0617,mem0714,mem0715,mem0716,mem0717};
    4'h5: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0514,mem0515,mem0516,mem0517,mem0614,mem0615,mem0616,mem0617,mem0714,mem0715,mem0716,mem0717,mem0814,mem0815,mem0816,mem0817};
    4'h6: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0614,mem0615,mem0616,mem0617,mem0714,mem0715,mem0716,mem0717,mem0814,mem0815,mem0816,mem0817,mem0914,mem0915,mem0916,mem0917};
    4'h7: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0714,mem0715,mem0716,mem0717,mem0814,mem0815,mem0816,mem0817,mem0914,mem0915,mem0916,mem0917,mem1014,mem1015,mem1016,mem1017};
    4'h8: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0814,mem0815,mem0816,mem0817,mem0914,mem0915,mem0916,mem0917,mem1014,mem1015,mem1016,mem1017,mem1114,mem1115,mem1116,mem1117};
    4'h9: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem0914,mem0915,mem0916,mem0917,mem1014,mem1015,mem1016,mem1017,mem1114,mem1115,mem1116,mem1117,mem1214,mem1215,mem1216,mem1217};
    4'ha: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem1014,mem1015,mem1016,mem1017,mem1114,mem1115,mem1116,mem1117,mem1214,mem1215,mem1216,mem1217,mem1314,mem1315,mem1316,mem1317};
    4'hb: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem1114,mem1115,mem1116,mem1117,mem1214,mem1215,mem1216,mem1217,mem1314,mem1315,mem1316,mem1317,mem1414,mem1415,mem1416,mem1417};
    4'hc: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem1214,mem1215,mem1216,mem1217,mem1314,mem1315,mem1316,mem1317,mem1414,mem1415,mem1416,mem1417,mem1514,mem1515,mem1516,mem1517};
    4'hd: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem1314,mem1315,mem1316,mem1317,mem1414,mem1415,mem1416,mem1417,mem1514,mem1515,mem1516,mem1517,mem1614,mem1615,mem1616,mem1617};
    4'he: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem1414,mem1415,mem1416,mem1417,mem1514,mem1515,mem1516,mem1517,mem1614,mem1615,mem1616,mem1617,mem1714,mem1715,mem1716,mem1717};
    4'hf: {pe14_in00,pe14_in01,pe14_in02,pe14_in03,pe14_in04,pe14_in05,pe14_in06,pe14_in07,pe14_in08,pe14_in09,pe14_in10,pe14_in11,pe14_in12,pe14_in13,pe14_in14,pe14_in15}
        <= {mem1514,mem1515,mem1516,mem1517,mem1614,mem1615,mem1616,mem1617,mem1714,mem1715,mem1716,mem1717,mem1814,mem1815,mem1816,mem1817};
    endcase
end
//port15
always @ (posedge clk)
begin
    case (ctr_word)
    4'h0: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0015,mem0016,mem0017,mem0018,mem0115,mem0116,mem0117,mem0118,mem0215,mem0216,mem0217,mem0218,mem0315,mem0316,mem0317,mem0318};
    4'h1: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0115,mem0116,mem0117,mem0118,mem0215,mem0216,mem0217,mem0218,mem0315,mem0316,mem0317,mem0318,mem0415,mem0416,mem0417,mem0418};
    4'h2: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0215,mem0216,mem0217,mem0218,mem0315,mem0316,mem0317,mem0318,mem0415,mem0416,mem0417,mem0418,mem0515,mem0516,mem0517,mem0518};
    4'h3: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0315,mem0316,mem0317,mem0318,mem0415,mem0416,mem0417,mem0418,mem0515,mem0516,mem0517,mem0518,mem0615,mem0616,mem0617,mem0618};
    4'h4: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0415,mem0416,mem0417,mem0418,mem0515,mem0516,mem0517,mem0518,mem0615,mem0616,mem0617,mem0618,mem0715,mem0716,mem0717,mem0718};
    4'h5: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0515,mem0516,mem0517,mem0518,mem0615,mem0616,mem0617,mem0618,mem0715,mem0716,mem0717,mem0718,mem0815,mem0816,mem0817,mem0818};
    4'h6: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0615,mem0616,mem0617,mem0618,mem0715,mem0716,mem0717,mem0718,mem0815,mem0816,mem0817,mem0818,mem0915,mem0916,mem0917,mem0918};
    4'h7: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0715,mem0716,mem0717,mem0718,mem0815,mem0816,mem0817,mem0818,mem0915,mem0916,mem0917,mem0918,mem1015,mem1016,mem1017,mem1018};
    4'h8: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0815,mem0816,mem0817,mem0818,mem0915,mem0916,mem0917,mem0918,mem1015,mem1016,mem1017,mem1018,mem1115,mem1116,mem1117,mem1118};
    4'h9: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem0915,mem0916,mem0917,mem0918,mem1015,mem1016,mem1017,mem1018,mem1115,mem1116,mem1117,mem1118,mem1215,mem1216,mem1217,mem1218};
    4'ha: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem1015,mem1016,mem1017,mem1018,mem1115,mem1116,mem1117,mem1118,mem1215,mem1216,mem1217,mem1218,mem1315,mem1316,mem1317,mem1318};
    4'hb: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem1115,mem1116,mem1117,mem1118,mem1215,mem1216,mem1217,mem1218,mem1315,mem1316,mem1317,mem1318,mem1415,mem1416,mem1417,mem1418};
    4'hc: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem1215,mem1216,mem1217,mem1218,mem1315,mem1316,mem1317,mem1318,mem1415,mem1416,mem1417,mem1418,mem1515,mem1516,mem1517,mem1518};
    4'hd: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem1315,mem1316,mem1317,mem1318,mem1415,mem1416,mem1417,mem1418,mem1515,mem1516,mem1517,mem1518,mem1615,mem1616,mem1617,mem1618};
    4'he: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem1415,mem1416,mem1417,mem1418,mem1515,mem1516,mem1517,mem1518,mem1615,mem1616,mem1617,mem1618,mem1715,mem1716,mem1717,mem1718};
    4'hf: {pe15_in00,pe15_in01,pe15_in02,pe15_in03,pe15_in04,pe15_in05,pe15_in06,pe15_in07,pe15_in08,pe15_in09,pe15_in10,pe15_in11,pe15_in12,pe15_in13,pe15_in14,pe15_in15}
        <= {mem1515,mem1516,mem1517,mem1518,mem1615,mem1616,mem1617,mem1618,mem1715,mem1716,mem1717,mem1718,mem1815,mem1816,mem1817,mem1818};
    endcase
end
/************************ OUTPUT Logic END ************************/
endmodule
