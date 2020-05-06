module Control(
  input  [6:0] io_opcode,
  output       io_validinst,
  output       io_branch,
  output       io_memread,
  output [1:0] io_toreg,
  output       io_add,
  output       io_memwrite,
  output       io_regwrite,
  output       io_immediate,
  output [1:0] io_alusrc1,
  output [1:0] io_jump
);
  wire  _T_1; // @[Lookup.scala 31:38]
  wire  _T_3; // @[Lookup.scala 31:38]
  wire  _T_5; // @[Lookup.scala 31:38]
  wire  _T_7; // @[Lookup.scala 31:38]
  wire  _T_9; // @[Lookup.scala 31:38]
  wire  _T_11; // @[Lookup.scala 31:38]
  wire  _T_13; // @[Lookup.scala 31:38]
  wire  _T_15; // @[Lookup.scala 31:38]
  wire  _T_17; // @[Lookup.scala 31:38]
  wire  _T_19; // @[Lookup.scala 31:38]
  wire  _T_21; // @[Lookup.scala 33:37]
  wire  _T_22; // @[Lookup.scala 33:37]
  wire  _T_23; // @[Lookup.scala 33:37]
  wire  _T_24; // @[Lookup.scala 33:37]
  wire  _T_25; // @[Lookup.scala 33:37]
  wire  _T_26; // @[Lookup.scala 33:37]
  wire  _T_27; // @[Lookup.scala 33:37]
  wire  _T_28; // @[Lookup.scala 33:37]
  wire  _T_35; // @[Lookup.scala 33:37]
  wire  _T_36; // @[Lookup.scala 33:37]
  wire  _T_37; // @[Lookup.scala 33:37]
  wire  _T_46; // @[Lookup.scala 33:37]
  wire [2:0] _T_47; // @[Lookup.scala 33:37]
  wire [2:0] _T_48; // @[Lookup.scala 33:37]
  wire [2:0] _T_49; // @[Lookup.scala 33:37]
  wire [2:0] _T_50; // @[Lookup.scala 33:37]
  wire [2:0] _T_51; // @[Lookup.scala 33:37]
  wire [2:0] _T_52; // @[Lookup.scala 33:37]
  wire [2:0] _T_53; // @[Lookup.scala 33:37]
  wire [2:0] _T_54; // @[Lookup.scala 33:37]
  wire [2:0] _T_55; // @[Lookup.scala 33:37]
  wire [2:0] signals_3; // @[Lookup.scala 33:37]
  wire  _T_60; // @[Lookup.scala 33:37]
  wire  _T_61; // @[Lookup.scala 33:37]
  wire  _T_62; // @[Lookup.scala 33:37]
  wire  _T_63; // @[Lookup.scala 33:37]
  wire  _T_64; // @[Lookup.scala 33:37]
  wire  _T_72; // @[Lookup.scala 33:37]
  wire  _T_73; // @[Lookup.scala 33:37]
  wire  _T_76; // @[Lookup.scala 33:37]
  wire  _T_77; // @[Lookup.scala 33:37]
  wire  _T_78; // @[Lookup.scala 33:37]
  wire  _T_79; // @[Lookup.scala 33:37]
  wire  _T_80; // @[Lookup.scala 33:37]
  wire  _T_81; // @[Lookup.scala 33:37]
  wire  _T_82; // @[Lookup.scala 33:37]
  wire  _T_85; // @[Lookup.scala 33:37]
  wire  _T_86; // @[Lookup.scala 33:37]
  wire  _T_87; // @[Lookup.scala 33:37]
  wire  _T_88; // @[Lookup.scala 33:37]
  wire  _T_89; // @[Lookup.scala 33:37]
  wire  _T_90; // @[Lookup.scala 33:37]
  wire  _T_91; // @[Lookup.scala 33:37]
  wire [1:0] _T_95; // @[Lookup.scala 33:37]
  wire [1:0] _T_96; // @[Lookup.scala 33:37]
  wire [1:0] _T_97; // @[Lookup.scala 33:37]
  wire [1:0] _T_98; // @[Lookup.scala 33:37]
  wire [1:0] _T_99; // @[Lookup.scala 33:37]
  wire [1:0] _T_100; // @[Lookup.scala 33:37]
  wire [1:0] _T_102; // @[Lookup.scala 33:37]
  wire [1:0] _T_103; // @[Lookup.scala 33:37]
  wire [1:0] _T_104; // @[Lookup.scala 33:37]
  wire [1:0] _T_105; // @[Lookup.scala 33:37]
  wire [1:0] _T_106; // @[Lookup.scala 33:37]
  wire [1:0] _T_107; // @[Lookup.scala 33:37]
  wire [1:0] _T_108; // @[Lookup.scala 33:37]
  wire [1:0] _T_109; // @[Lookup.scala 33:37]
  assign _T_1 = 7'h33 == io_opcode; // @[Lookup.scala 31:38]
  assign _T_3 = 7'h13 == io_opcode; // @[Lookup.scala 31:38]
  assign _T_5 = 7'h3 == io_opcode; // @[Lookup.scala 31:38]
  assign _T_7 = 7'h23 == io_opcode; // @[Lookup.scala 31:38]
  assign _T_9 = 7'h63 == io_opcode; // @[Lookup.scala 31:38]
  assign _T_11 = 7'h37 == io_opcode; // @[Lookup.scala 31:38]
  assign _T_13 = 7'h17 == io_opcode; // @[Lookup.scala 31:38]
  assign _T_15 = 7'h6f == io_opcode; // @[Lookup.scala 31:38]
  assign _T_17 = 7'h67 == io_opcode; // @[Lookup.scala 31:38]
  assign _T_19 = 7'h73 == io_opcode; // @[Lookup.scala 31:38]
  assign _T_21 = _T_17 | _T_19; // @[Lookup.scala 33:37]
  assign _T_22 = _T_15 | _T_21; // @[Lookup.scala 33:37]
  assign _T_23 = _T_13 | _T_22; // @[Lookup.scala 33:37]
  assign _T_24 = _T_11 | _T_23; // @[Lookup.scala 33:37]
  assign _T_25 = _T_9 | _T_24; // @[Lookup.scala 33:37]
  assign _T_26 = _T_7 | _T_25; // @[Lookup.scala 33:37]
  assign _T_27 = _T_5 | _T_26; // @[Lookup.scala 33:37]
  assign _T_28 = _T_3 | _T_27; // @[Lookup.scala 33:37]
  assign _T_35 = _T_7 ? 1'h0 : _T_9; // @[Lookup.scala 33:37]
  assign _T_36 = _T_5 ? 1'h0 : _T_35; // @[Lookup.scala 33:37]
  assign _T_37 = _T_3 ? 1'h0 : _T_36; // @[Lookup.scala 33:37]
  assign _T_46 = _T_3 ? 1'h0 : _T_5; // @[Lookup.scala 33:37]
  assign _T_47 = _T_19 ? 3'h3 : 3'h4; // @[Lookup.scala 33:37]
  assign _T_48 = _T_17 ? 3'h2 : _T_47; // @[Lookup.scala 33:37]
  assign _T_49 = _T_15 ? 3'h2 : _T_48; // @[Lookup.scala 33:37]
  assign _T_50 = _T_13 ? 3'h0 : _T_49; // @[Lookup.scala 33:37]
  assign _T_51 = _T_11 ? 3'h0 : _T_50; // @[Lookup.scala 33:37]
  assign _T_52 = _T_9 ? 3'h0 : _T_51; // @[Lookup.scala 33:37]
  assign _T_53 = _T_7 ? 3'h0 : _T_52; // @[Lookup.scala 33:37]
  assign _T_54 = _T_5 ? 3'h1 : _T_53; // @[Lookup.scala 33:37]
  assign _T_55 = _T_3 ? 3'h0 : _T_54; // @[Lookup.scala 33:37]
  assign signals_3 = _T_1 ? 3'h0 : _T_55; // @[Lookup.scala 33:37]
  assign _T_60 = _T_11 | _T_13; // @[Lookup.scala 33:37]
  assign _T_61 = _T_9 ? 1'h0 : _T_60; // @[Lookup.scala 33:37]
  assign _T_62 = _T_7 | _T_61; // @[Lookup.scala 33:37]
  assign _T_63 = _T_5 | _T_62; // @[Lookup.scala 33:37]
  assign _T_64 = _T_3 ? 1'h0 : _T_63; // @[Lookup.scala 33:37]
  assign _T_72 = _T_5 ? 1'h0 : _T_7; // @[Lookup.scala 33:37]
  assign _T_73 = _T_3 ? 1'h0 : _T_72; // @[Lookup.scala 33:37]
  assign _T_76 = _T_15 ? 1'h0 : _T_17; // @[Lookup.scala 33:37]
  assign _T_77 = _T_13 | _T_76; // @[Lookup.scala 33:37]
  assign _T_78 = _T_11 | _T_77; // @[Lookup.scala 33:37]
  assign _T_79 = _T_9 ? 1'h0 : _T_78; // @[Lookup.scala 33:37]
  assign _T_80 = _T_7 | _T_79; // @[Lookup.scala 33:37]
  assign _T_81 = _T_5 | _T_80; // @[Lookup.scala 33:37]
  assign _T_82 = _T_3 | _T_81; // @[Lookup.scala 33:37]
  assign _T_85 = _T_15 | _T_17; // @[Lookup.scala 33:37]
  assign _T_86 = _T_13 | _T_85; // @[Lookup.scala 33:37]
  assign _T_87 = _T_11 | _T_86; // @[Lookup.scala 33:37]
  assign _T_88 = _T_9 ? 1'h0 : _T_87; // @[Lookup.scala 33:37]
  assign _T_89 = _T_7 ? 1'h0 : _T_88; // @[Lookup.scala 33:37]
  assign _T_90 = _T_5 | _T_89; // @[Lookup.scala 33:37]
  assign _T_91 = _T_3 | _T_90; // @[Lookup.scala 33:37]
  assign _T_95 = _T_13 ? 2'h2 : {{1'd0}, _T_15}; // @[Lookup.scala 33:37]
  assign _T_96 = _T_11 ? 2'h1 : _T_95; // @[Lookup.scala 33:37]
  assign _T_97 = _T_9 ? 2'h0 : _T_96; // @[Lookup.scala 33:37]
  assign _T_98 = _T_7 ? 2'h0 : _T_97; // @[Lookup.scala 33:37]
  assign _T_99 = _T_5 ? 2'h0 : _T_98; // @[Lookup.scala 33:37]
  assign _T_100 = _T_3 ? 2'h0 : _T_99; // @[Lookup.scala 33:37]
  assign _T_102 = _T_17 ? 2'h3 : 2'h0; // @[Lookup.scala 33:37]
  assign _T_103 = _T_15 ? 2'h2 : _T_102; // @[Lookup.scala 33:37]
  assign _T_104 = _T_13 ? 2'h0 : _T_103; // @[Lookup.scala 33:37]
  assign _T_105 = _T_11 ? 2'h0 : _T_104; // @[Lookup.scala 33:37]
  assign _T_106 = _T_9 ? 2'h0 : _T_105; // @[Lookup.scala 33:37]
  assign _T_107 = _T_7 ? 2'h0 : _T_106; // @[Lookup.scala 33:37]
  assign _T_108 = _T_5 ? 2'h0 : _T_107; // @[Lookup.scala 33:37]
  assign _T_109 = _T_3 ? 2'h0 : _T_108; // @[Lookup.scala 33:37]
  assign io_validinst = _T_1 | _T_28; // @[control.scala 68:16]
  assign io_branch = _T_1 ? 1'h0 : _T_37; // @[control.scala 69:13]
  assign io_memread = _T_1 ? 1'h0 : _T_46; // @[control.scala 70:14]
  assign io_toreg = signals_3[1:0]; // @[control.scala 71:12]
  assign io_add = _T_1 ? 1'h0 : _T_64; // @[control.scala 72:10]
  assign io_memwrite = _T_1 ? 1'h0 : _T_73; // @[control.scala 73:15]
  assign io_regwrite = _T_1 | _T_91; // @[control.scala 75:15]
  assign io_immediate = _T_1 ? 1'h0 : _T_82; // @[control.scala 74:16]
  assign io_alusrc1 = _T_1 ? 2'h0 : _T_100; // @[control.scala 76:14]
  assign io_jump = _T_1 ? 2'h0 : _T_109; // @[control.scala 77:11]
endmodule
module RegisterFile(
  input         clock,
  input  [4:0]  io_readreg1,
  input  [4:0]  io_readreg2,
  input  [4:0]  io_writereg,
  input  [31:0] io_writedata,
  input         io_wen,
  output [31:0] io_readdata1,
  output [31:0] io_readdata2
);
  reg [31:0] regs_0; // @[register-file.scala 49:17]
  reg [31:0] _RAND_0;
  reg [31:0] regs_1; // @[register-file.scala 49:17]
  reg [31:0] _RAND_1;
  reg [31:0] regs_2; // @[register-file.scala 49:17]
  reg [31:0] _RAND_2;
  reg [31:0] regs_3; // @[register-file.scala 49:17]
  reg [31:0] _RAND_3;
  reg [31:0] regs_4; // @[register-file.scala 49:17]
  reg [31:0] _RAND_4;
  reg [31:0] regs_5; // @[register-file.scala 49:17]
  reg [31:0] _RAND_5;
  reg [31:0] regs_6; // @[register-file.scala 49:17]
  reg [31:0] _RAND_6;
  reg [31:0] regs_7; // @[register-file.scala 49:17]
  reg [31:0] _RAND_7;
  reg [31:0] regs_8; // @[register-file.scala 49:17]
  reg [31:0] _RAND_8;
  reg [31:0] regs_9; // @[register-file.scala 49:17]
  reg [31:0] _RAND_9;
  reg [31:0] regs_10; // @[register-file.scala 49:17]
  reg [31:0] _RAND_10;
  reg [31:0] regs_11; // @[register-file.scala 49:17]
  reg [31:0] _RAND_11;
  reg [31:0] regs_12; // @[register-file.scala 49:17]
  reg [31:0] _RAND_12;
  reg [31:0] regs_13; // @[register-file.scala 49:17]
  reg [31:0] _RAND_13;
  reg [31:0] regs_14; // @[register-file.scala 49:17]
  reg [31:0] _RAND_14;
  reg [31:0] regs_15; // @[register-file.scala 49:17]
  reg [31:0] _RAND_15;
  reg [31:0] regs_16; // @[register-file.scala 49:17]
  reg [31:0] _RAND_16;
  reg [31:0] regs_17; // @[register-file.scala 49:17]
  reg [31:0] _RAND_17;
  reg [31:0] regs_18; // @[register-file.scala 49:17]
  reg [31:0] _RAND_18;
  reg [31:0] regs_19; // @[register-file.scala 49:17]
  reg [31:0] _RAND_19;
  reg [31:0] regs_20; // @[register-file.scala 49:17]
  reg [31:0] _RAND_20;
  reg [31:0] regs_21; // @[register-file.scala 49:17]
  reg [31:0] _RAND_21;
  reg [31:0] regs_22; // @[register-file.scala 49:17]
  reg [31:0] _RAND_22;
  reg [31:0] regs_23; // @[register-file.scala 49:17]
  reg [31:0] _RAND_23;
  reg [31:0] regs_24; // @[register-file.scala 49:17]
  reg [31:0] _RAND_24;
  reg [31:0] regs_25; // @[register-file.scala 49:17]
  reg [31:0] _RAND_25;
  reg [31:0] regs_26; // @[register-file.scala 49:17]
  reg [31:0] _RAND_26;
  reg [31:0] regs_27; // @[register-file.scala 49:17]
  reg [31:0] _RAND_27;
  reg [31:0] regs_28; // @[register-file.scala 49:17]
  reg [31:0] _RAND_28;
  reg [31:0] regs_29; // @[register-file.scala 49:17]
  reg [31:0] _RAND_29;
  reg [31:0] regs_30; // @[register-file.scala 49:17]
  reg [31:0] _RAND_30;
  reg [31:0] regs_31; // @[register-file.scala 49:17]
  reg [31:0] _RAND_31;
  wire [31:0] _GEN_65; // @[register-file.scala 58:16]
  wire [31:0] _GEN_66; // @[register-file.scala 58:16]
  wire [31:0] _GEN_67; // @[register-file.scala 58:16]
  wire [31:0] _GEN_68; // @[register-file.scala 58:16]
  wire [31:0] _GEN_69; // @[register-file.scala 58:16]
  wire [31:0] _GEN_70; // @[register-file.scala 58:16]
  wire [31:0] _GEN_71; // @[register-file.scala 58:16]
  wire [31:0] _GEN_72; // @[register-file.scala 58:16]
  wire [31:0] _GEN_73; // @[register-file.scala 58:16]
  wire [31:0] _GEN_74; // @[register-file.scala 58:16]
  wire [31:0] _GEN_75; // @[register-file.scala 58:16]
  wire [31:0] _GEN_76; // @[register-file.scala 58:16]
  wire [31:0] _GEN_77; // @[register-file.scala 58:16]
  wire [31:0] _GEN_78; // @[register-file.scala 58:16]
  wire [31:0] _GEN_79; // @[register-file.scala 58:16]
  wire [31:0] _GEN_80; // @[register-file.scala 58:16]
  wire [31:0] _GEN_81; // @[register-file.scala 58:16]
  wire [31:0] _GEN_82; // @[register-file.scala 58:16]
  wire [31:0] _GEN_83; // @[register-file.scala 58:16]
  wire [31:0] _GEN_84; // @[register-file.scala 58:16]
  wire [31:0] _GEN_85; // @[register-file.scala 58:16]
  wire [31:0] _GEN_86; // @[register-file.scala 58:16]
  wire [31:0] _GEN_87; // @[register-file.scala 58:16]
  wire [31:0] _GEN_88; // @[register-file.scala 58:16]
  wire [31:0] _GEN_89; // @[register-file.scala 58:16]
  wire [31:0] _GEN_90; // @[register-file.scala 58:16]
  wire [31:0] _GEN_91; // @[register-file.scala 58:16]
  wire [31:0] _GEN_92; // @[register-file.scala 58:16]
  wire [31:0] _GEN_93; // @[register-file.scala 58:16]
  wire [31:0] _GEN_94; // @[register-file.scala 58:16]
  wire [31:0] _GEN_97; // @[register-file.scala 59:16]
  wire [31:0] _GEN_98; // @[register-file.scala 59:16]
  wire [31:0] _GEN_99; // @[register-file.scala 59:16]
  wire [31:0] _GEN_100; // @[register-file.scala 59:16]
  wire [31:0] _GEN_101; // @[register-file.scala 59:16]
  wire [31:0] _GEN_102; // @[register-file.scala 59:16]
  wire [31:0] _GEN_103; // @[register-file.scala 59:16]
  wire [31:0] _GEN_104; // @[register-file.scala 59:16]
  wire [31:0] _GEN_105; // @[register-file.scala 59:16]
  wire [31:0] _GEN_106; // @[register-file.scala 59:16]
  wire [31:0] _GEN_107; // @[register-file.scala 59:16]
  wire [31:0] _GEN_108; // @[register-file.scala 59:16]
  wire [31:0] _GEN_109; // @[register-file.scala 59:16]
  wire [31:0] _GEN_110; // @[register-file.scala 59:16]
  wire [31:0] _GEN_111; // @[register-file.scala 59:16]
  wire [31:0] _GEN_112; // @[register-file.scala 59:16]
  wire [31:0] _GEN_113; // @[register-file.scala 59:16]
  wire [31:0] _GEN_114; // @[register-file.scala 59:16]
  wire [31:0] _GEN_115; // @[register-file.scala 59:16]
  wire [31:0] _GEN_116; // @[register-file.scala 59:16]
  wire [31:0] _GEN_117; // @[register-file.scala 59:16]
  wire [31:0] _GEN_118; // @[register-file.scala 59:16]
  wire [31:0] _GEN_119; // @[register-file.scala 59:16]
  wire [31:0] _GEN_120; // @[register-file.scala 59:16]
  wire [31:0] _GEN_121; // @[register-file.scala 59:16]
  wire [31:0] _GEN_122; // @[register-file.scala 59:16]
  wire [31:0] _GEN_123; // @[register-file.scala 59:16]
  wire [31:0] _GEN_124; // @[register-file.scala 59:16]
  wire [31:0] _GEN_125; // @[register-file.scala 59:16]
  wire [31:0] _GEN_126; // @[register-file.scala 59:16]
  assign _GEN_65 = 5'h1 == io_readreg1 ? regs_1 : regs_0; // @[register-file.scala 58:16]
  assign _GEN_66 = 5'h2 == io_readreg1 ? regs_2 : _GEN_65; // @[register-file.scala 58:16]
  assign _GEN_67 = 5'h3 == io_readreg1 ? regs_3 : _GEN_66; // @[register-file.scala 58:16]
  assign _GEN_68 = 5'h4 == io_readreg1 ? regs_4 : _GEN_67; // @[register-file.scala 58:16]
  assign _GEN_69 = 5'h5 == io_readreg1 ? regs_5 : _GEN_68; // @[register-file.scala 58:16]
  assign _GEN_70 = 5'h6 == io_readreg1 ? regs_6 : _GEN_69; // @[register-file.scala 58:16]
  assign _GEN_71 = 5'h7 == io_readreg1 ? regs_7 : _GEN_70; // @[register-file.scala 58:16]
  assign _GEN_72 = 5'h8 == io_readreg1 ? regs_8 : _GEN_71; // @[register-file.scala 58:16]
  assign _GEN_73 = 5'h9 == io_readreg1 ? regs_9 : _GEN_72; // @[register-file.scala 58:16]
  assign _GEN_74 = 5'ha == io_readreg1 ? regs_10 : _GEN_73; // @[register-file.scala 58:16]
  assign _GEN_75 = 5'hb == io_readreg1 ? regs_11 : _GEN_74; // @[register-file.scala 58:16]
  assign _GEN_76 = 5'hc == io_readreg1 ? regs_12 : _GEN_75; // @[register-file.scala 58:16]
  assign _GEN_77 = 5'hd == io_readreg1 ? regs_13 : _GEN_76; // @[register-file.scala 58:16]
  assign _GEN_78 = 5'he == io_readreg1 ? regs_14 : _GEN_77; // @[register-file.scala 58:16]
  assign _GEN_79 = 5'hf == io_readreg1 ? regs_15 : _GEN_78; // @[register-file.scala 58:16]
  assign _GEN_80 = 5'h10 == io_readreg1 ? regs_16 : _GEN_79; // @[register-file.scala 58:16]
  assign _GEN_81 = 5'h11 == io_readreg1 ? regs_17 : _GEN_80; // @[register-file.scala 58:16]
  assign _GEN_82 = 5'h12 == io_readreg1 ? regs_18 : _GEN_81; // @[register-file.scala 58:16]
  assign _GEN_83 = 5'h13 == io_readreg1 ? regs_19 : _GEN_82; // @[register-file.scala 58:16]
  assign _GEN_84 = 5'h14 == io_readreg1 ? regs_20 : _GEN_83; // @[register-file.scala 58:16]
  assign _GEN_85 = 5'h15 == io_readreg1 ? regs_21 : _GEN_84; // @[register-file.scala 58:16]
  assign _GEN_86 = 5'h16 == io_readreg1 ? regs_22 : _GEN_85; // @[register-file.scala 58:16]
  assign _GEN_87 = 5'h17 == io_readreg1 ? regs_23 : _GEN_86; // @[register-file.scala 58:16]
  assign _GEN_88 = 5'h18 == io_readreg1 ? regs_24 : _GEN_87; // @[register-file.scala 58:16]
  assign _GEN_89 = 5'h19 == io_readreg1 ? regs_25 : _GEN_88; // @[register-file.scala 58:16]
  assign _GEN_90 = 5'h1a == io_readreg1 ? regs_26 : _GEN_89; // @[register-file.scala 58:16]
  assign _GEN_91 = 5'h1b == io_readreg1 ? regs_27 : _GEN_90; // @[register-file.scala 58:16]
  assign _GEN_92 = 5'h1c == io_readreg1 ? regs_28 : _GEN_91; // @[register-file.scala 58:16]
  assign _GEN_93 = 5'h1d == io_readreg1 ? regs_29 : _GEN_92; // @[register-file.scala 58:16]
  assign _GEN_94 = 5'h1e == io_readreg1 ? regs_30 : _GEN_93; // @[register-file.scala 58:16]
  assign _GEN_97 = 5'h1 == io_readreg2 ? regs_1 : regs_0; // @[register-file.scala 59:16]
  assign _GEN_98 = 5'h2 == io_readreg2 ? regs_2 : _GEN_97; // @[register-file.scala 59:16]
  assign _GEN_99 = 5'h3 == io_readreg2 ? regs_3 : _GEN_98; // @[register-file.scala 59:16]
  assign _GEN_100 = 5'h4 == io_readreg2 ? regs_4 : _GEN_99; // @[register-file.scala 59:16]
  assign _GEN_101 = 5'h5 == io_readreg2 ? regs_5 : _GEN_100; // @[register-file.scala 59:16]
  assign _GEN_102 = 5'h6 == io_readreg2 ? regs_6 : _GEN_101; // @[register-file.scala 59:16]
  assign _GEN_103 = 5'h7 == io_readreg2 ? regs_7 : _GEN_102; // @[register-file.scala 59:16]
  assign _GEN_104 = 5'h8 == io_readreg2 ? regs_8 : _GEN_103; // @[register-file.scala 59:16]
  assign _GEN_105 = 5'h9 == io_readreg2 ? regs_9 : _GEN_104; // @[register-file.scala 59:16]
  assign _GEN_106 = 5'ha == io_readreg2 ? regs_10 : _GEN_105; // @[register-file.scala 59:16]
  assign _GEN_107 = 5'hb == io_readreg2 ? regs_11 : _GEN_106; // @[register-file.scala 59:16]
  assign _GEN_108 = 5'hc == io_readreg2 ? regs_12 : _GEN_107; // @[register-file.scala 59:16]
  assign _GEN_109 = 5'hd == io_readreg2 ? regs_13 : _GEN_108; // @[register-file.scala 59:16]
  assign _GEN_110 = 5'he == io_readreg2 ? regs_14 : _GEN_109; // @[register-file.scala 59:16]
  assign _GEN_111 = 5'hf == io_readreg2 ? regs_15 : _GEN_110; // @[register-file.scala 59:16]
  assign _GEN_112 = 5'h10 == io_readreg2 ? regs_16 : _GEN_111; // @[register-file.scala 59:16]
  assign _GEN_113 = 5'h11 == io_readreg2 ? regs_17 : _GEN_112; // @[register-file.scala 59:16]
  assign _GEN_114 = 5'h12 == io_readreg2 ? regs_18 : _GEN_113; // @[register-file.scala 59:16]
  assign _GEN_115 = 5'h13 == io_readreg2 ? regs_19 : _GEN_114; // @[register-file.scala 59:16]
  assign _GEN_116 = 5'h14 == io_readreg2 ? regs_20 : _GEN_115; // @[register-file.scala 59:16]
  assign _GEN_117 = 5'h15 == io_readreg2 ? regs_21 : _GEN_116; // @[register-file.scala 59:16]
  assign _GEN_118 = 5'h16 == io_readreg2 ? regs_22 : _GEN_117; // @[register-file.scala 59:16]
  assign _GEN_119 = 5'h17 == io_readreg2 ? regs_23 : _GEN_118; // @[register-file.scala 59:16]
  assign _GEN_120 = 5'h18 == io_readreg2 ? regs_24 : _GEN_119; // @[register-file.scala 59:16]
  assign _GEN_121 = 5'h19 == io_readreg2 ? regs_25 : _GEN_120; // @[register-file.scala 59:16]
  assign _GEN_122 = 5'h1a == io_readreg2 ? regs_26 : _GEN_121; // @[register-file.scala 59:16]
  assign _GEN_123 = 5'h1b == io_readreg2 ? regs_27 : _GEN_122; // @[register-file.scala 59:16]
  assign _GEN_124 = 5'h1c == io_readreg2 ? regs_28 : _GEN_123; // @[register-file.scala 59:16]
  assign _GEN_125 = 5'h1d == io_readreg2 ? regs_29 : _GEN_124; // @[register-file.scala 59:16]
  assign _GEN_126 = 5'h1e == io_readreg2 ? regs_30 : _GEN_125; // @[register-file.scala 59:16]
  assign io_readdata1 = 5'h1f == io_readreg1 ? regs_31 : _GEN_94; // @[register-file.scala 58:16]
  assign io_readdata2 = 5'h1f == io_readreg2 ? regs_31 : _GEN_126; // @[register-file.scala 59:16]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regs_0 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  regs_5 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  regs_6 = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  regs_7 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  regs_8 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  regs_9 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  regs_10 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  regs_11 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  regs_12 = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  regs_13 = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  regs_14 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  regs_15 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  regs_16 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  regs_17 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  regs_18 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  regs_19 = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  regs_20 = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  regs_21 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  regs_22 = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  regs_23 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  regs_24 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  regs_25 = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  regs_26 = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  regs_27 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  regs_28 = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  regs_29 = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  regs_30 = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  regs_31 = _RAND_31[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_wen) begin
      if (5'h0 == io_writereg) begin
        regs_0 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h1 == io_writereg) begin
        regs_1 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h2 == io_writereg) begin
        regs_2 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h3 == io_writereg) begin
        regs_3 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h4 == io_writereg) begin
        regs_4 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h5 == io_writereg) begin
        regs_5 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h6 == io_writereg) begin
        regs_6 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h7 == io_writereg) begin
        regs_7 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h8 == io_writereg) begin
        regs_8 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h9 == io_writereg) begin
        regs_9 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'ha == io_writereg) begin
        regs_10 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'hb == io_writereg) begin
        regs_11 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'hc == io_writereg) begin
        regs_12 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'hd == io_writereg) begin
        regs_13 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'he == io_writereg) begin
        regs_14 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'hf == io_writereg) begin
        regs_15 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h10 == io_writereg) begin
        regs_16 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h11 == io_writereg) begin
        regs_17 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h12 == io_writereg) begin
        regs_18 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h13 == io_writereg) begin
        regs_19 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h14 == io_writereg) begin
        regs_20 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h15 == io_writereg) begin
        regs_21 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h16 == io_writereg) begin
        regs_22 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h17 == io_writereg) begin
        regs_23 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h18 == io_writereg) begin
        regs_24 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h19 == io_writereg) begin
        regs_25 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h1a == io_writereg) begin
        regs_26 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h1b == io_writereg) begin
        regs_27 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h1c == io_writereg) begin
        regs_28 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h1d == io_writereg) begin
        regs_29 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h1e == io_writereg) begin
        regs_30 <= io_writedata;
      end
    end
    if (io_wen) begin
      if (5'h1f == io_writereg) begin
        regs_31 <= io_writedata;
      end
    end
  end
endmodule
module CSRRegFile(
  input         clock,
  input         reset,
  input         io_illegal_inst,
  input  [31:0] io_pc,
  input  [31:0] io_read_data,
  input  [31:0] io_inst,
  input  [31:0] io_immid,
  output        io_read_illegal,
  output        io_write_illegal,
  output        io_eret,
  output [31:0] io_evec,
  output [31:0] io_write_data,
  output        io_reg_write,
  output        io_status_sd,
  output [7:0]  io_status_wpri1,
  output        io_status_tsr,
  output        io_status_tw,
  output        io_status_tvm,
  output        io_status_mxr,
  output        io_status_sum,
  output        io_status_mprv,
  output [1:0]  io_status_xs,
  output [1:0]  io_status_fs,
  output [1:0]  io_status_mpp,
  output [1:0]  io_status_wpri2,
  output        io_status_spp,
  output        io_status_mpie,
  output        io_status_wpri3,
  output        io_status_spie,
  output        io_status_upie,
  output        io_status_mie,
  output        io_status_wpri4,
  output        io_status_sie,
  output        io_status_uie
);
  reg  reg_mstatus_mpie; // @[csr.scala 212:28]
  reg [31:0] _RAND_0;
  reg  reg_mstatus_mie; // @[csr.scala 212:28]
  reg [31:0] _RAND_1;
  reg [31:0] reg_mepc; // @[csr.scala 214:21]
  reg [31:0] _RAND_2;
  reg  reg_mcause_interrupt; // @[csr.scala 216:27]
  reg [31:0] _RAND_3;
  reg [30:0] reg_mcause_exceptioncode; // @[csr.scala 216:27]
  reg [31:0] _RAND_4;
  reg [31:0] reg_mtval; // @[csr.scala 218:22]
  reg [31:0] _RAND_5;
  reg [31:0] reg_mscratch; // @[csr.scala 220:25]
  reg [31:0] _RAND_6;
  reg [31:0] reg_medeleg; // @[csr.scala 226:24]
  reg [31:0] _RAND_7;
  reg  reg_mip_mtix; // @[csr.scala 229:24]
  reg [31:0] _RAND_8;
  reg  reg_mip_msix; // @[csr.scala 229:24]
  reg [31:0] _RAND_9;
  reg  reg_mie_meix; // @[csr.scala 231:24]
  reg [31:0] _RAND_10;
  reg  reg_mie_mtix; // @[csr.scala 231:24]
  reg [31:0] _RAND_11;
  reg  reg_mie_msix; // @[csr.scala 231:24]
  reg [31:0] _RAND_12;
  reg [5:0] _T_5; // @[csr.scala 543:41]
  reg [31:0] _RAND_13;
  wire [6:0] _T_6; // @[csr.scala 544:33]
  reg [57:0] _T_7; // @[csr.scala 548:31]
  reg [63:0] _RAND_14;
  wire [57:0] _T_10; // @[csr.scala 549:43]
  wire [63:0] _T_11; // @[Cat.scala 29:58]
  reg [5:0] _T_12; // @[csr.scala 543:41]
  reg [31:0] _RAND_15;
  wire [6:0] _T_13; // @[csr.scala 544:33]
  reg [57:0] _T_14; // @[csr.scala 548:31]
  reg [63:0] _RAND_16;
  wire [57:0] _T_17; // @[csr.scala 549:43]
  wire [63:0] _T_18; // @[Cat.scala 29:58]
  reg  reg_mcounterinhibit_hpm31; // @[csr.scala 242:36]
  reg [31:0] _RAND_17;
  reg  reg_mcounterinhibit_hpm30; // @[csr.scala 242:36]
  reg [31:0] _RAND_18;
  reg  reg_mcounterinhibit_hpm29; // @[csr.scala 242:36]
  reg [31:0] _RAND_19;
  reg  reg_mcounterinhibit_hpm28; // @[csr.scala 242:36]
  reg [31:0] _RAND_20;
  reg  reg_mcounterinhibit_hpm27; // @[csr.scala 242:36]
  reg [31:0] _RAND_21;
  reg  reg_mcounterinhibit_hpm26; // @[csr.scala 242:36]
  reg [31:0] _RAND_22;
  reg  reg_mcounterinhibit_hpm25; // @[csr.scala 242:36]
  reg [31:0] _RAND_23;
  reg  reg_mcounterinhibit_hpm24; // @[csr.scala 242:36]
  reg [31:0] _RAND_24;
  reg  reg_mcounterinhibit_hpm23; // @[csr.scala 242:36]
  reg [31:0] _RAND_25;
  reg  reg_mcounterinhibit_hpm22; // @[csr.scala 242:36]
  reg [31:0] _RAND_26;
  reg  reg_mcounterinhibit_hpm21; // @[csr.scala 242:36]
  reg [31:0] _RAND_27;
  reg  reg_mcounterinhibit_hpm20; // @[csr.scala 242:36]
  reg [31:0] _RAND_28;
  reg  reg_mcounterinhibit_hpm19; // @[csr.scala 242:36]
  reg [31:0] _RAND_29;
  reg  reg_mcounterinhibit_hpm18; // @[csr.scala 242:36]
  reg [31:0] _RAND_30;
  reg  reg_mcounterinhibit_hpm17; // @[csr.scala 242:36]
  reg [31:0] _RAND_31;
  reg  reg_mcounterinhibit_hpm16; // @[csr.scala 242:36]
  reg [31:0] _RAND_32;
  reg  reg_mcounterinhibit_hpm15; // @[csr.scala 242:36]
  reg [31:0] _RAND_33;
  reg  reg_mcounterinhibit_hpm14; // @[csr.scala 242:36]
  reg [31:0] _RAND_34;
  reg  reg_mcounterinhibit_hpm13; // @[csr.scala 242:36]
  reg [31:0] _RAND_35;
  reg  reg_mcounterinhibit_hpm12; // @[csr.scala 242:36]
  reg [31:0] _RAND_36;
  reg  reg_mcounterinhibit_hpm11; // @[csr.scala 242:36]
  reg [31:0] _RAND_37;
  reg  reg_mcounterinhibit_hpm10; // @[csr.scala 242:36]
  reg [31:0] _RAND_38;
  reg  reg_mcounterinhibit_hpm9; // @[csr.scala 242:36]
  reg [31:0] _RAND_39;
  reg  reg_mcounterinhibit_hpm8; // @[csr.scala 242:36]
  reg [31:0] _RAND_40;
  reg  reg_mcounterinhibit_hpm7; // @[csr.scala 242:36]
  reg [31:0] _RAND_41;
  reg  reg_mcounterinhibit_hpm6; // @[csr.scala 242:36]
  reg [31:0] _RAND_42;
  reg  reg_mcounterinhibit_hpm5; // @[csr.scala 242:36]
  reg [31:0] _RAND_43;
  reg  reg_mcounterinhibit_hpm4; // @[csr.scala 242:36]
  reg [31:0] _RAND_44;
  reg  reg_mcounterinhibit_hpm3; // @[csr.scala 242:36]
  reg [31:0] _RAND_45;
  reg  reg_mcounterinhibit_ir; // @[csr.scala 242:36]
  reg [31:0] _RAND_46;
  reg  reg_mcounterinhibit_tmzero; // @[csr.scala 242:36]
  reg [31:0] _RAND_47;
  reg  reg_mcounterinhibit_cy; // @[csr.scala 242:36]
  reg [31:0] _RAND_48;
  wire [10:0] _T_29; // @[csr.scala 246:38]
  wire [7:0] _T_33; // @[csr.scala 246:38]
  wire [31:0] read_mstatus; // @[csr.scala 246:38]
  wire [7:0] _T_48; // @[csr.scala 260:50]
  wire [15:0] _T_56; // @[csr.scala 260:50]
  wire [7:0] _T_63; // @[csr.scala 260:50]
  wire [31:0] _T_72; // @[csr.scala 260:50]
  wire [31:0] _T_86; // @[csr.scala 269:32]
  wire [31:0] _T_98; // @[csr.scala 270:32]
  wire [31:0] _T_99; // @[csr.scala 274:38]
  wire  _T_101; // @[csr.scala 284:23]
  wire  _T_103; // @[Conditional.scala 37:30]
  wire  _T_104; // @[Conditional.scala 37:30]
  wire  _T_105; // @[Conditional.scala 37:30]
  wire  _T_106; // @[Conditional.scala 37:30]
  wire  _T_107; // @[Conditional.scala 37:30]
  wire  _T_108; // @[Conditional.scala 37:30]
  wire  _T_109; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_2; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_4; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_6; // @[Conditional.scala 39:67]
  wire  _GEN_7; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_8; // @[Conditional.scala 39:67]
  wire  _GEN_9; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_10; // @[Conditional.scala 39:67]
  wire  _GEN_11; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_12; // @[Conditional.scala 39:67]
  wire  _GEN_13; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_14; // @[Conditional.scala 40:58]
  wire  _GEN_15; // @[Conditional.scala 40:58]
  wire [2:0] cmd; // @[csr.scala 284:42]
  wire [11:0] csr; // @[csr.scala 320:20]
  wire  system_insn; // @[csr.scala 321:25]
  wire  _T_110; // @[csr.scala 322:21]
  wire  _T_111; // @[csr.scala 322:40]
  wire  cpu_ren; // @[csr.scala 322:37]
  wire  _T_112; // @[csr.scala 327:66]
  wire  _T_113; // @[csr.scala 327:66]
  wire  _T_114; // @[csr.scala 327:66]
  wire  _T_115; // @[csr.scala 327:66]
  wire  _T_116; // @[csr.scala 327:66]
  wire  _T_117; // @[csr.scala 327:66]
  wire  _T_118; // @[csr.scala 327:66]
  wire  _T_119; // @[csr.scala 327:66]
  wire  _T_120; // @[csr.scala 327:66]
  wire  _T_121; // @[csr.scala 327:66]
  wire  _T_122; // @[csr.scala 327:66]
  wire  _T_123; // @[csr.scala 327:66]
  wire  _T_124; // @[csr.scala 327:66]
  wire  _T_125; // @[csr.scala 327:66]
  wire  _T_126; // @[csr.scala 327:66]
  wire  _T_127; // @[csr.scala 327:66]
  wire  _T_128; // @[csr.scala 327:66]
  wire  _T_129; // @[csr.scala 327:66]
  wire  _T_130; // @[csr.scala 327:66]
  wire  read_only; // @[csr.scala 329:30]
  wire  _T_133; // @[csr.scala 330:32]
  wire  cpu_wen; // @[csr.scala 330:25]
  wire  _T_135; // @[csr.scala 331:24]
  wire  wen; // @[csr.scala 331:21]
  wire [31:0] _T_137; // @[csr.scala 332:76]
  wire  _T_138; // @[csr.scala 534:46]
  wire  _T_139; // @[csr.scala 534:46]
  wire  _T_140; // @[csr.scala 534:61]
  wire [31:0] _T_141; // @[csr.scala 534:5]
  wire [31:0] _T_142; // @[csr.scala 534:79]
  wire [31:0] _T_144; // @[csr.scala 534:94]
  wire [31:0] _T_145; // @[csr.scala 534:90]
  wire [31:0] wdata; // @[csr.scala 534:88]
  wire [7:0] opcode; // @[csr.scala 335:20]
  wire  insn_call; // @[csr.scala 336:31]
  wire  insn_break; // @[csr.scala 337:32]
  wire  insn_ret; // @[csr.scala 338:30]
  wire  _T_174; // @[csr.scala 342:119]
  wire  _T_175; // @[csr.scala 342:119]
  wire  _T_176; // @[csr.scala 342:119]
  wire  _T_177; // @[csr.scala 342:119]
  wire  _T_178; // @[csr.scala 342:119]
  wire  _T_179; // @[csr.scala 342:119]
  wire  _T_180; // @[csr.scala 342:119]
  wire  _T_181; // @[csr.scala 342:119]
  wire  _T_182; // @[csr.scala 342:119]
  wire  _T_183; // @[csr.scala 342:119]
  wire  _T_184; // @[csr.scala 342:119]
  wire  _T_185; // @[csr.scala 342:119]
  wire  _T_186; // @[csr.scala 342:119]
  wire  _T_187; // @[csr.scala 342:119]
  wire  _T_188; // @[csr.scala 342:119]
  wire  _T_189; // @[csr.scala 342:119]
  wire  _T_190; // @[csr.scala 342:119]
  wire  _T_191; // @[csr.scala 342:119]
  wire  _T_198; // @[csr.scala 349:24]
  wire [31:0] _GEN_18; // @[csr.scala 352:26]
  wire [30:0] _GEN_19; // @[csr.scala 352:26]
  wire [31:0] _GEN_21; // @[csr.scala 352:26]
  wire  _T_204; // @[csr.scala 386:21]
  wire  _T_205; // @[csr.scala 386:18]
  wire  _GEN_23; // @[csr.scala 386:31]
  wire  _GEN_24; // @[csr.scala 386:31]
  wire [31:0] _GEN_25; // @[csr.scala 386:31]
  wire [31:0] _GEN_26; // @[csr.scala 393:18]
  wire [31:0] _GEN_27; // @[csr.scala 393:18]
  wire [30:0] _GEN_28; // @[csr.scala 393:18]
  wire [31:0] _GEN_30; // @[csr.scala 400:19]
  wire [30:0] _GEN_31; // @[csr.scala 400:19]
  wire [31:0] _T_210; // @[Mux.scala 27:72]
  wire [63:0] _T_211; // @[Mux.scala 27:72]
  wire [63:0] _T_212; // @[Mux.scala 27:72]
  wire [31:0] _T_216; // @[Mux.scala 27:72]
  wire [31:0] _T_217; // @[Mux.scala 27:72]
  wire [31:0] _T_218; // @[Mux.scala 27:72]
  wire [31:0] _T_219; // @[Mux.scala 27:72]
  wire [31:0] _T_220; // @[Mux.scala 27:72]
  wire [31:0] _T_221; // @[Mux.scala 27:72]
  wire [31:0] _T_222; // @[Mux.scala 27:72]
  wire [31:0] _T_223; // @[Mux.scala 27:72]
  wire [31:0] _T_224; // @[Mux.scala 27:72]
  wire [31:0] _T_226; // @[Mux.scala 27:72]
  wire [63:0] _GEN_182; // @[Mux.scala 27:72]
  wire [63:0] _T_229; // @[Mux.scala 27:72]
  wire [63:0] _T_230; // @[Mux.scala 27:72]
  wire [63:0] _GEN_183; // @[Mux.scala 27:72]
  wire [63:0] _T_234; // @[Mux.scala 27:72]
  wire [63:0] _GEN_184; // @[Mux.scala 27:72]
  wire [63:0] _T_235; // @[Mux.scala 27:72]
  wire [63:0] _GEN_185; // @[Mux.scala 27:72]
  wire [63:0] _T_236; // @[Mux.scala 27:72]
  wire [63:0] _GEN_186; // @[Mux.scala 27:72]
  wire [63:0] _T_237; // @[Mux.scala 27:72]
  wire [63:0] _GEN_187; // @[Mux.scala 27:72]
  wire [63:0] _T_238; // @[Mux.scala 27:72]
  wire [63:0] _GEN_188; // @[Mux.scala 27:72]
  wire [63:0] _T_239; // @[Mux.scala 27:72]
  wire [63:0] _GEN_189; // @[Mux.scala 27:72]
  wire [63:0] _T_240; // @[Mux.scala 27:72]
  wire [63:0] _GEN_190; // @[Mux.scala 27:72]
  wire [63:0] _T_241; // @[Mux.scala 27:72]
  wire [63:0] _GEN_191; // @[Mux.scala 27:72]
  wire [63:0] _T_242; // @[Mux.scala 27:72]
  wire [63:0] _GEN_192; // @[Mux.scala 27:72]
  wire [63:0] _T_244; // @[Mux.scala 27:72]
  wire  _GEN_32; // @[csr.scala 428:40]
  wire  _T_335; // @[csr.scala 495:36]
  wire [63:0] _T_338; // @[Cat.scala 29:58]
  wire [63:0] _GEN_62; // @[csr.scala 527:29]
  wire [63:0] _T_341; // @[Cat.scala 29:58]
  wire [63:0] _GEN_64; // @[csr.scala 528:29]
  wire [63:0] _GEN_66; // @[csr.scala 495:49]
  wire  _T_343; // @[csr.scala 498:36]
  wire [63:0] _T_346; // @[Cat.scala 29:58]
  wire [63:0] _GEN_68; // @[csr.scala 527:29]
  wire [63:0] _T_349; // @[Cat.scala 29:58]
  wire [63:0] _GEN_70; // @[csr.scala 528:29]
  wire [63:0] _GEN_72; // @[csr.scala 498:48]
  wire [63:0] _GEN_106; // @[csr.scala 492:48]
  wire [63:0] _GEN_108; // @[csr.scala 492:48]
  wire [31:0] _T_352; // @[csr.scala 509:70]
  wire [33:0] _GEN_194; // @[csr.scala 509:78]
  wire [34:0] _T_353; // @[csr.scala 509:78]
  wire [34:0] _GEN_111; // @[csr.scala 509:41]
  wire [31:0] _T_354; // @[csr.scala 515:38]
  wire [31:0] _T_355; // @[csr.scala 515:72]
  wire [31:0] _T_357; // @[csr.scala 516:76]
  wire [31:0] _GEN_112; // @[csr.scala 514:41]
  wire [31:0] _GEN_113; // @[csr.scala 514:41]
  wire  _GEN_116; // @[csr.scala 412:14]
  wire [63:0] _GEN_172; // @[csr.scala 412:14]
  wire [63:0] _GEN_174; // @[csr.scala 412:14]
  wire [34:0] _GEN_177; // @[csr.scala 412:14]
  wire [31:0] _GEN_178; // @[csr.scala 412:14]
  wire [31:0] _GEN_179; // @[csr.scala 412:14]
  assign _T_6 = _T_5 + 6'h1; // @[csr.scala 544:33]
  assign _T_10 = _T_7 + 58'h1; // @[csr.scala 549:43]
  assign _T_11 = {_T_7,_T_5}; // @[Cat.scala 29:58]
  assign _T_13 = _T_12 + 6'h1; // @[csr.scala 544:33]
  assign _T_17 = _T_14 + 58'h1; // @[csr.scala 549:43]
  assign _T_18 = {_T_14,_T_12}; // @[Cat.scala 29:58]
  assign _T_29 = {io_status_wpri2,io_status_spp,io_status_mpie,io_status_wpri3,io_status_spie,io_status_upie,io_status_mie,io_status_wpri4,io_status_sie,io_status_uie}; // @[csr.scala 246:38]
  assign _T_33 = {io_status_sum,io_status_mprv,io_status_xs,io_status_fs,io_status_mpp}; // @[csr.scala 246:38]
  assign read_mstatus = {io_status_sd,io_status_wpri1,io_status_tsr,io_status_tw,io_status_tvm,io_status_mxr,_T_33,_T_29}; // @[csr.scala 246:38]
  assign _T_48 = {reg_mcounterinhibit_hpm7,reg_mcounterinhibit_hpm6,reg_mcounterinhibit_hpm5,reg_mcounterinhibit_hpm4,reg_mcounterinhibit_hpm3,reg_mcounterinhibit_ir,reg_mcounterinhibit_tmzero,reg_mcounterinhibit_cy}; // @[csr.scala 260:50]
  assign _T_56 = {reg_mcounterinhibit_hpm15,reg_mcounterinhibit_hpm14,reg_mcounterinhibit_hpm13,reg_mcounterinhibit_hpm12,reg_mcounterinhibit_hpm11,reg_mcounterinhibit_hpm10,reg_mcounterinhibit_hpm9,reg_mcounterinhibit_hpm8,_T_48}; // @[csr.scala 260:50]
  assign _T_63 = {reg_mcounterinhibit_hpm23,reg_mcounterinhibit_hpm22,reg_mcounterinhibit_hpm21,reg_mcounterinhibit_hpm20,reg_mcounterinhibit_hpm19,reg_mcounterinhibit_hpm18,reg_mcounterinhibit_hpm17,reg_mcounterinhibit_hpm16}; // @[csr.scala 260:50]
  assign _T_72 = {reg_mcounterinhibit_hpm31,reg_mcounterinhibit_hpm30,reg_mcounterinhibit_hpm29,reg_mcounterinhibit_hpm28,reg_mcounterinhibit_hpm27,reg_mcounterinhibit_hpm26,reg_mcounterinhibit_hpm25,reg_mcounterinhibit_hpm24,_T_63,_T_56}; // @[csr.scala 260:50]
  assign _T_86 = {23'h0,1'h0,reg_mip_mtix,1'h0,2'h0,reg_mip_msix,3'h0}; // @[csr.scala 269:32]
  assign _T_98 = {20'h0,reg_mie_meix,2'h0,1'h0,reg_mie_mtix,1'h0,2'h0,reg_mie_msix,3'h0}; // @[csr.scala 270:32]
  assign _T_99 = {reg_mcause_interrupt,reg_mcause_exceptioncode}; // @[csr.scala 274:38]
  assign _T_101 = io_inst[6:0] == 7'h73; // @[csr.scala 284:23]
  assign _T_103 = 3'h3 == io_inst[14:12]; // @[Conditional.scala 37:30]
  assign _T_104 = 3'h7 == io_inst[14:12]; // @[Conditional.scala 37:30]
  assign _T_105 = 3'h2 == io_inst[14:12]; // @[Conditional.scala 37:30]
  assign _T_106 = 3'h6 == io_inst[14:12]; // @[Conditional.scala 37:30]
  assign _T_107 = 3'h1 == io_inst[14:12]; // @[Conditional.scala 37:30]
  assign _T_108 = 3'h5 == io_inst[14:12]; // @[Conditional.scala 37:30]
  assign _T_109 = 3'h0 == io_inst[14:12]; // @[Conditional.scala 37:30]
  assign _GEN_2 = _T_109 ? 3'h4 : 3'h3; // @[Conditional.scala 39:67]
  assign _GEN_4 = _T_108 ? 3'h1 : _GEN_2; // @[Conditional.scala 39:67]
  assign _GEN_6 = _T_107 ? 3'h1 : _GEN_4; // @[Conditional.scala 39:67]
  assign _GEN_7 = _T_107 | _T_108; // @[Conditional.scala 39:67]
  assign _GEN_8 = _T_106 ? 3'h2 : _GEN_6; // @[Conditional.scala 39:67]
  assign _GEN_9 = _T_106 | _GEN_7; // @[Conditional.scala 39:67]
  assign _GEN_10 = _T_105 ? 3'h2 : _GEN_8; // @[Conditional.scala 39:67]
  assign _GEN_11 = _T_105 | _GEN_9; // @[Conditional.scala 39:67]
  assign _GEN_12 = _T_104 ? 3'h3 : _GEN_10; // @[Conditional.scala 39:67]
  assign _GEN_13 = _T_104 | _GEN_11; // @[Conditional.scala 39:67]
  assign _GEN_14 = _T_103 ? 3'h3 : _GEN_12; // @[Conditional.scala 40:58]
  assign _GEN_15 = _T_103 | _GEN_13; // @[Conditional.scala 40:58]
  assign cmd = _T_101 ? _GEN_14 : 3'h0; // @[csr.scala 284:42]
  assign csr = io_inst[31:20]; // @[csr.scala 320:20]
  assign system_insn = cmd == 3'h4; // @[csr.scala 321:25]
  assign _T_110 = cmd != 3'h0; // @[csr.scala 322:21]
  assign _T_111 = ~system_insn; // @[csr.scala 322:40]
  assign cpu_ren = _T_110 & _T_111; // @[csr.scala 322:37]
  assign _T_112 = csr == 12'h320; // @[csr.scala 327:66]
  assign _T_113 = csr == 12'hb00; // @[csr.scala 327:66]
  assign _T_114 = csr == 12'hb02; // @[csr.scala 327:66]
  assign _T_115 = csr == 12'hf13; // @[csr.scala 327:66]
  assign _T_116 = csr == 12'hf12; // @[csr.scala 327:66]
  assign _T_117 = csr == 12'hf11; // @[csr.scala 327:66]
  assign _T_118 = csr == 12'h301; // @[csr.scala 327:66]
  assign _T_119 = csr == 12'h300; // @[csr.scala 327:66]
  assign _T_120 = csr == 12'h305; // @[csr.scala 327:66]
  assign _T_121 = csr == 12'h344; // @[csr.scala 327:66]
  assign _T_122 = csr == 12'h304; // @[csr.scala 327:66]
  assign _T_123 = csr == 12'h340; // @[csr.scala 327:66]
  assign _T_124 = csr == 12'h341; // @[csr.scala 327:66]
  assign _T_125 = csr == 12'h343; // @[csr.scala 327:66]
  assign _T_126 = csr == 12'h342; // @[csr.scala 327:66]
  assign _T_127 = csr == 12'hf14; // @[csr.scala 327:66]
  assign _T_128 = csr == 12'h302; // @[csr.scala 327:66]
  assign _T_129 = csr == 12'hb80; // @[csr.scala 327:66]
  assign _T_130 = csr == 12'hb82; // @[csr.scala 327:66]
  assign read_only = csr[11:10] == 2'h3; // @[csr.scala 329:30]
  assign _T_133 = cmd != 3'h5; // @[csr.scala 330:32]
  assign cpu_wen = cpu_ren & _T_133; // @[csr.scala 330:25]
  assign _T_135 = ~read_only; // @[csr.scala 331:24]
  assign wen = cpu_wen & _T_135; // @[csr.scala 331:21]
  assign _T_137 = io_inst[14] ? io_immid : io_read_data; // @[csr.scala 332:76]
  assign _T_138 = cmd == 3'h2; // @[csr.scala 534:46]
  assign _T_139 = cmd == 3'h3; // @[csr.scala 534:46]
  assign _T_140 = _T_138 | _T_139; // @[csr.scala 534:61]
  assign _T_141 = _T_140 ? io_write_data : 32'h0; // @[csr.scala 534:5]
  assign _T_142 = _T_141 | _T_137; // @[csr.scala 534:79]
  assign _T_144 = _T_139 ? _T_137 : 32'h0; // @[csr.scala 534:94]
  assign _T_145 = ~_T_144; // @[csr.scala 534:90]
  assign wdata = _T_142 & _T_145; // @[csr.scala 534:88]
  assign opcode = 8'h1 << csr[2:0]; // @[csr.scala 335:20]
  assign insn_call = system_insn & opcode[0]; // @[csr.scala 336:31]
  assign insn_break = system_insn & opcode[1]; // @[csr.scala 337:32]
  assign insn_ret = system_insn & opcode[2]; // @[csr.scala 338:30]
  assign _T_174 = _T_112 | _T_113; // @[csr.scala 342:119]
  assign _T_175 = _T_174 | _T_114; // @[csr.scala 342:119]
  assign _T_176 = _T_175 | _T_115; // @[csr.scala 342:119]
  assign _T_177 = _T_176 | _T_116; // @[csr.scala 342:119]
  assign _T_178 = _T_177 | _T_117; // @[csr.scala 342:119]
  assign _T_179 = _T_178 | _T_118; // @[csr.scala 342:119]
  assign _T_180 = _T_179 | _T_119; // @[csr.scala 342:119]
  assign _T_181 = _T_180 | _T_120; // @[csr.scala 342:119]
  assign _T_182 = _T_181 | _T_121; // @[csr.scala 342:119]
  assign _T_183 = _T_182 | _T_122; // @[csr.scala 342:119]
  assign _T_184 = _T_183 | _T_123; // @[csr.scala 342:119]
  assign _T_185 = _T_184 | _T_124; // @[csr.scala 342:119]
  assign _T_186 = _T_185 | _T_125; // @[csr.scala 342:119]
  assign _T_187 = _T_186 | _T_126; // @[csr.scala 342:119]
  assign _T_188 = _T_187 | _T_127; // @[csr.scala 342:119]
  assign _T_189 = _T_188 | _T_128; // @[csr.scala 342:119]
  assign _T_190 = _T_189 | _T_129; // @[csr.scala 342:119]
  assign _T_191 = _T_190 | _T_130; // @[csr.scala 342:119]
  assign _T_198 = insn_call | insn_break; // @[csr.scala 349:24]
  assign _GEN_18 = io_illegal_inst ? 32'h0 : {{31'd0}, reg_mcause_interrupt}; // @[csr.scala 352:26]
  assign _GEN_19 = io_illegal_inst ? 31'h2 : reg_mcause_exceptioncode; // @[csr.scala 352:26]
  assign _GEN_21 = io_illegal_inst ? io_pc : reg_mepc; // @[csr.scala 352:26]
  assign _T_204 = ~csr[10]; // @[csr.scala 386:21]
  assign _T_205 = insn_ret & _T_204; // @[csr.scala 386:18]
  assign _GEN_23 = _T_205 ? reg_mstatus_mpie : reg_mstatus_mie; // @[csr.scala 386:31]
  assign _GEN_24 = _T_205 | reg_mstatus_mpie; // @[csr.scala 386:31]
  assign _GEN_25 = _T_205 ? reg_mepc : 32'h80000000; // @[csr.scala 386:31]
  assign _GEN_26 = insn_call ? 32'h80000004 : _GEN_25; // @[csr.scala 393:18]
  assign _GEN_27 = insn_call ? 32'h0 : _GEN_18; // @[csr.scala 393:18]
  assign _GEN_28 = insn_call ? 31'hb : _GEN_19; // @[csr.scala 393:18]
  assign _GEN_30 = insn_break ? 32'h0 : _GEN_27; // @[csr.scala 400:19]
  assign _GEN_31 = insn_break ? 31'h3 : _GEN_28; // @[csr.scala 400:19]
  assign _T_210 = _T_112 ? _T_72 : 32'h0; // @[Mux.scala 27:72]
  assign _T_211 = _T_113 ? _T_11 : 64'h0; // @[Mux.scala 27:72]
  assign _T_212 = _T_114 ? _T_18 : 64'h0; // @[Mux.scala 27:72]
  assign _T_216 = _T_118 ? 32'h10 : 32'h0; // @[Mux.scala 27:72]
  assign _T_217 = _T_119 ? read_mstatus : 32'h0; // @[Mux.scala 27:72]
  assign _T_218 = _T_120 ? 32'h80000000 : 32'h0; // @[Mux.scala 27:72]
  assign _T_219 = _T_121 ? _T_86 : 32'h0; // @[Mux.scala 27:72]
  assign _T_220 = _T_122 ? _T_98 : 32'h0; // @[Mux.scala 27:72]
  assign _T_221 = _T_123 ? reg_mscratch : 32'h0; // @[Mux.scala 27:72]
  assign _T_222 = _T_124 ? reg_mepc : 32'h0; // @[Mux.scala 27:72]
  assign _T_223 = _T_125 ? reg_mtval : 32'h0; // @[Mux.scala 27:72]
  assign _T_224 = _T_126 ? _T_99 : 32'h0; // @[Mux.scala 27:72]
  assign _T_226 = _T_128 ? reg_medeleg : 32'h0; // @[Mux.scala 27:72]
  assign _GEN_182 = {{32'd0}, _T_210}; // @[Mux.scala 27:72]
  assign _T_229 = _GEN_182 | _T_211; // @[Mux.scala 27:72]
  assign _T_230 = _T_229 | _T_212; // @[Mux.scala 27:72]
  assign _GEN_183 = {{32'd0}, _T_216}; // @[Mux.scala 27:72]
  assign _T_234 = _T_230 | _GEN_183; // @[Mux.scala 27:72]
  assign _GEN_184 = {{32'd0}, _T_217}; // @[Mux.scala 27:72]
  assign _T_235 = _T_234 | _GEN_184; // @[Mux.scala 27:72]
  assign _GEN_185 = {{32'd0}, _T_218}; // @[Mux.scala 27:72]
  assign _T_236 = _T_235 | _GEN_185; // @[Mux.scala 27:72]
  assign _GEN_186 = {{32'd0}, _T_219}; // @[Mux.scala 27:72]
  assign _T_237 = _T_236 | _GEN_186; // @[Mux.scala 27:72]
  assign _GEN_187 = {{32'd0}, _T_220}; // @[Mux.scala 27:72]
  assign _T_238 = _T_237 | _GEN_187; // @[Mux.scala 27:72]
  assign _GEN_188 = {{32'd0}, _T_221}; // @[Mux.scala 27:72]
  assign _T_239 = _T_238 | _GEN_188; // @[Mux.scala 27:72]
  assign _GEN_189 = {{32'd0}, _T_222}; // @[Mux.scala 27:72]
  assign _T_240 = _T_239 | _GEN_189; // @[Mux.scala 27:72]
  assign _GEN_190 = {{32'd0}, _T_223}; // @[Mux.scala 27:72]
  assign _T_241 = _T_240 | _GEN_190; // @[Mux.scala 27:72]
  assign _GEN_191 = {{32'd0}, _T_224}; // @[Mux.scala 27:72]
  assign _T_242 = _T_241 | _GEN_191; // @[Mux.scala 27:72]
  assign _GEN_192 = {{32'd0}, _T_226}; // @[Mux.scala 27:72]
  assign _T_244 = _T_242 | _GEN_192; // @[Mux.scala 27:72]
  assign _GEN_32 = _T_119 ? wdata[3] : _GEN_23; // @[csr.scala 428:40]
  assign _T_335 = ~reg_mcounterinhibit_cy; // @[csr.scala 495:36]
  assign _T_338 = {wdata,_T_11[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_62 = _T_129 ? _T_338 : {{57'd0}, _T_6}; // @[csr.scala 527:29]
  assign _T_341 = {_T_11[63:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_64 = _T_113 ? _T_341 : _GEN_62; // @[csr.scala 528:29]
  assign _GEN_66 = _T_335 ? _GEN_64 : {{57'd0}, _T_6}; // @[csr.scala 495:49]
  assign _T_343 = ~reg_mcounterinhibit_ir; // @[csr.scala 498:36]
  assign _T_346 = {wdata,_T_18[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_68 = _T_130 ? _T_346 : {{57'd0}, _T_13}; // @[csr.scala 527:29]
  assign _T_349 = {_T_18[63:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_70 = _T_114 ? _T_349 : _GEN_68; // @[csr.scala 528:29]
  assign _GEN_72 = _T_343 ? _GEN_70 : {{57'd0}, _T_13}; // @[csr.scala 498:48]
  assign _GEN_106 = _T_112 ? _GEN_66 : {{57'd0}, _T_6}; // @[csr.scala 492:48]
  assign _GEN_108 = _T_112 ? _GEN_72 : {{57'd0}, _T_13}; // @[csr.scala 492:48]
  assign _T_352 = {{2'd0}, wdata[31:2]}; // @[csr.scala 509:70]
  assign _GEN_194 = {_T_352, 2'h0}; // @[csr.scala 509:78]
  assign _T_353 = {{1'd0}, _GEN_194}; // @[csr.scala 509:78]
  assign _GEN_111 = _T_124 ? _T_353 : {{3'd0}, _GEN_21}; // @[csr.scala 509:41]
  assign _T_354 = wdata & 32'h8000001f; // @[csr.scala 515:38]
  assign _T_355 = _T_354 & 32'h80000000; // @[csr.scala 515:72]
  assign _T_357 = _T_354 & 32'h7fffffff; // @[csr.scala 516:76]
  assign _GEN_112 = _T_126 ? _T_355 : _GEN_30; // @[csr.scala 514:41]
  assign _GEN_113 = _T_126 ? _T_357 : {{1'd0}, _GEN_31}; // @[csr.scala 514:41]
  assign _GEN_116 = wen ? _GEN_32 : _GEN_23; // @[csr.scala 412:14]
  assign _GEN_172 = wen ? _GEN_106 : {{57'd0}, _T_6}; // @[csr.scala 412:14]
  assign _GEN_174 = wen ? _GEN_108 : {{57'd0}, _T_13}; // @[csr.scala 412:14]
  assign _GEN_177 = wen ? _GEN_111 : {{3'd0}, _GEN_21}; // @[csr.scala 412:14]
  assign _GEN_178 = wen ? _GEN_112 : _GEN_30; // @[csr.scala 412:14]
  assign _GEN_179 = wen ? _GEN_113 : {{1'd0}, _GEN_31}; // @[csr.scala 412:14]
  assign io_read_illegal = ~_T_191; // @[csr.scala 343:19]
  assign io_write_illegal = csr[11:10] == 2'h3; // @[csr.scala 344:20]
  assign io_eret = _T_198 | insn_ret; // @[csr.scala 349:11]
  assign io_evec = insn_break ? 32'h80000008 : _GEN_26; // @[csr.scala 355:13 csr.scala 389:13 csr.scala 394:13 csr.scala 401:13]
  assign io_write_data = _T_244[31:0]; // @[csr.scala 410:17]
  assign io_reg_write = _T_101 & _GEN_15; // @[csr.scala 288:22 csr.scala 292:22 csr.scala 296:22 csr.scala 300:22 csr.scala 304:22 csr.scala 308:22 csr.scala 312:22 csr.scala 317:18]
  assign io_status_sd = 1'h0; // @[csr.scala 347:13]
  assign io_status_wpri1 = 8'h0; // @[csr.scala 347:13]
  assign io_status_tsr = 1'h0; // @[csr.scala 347:13]
  assign io_status_tw = 1'h0; // @[csr.scala 347:13]
  assign io_status_tvm = 1'h0; // @[csr.scala 347:13]
  assign io_status_mxr = 1'h0; // @[csr.scala 347:13]
  assign io_status_sum = 1'h0; // @[csr.scala 347:13]
  assign io_status_mprv = 1'h0; // @[csr.scala 347:13]
  assign io_status_xs = 2'h0; // @[csr.scala 347:13]
  assign io_status_fs = 2'h0; // @[csr.scala 347:13]
  assign io_status_mpp = 2'h3; // @[csr.scala 347:13]
  assign io_status_wpri2 = 2'h0; // @[csr.scala 347:13]
  assign io_status_spp = 1'h0; // @[csr.scala 347:13]
  assign io_status_mpie = reg_mstatus_mpie; // @[csr.scala 347:13]
  assign io_status_wpri3 = 1'h0; // @[csr.scala 347:13]
  assign io_status_spie = 1'h0; // @[csr.scala 347:13]
  assign io_status_upie = 1'h0; // @[csr.scala 347:13]
  assign io_status_mie = reg_mstatus_mie; // @[csr.scala 347:13]
  assign io_status_wpri4 = 1'h0; // @[csr.scala 347:13]
  assign io_status_sie = 1'h0; // @[csr.scala 347:13]
  assign io_status_uie = 1'h0; // @[csr.scala 347:13]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_mstatus_mpie = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  reg_mstatus_mie = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg_mepc = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  reg_mcause_interrupt = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  reg_mcause_exceptioncode = _RAND_4[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  reg_mtval = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  reg_mscratch = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  reg_medeleg = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  reg_mip_mtix = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  reg_mip_msix = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  reg_mie_meix = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  reg_mie_mtix = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  reg_mie_msix = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_5 = _RAND_13[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {2{`RANDOM}};
  _T_7 = _RAND_14[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_12 = _RAND_15[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {2{`RANDOM}};
  _T_14 = _RAND_16[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm31 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm30 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm29 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm28 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm27 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm26 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm25 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm24 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm23 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm22 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm21 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm20 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm19 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm18 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm17 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm16 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm15 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm14 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm13 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm12 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm11 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm10 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm9 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm8 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm7 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm6 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm5 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm4 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  reg_mcounterinhibit_hpm3 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  reg_mcounterinhibit_ir = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  reg_mcounterinhibit_tmzero = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  reg_mcounterinhibit_cy = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_mstatus_mpie <= 1'h0;
    end else if (wen) begin
      if (_T_119) begin
        reg_mstatus_mpie <= wdata[7];
      end else begin
        reg_mstatus_mpie <= _GEN_24;
      end
    end else begin
      reg_mstatus_mpie <= _GEN_24;
    end
    reg_mstatus_mie <= reset | _GEN_116;
    reg_mepc <= _GEN_177[31:0];
    if (reset) begin
      reg_mcause_interrupt <= 1'h0;
    end else begin
      reg_mcause_interrupt <= _GEN_178[0];
    end
    if (reset) begin
      reg_mcause_exceptioncode <= 31'h0;
    end else begin
      reg_mcause_exceptioncode <= _GEN_179[30:0];
    end
    if (wen) begin
      if (_T_125) begin
        reg_mtval <= wdata;
      end
    end
    if (wen) begin
      if (_T_123) begin
        reg_mscratch <= wdata;
      end
    end
    if (wen) begin
      if (_T_128) begin
        reg_medeleg <= wdata;
      end
    end
    if (reset) begin
      reg_mip_mtix <= 1'h0;
    end else begin
      reg_mip_mtix <= 1'h1;
    end
    if (reset) begin
      reg_mip_msix <= 1'h0;
    end else if (wen) begin
      if (_T_121) begin
        reg_mip_msix <= wdata[3];
      end
    end
    if (reset) begin
      reg_mie_meix <= 1'h0;
    end else if (wen) begin
      if (_T_122) begin
        reg_mie_meix <= wdata[11];
      end
    end
    if (reset) begin
      reg_mie_mtix <= 1'h0;
    end else if (wen) begin
      if (_T_122) begin
        reg_mie_mtix <= wdata[7];
      end
    end
    if (reset) begin
      reg_mie_msix <= 1'h0;
    end else if (wen) begin
      if (_T_122) begin
        reg_mie_msix <= wdata[3];
      end
    end
    if (reset) begin
      _T_5 <= 6'h0;
    end else begin
      _T_5 <= _GEN_172[5:0];
    end
    if (reset) begin
      _T_7 <= 58'h0;
    end else if (wen) begin
      if (_T_112) begin
        if (_T_335) begin
          if (_T_113) begin
            _T_7 <= _T_341[63:6];
          end else if (_T_129) begin
            _T_7 <= _T_338[63:6];
          end else if (_T_6[6]) begin
            _T_7 <= _T_10;
          end
        end else if (_T_6[6]) begin
          _T_7 <= _T_10;
        end
      end else if (_T_6[6]) begin
        _T_7 <= _T_10;
      end
    end else if (_T_6[6]) begin
      _T_7 <= _T_10;
    end
    if (reset) begin
      _T_12 <= 6'h0;
    end else begin
      _T_12 <= _GEN_174[5:0];
    end
    if (reset) begin
      _T_14 <= 58'h0;
    end else if (wen) begin
      if (_T_112) begin
        if (_T_343) begin
          if (_T_114) begin
            _T_14 <= _T_349[63:6];
          end else if (_T_130) begin
            _T_14 <= _T_346[63:6];
          end else if (_T_13[6]) begin
            _T_14 <= _T_17;
          end
        end else if (_T_13[6]) begin
          _T_14 <= _T_17;
        end
      end else if (_T_13[6]) begin
        _T_14 <= _T_17;
      end
    end else if (_T_13[6]) begin
      _T_14 <= _T_17;
    end
    if (reset) begin
      reg_mcounterinhibit_hpm31 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm31 <= wdata[31];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm30 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm30 <= wdata[30];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm29 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm29 <= wdata[29];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm28 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm28 <= wdata[28];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm27 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm27 <= wdata[27];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm26 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm26 <= wdata[26];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm25 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm25 <= wdata[25];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm24 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm24 <= wdata[24];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm23 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm23 <= wdata[23];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm22 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm22 <= wdata[22];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm21 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm21 <= wdata[21];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm20 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm20 <= wdata[20];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm19 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm19 <= wdata[19];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm18 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm18 <= wdata[18];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm17 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm17 <= wdata[17];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm16 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm16 <= wdata[16];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm15 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm15 <= wdata[15];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm14 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm14 <= wdata[14];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm13 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm13 <= wdata[13];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm12 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm12 <= wdata[12];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm11 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm11 <= wdata[11];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm10 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm10 <= wdata[10];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm9 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm9 <= wdata[9];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm8 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm8 <= wdata[8];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm7 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm7 <= wdata[7];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm6 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm6 <= wdata[6];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm5 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm5 <= wdata[5];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm4 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm4 <= wdata[4];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_hpm3 <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_hpm3 <= wdata[3];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_ir <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_ir <= wdata[2];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_tmzero <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_tmzero <= wdata[1];
      end
    end
    if (reset) begin
      reg_mcounterinhibit_cy <= 1'h0;
    end else if (wen) begin
      if (_T_112) begin
        reg_mcounterinhibit_cy <= wdata[0];
      end
    end
  end
endmodule
module ALUControl(
  input        io_add,
  input        io_immediate,
  input  [6:0] io_funct7,
  input  [2:0] io_funct3,
  output [3:0] io_operation
);
  wire  _T; // @[Conditional.scala 37:30]
  wire  _T_1; // @[alucontrol.scala 37:41]
  wire  _T_2; // @[alucontrol.scala 37:28]
  wire [1:0] _GEN_0; // @[alucontrol.scala 37:59]
  wire  _T_3; // @[Conditional.scala 37:30]
  wire  _T_4; // @[Conditional.scala 37:30]
  wire  _T_5; // @[Conditional.scala 37:30]
  wire  _T_6; // @[Conditional.scala 37:30]
  wire  _T_7; // @[Conditional.scala 37:30]
  wire [3:0] _GEN_1; // @[alucontrol.scala 48:43]
  wire  _T_9; // @[Conditional.scala 37:30]
  wire  _T_10; // @[Conditional.scala 37:30]
  wire [3:0] _GEN_2; // @[Conditional.scala 39:67]
  wire [3:0] _GEN_3; // @[Conditional.scala 39:67]
  wire [3:0] _GEN_4; // @[Conditional.scala 39:67]
  wire [3:0] _GEN_5; // @[Conditional.scala 39:67]
  wire [3:0] _GEN_6; // @[Conditional.scala 39:67]
  wire [3:0] _GEN_7; // @[Conditional.scala 39:67]
  wire [3:0] _GEN_8; // @[Conditional.scala 39:67]
  wire [3:0] _GEN_9; // @[Conditional.scala 40:58]
  assign _T = 3'h0 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_1 = io_funct7 == 7'h0; // @[alucontrol.scala 37:41]
  assign _T_2 = io_immediate | _T_1; // @[alucontrol.scala 37:28]
  assign _GEN_0 = _T_2 ? 2'h2 : 2'h3; // @[alucontrol.scala 37:59]
  assign _T_3 = 3'h1 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_4 = 3'h2 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_5 = 3'h3 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_6 = 3'h4 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_7 = 3'h5 == io_funct3; // @[Conditional.scala 37:30]
  assign _GEN_1 = _T_1 ? 4'h7 : 4'h8; // @[alucontrol.scala 48:43]
  assign _T_9 = 3'h6 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_10 = 3'h7 == io_funct3; // @[Conditional.scala 37:30]
  assign _GEN_2 = _T_10 ? 4'h0 : 4'hf; // @[Conditional.scala 39:67]
  assign _GEN_3 = _T_9 ? 4'h1 : _GEN_2; // @[Conditional.scala 39:67]
  assign _GEN_4 = _T_7 ? _GEN_1 : _GEN_3; // @[Conditional.scala 39:67]
  assign _GEN_5 = _T_6 ? 4'h9 : _GEN_4; // @[Conditional.scala 39:67]
  assign _GEN_6 = _T_5 ? 4'h5 : _GEN_5; // @[Conditional.scala 39:67]
  assign _GEN_7 = _T_4 ? 4'h4 : _GEN_6; // @[Conditional.scala 39:67]
  assign _GEN_8 = _T_3 ? 4'h6 : _GEN_7; // @[Conditional.scala 39:67]
  assign _GEN_9 = _T ? {{2'd0}, _GEN_0} : _GEN_8; // @[Conditional.scala 40:58]
  assign io_operation = io_add ? 4'h2 : _GEN_9; // @[alucontrol.scala 30:16 alucontrol.scala 33:18 alucontrol.scala 38:24 alucontrol.scala 40:24 alucontrol.scala 43:36 alucontrol.scala 44:36 alucontrol.scala 45:36 alucontrol.scala 46:36 alucontrol.scala 49:24 alucontrol.scala 51:24 alucontrol.scala 54:36 alucontrol.scala 55:36]
endmodule
module ALU(
  input  [3:0]  io_operation,
  input  [31:0] io_inputx,
  input  [31:0] io_inputy,
  output [31:0] io_result
);
  wire  _T; // @[Conditional.scala 37:30]
  wire [31:0] _T_1; // @[alu.scala 30:30]
  wire  _T_2; // @[Conditional.scala 37:30]
  wire [31:0] _T_3; // @[alu.scala 33:30]
  wire  _T_4; // @[Conditional.scala 37:30]
  wire [31:0] _T_6; // @[alu.scala 36:30]
  wire  _T_7; // @[Conditional.scala 37:30]
  wire [31:0] _T_9; // @[alu.scala 39:30]
  wire  _T_10; // @[Conditional.scala 37:30]
  wire  _T_13; // @[alu.scala 42:38]
  wire  _T_14; // @[Conditional.scala 37:30]
  wire  _T_15; // @[alu.scala 45:31]
  wire  _T_16; // @[Conditional.scala 37:30]
  wire [62:0] _GEN_11; // @[alu.scala 48:30]
  wire [62:0] _T_18; // @[alu.scala 48:30]
  wire  _T_19; // @[Conditional.scala 37:30]
  wire [31:0] _T_21; // @[alu.scala 51:30]
  wire  _T_22; // @[Conditional.scala 37:30]
  wire [31:0] _T_26; // @[alu.scala 54:57]
  wire  _T_27; // @[Conditional.scala 37:30]
  wire [31:0] _T_28; // @[alu.scala 57:30]
  wire  _T_29; // @[Conditional.scala 37:30]
  wire [31:0] _T_31; // @[alu.scala 60:20]
  wire [31:0] _GEN_0; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_1; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_2; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_3; // @[Conditional.scala 39:67]
  wire [62:0] _GEN_4; // @[Conditional.scala 39:67]
  wire [62:0] _GEN_5; // @[Conditional.scala 39:67]
  wire [62:0] _GEN_6; // @[Conditional.scala 39:67]
  wire [62:0] _GEN_7; // @[Conditional.scala 39:67]
  wire [62:0] _GEN_8; // @[Conditional.scala 39:67]
  wire [62:0] _GEN_9; // @[Conditional.scala 39:67]
  wire [62:0] _GEN_10; // @[Conditional.scala 40:58]
  assign _T = 4'h0 == io_operation; // @[Conditional.scala 37:30]
  assign _T_1 = io_inputx & io_inputy; // @[alu.scala 30:30]
  assign _T_2 = 4'h1 == io_operation; // @[Conditional.scala 37:30]
  assign _T_3 = io_inputx | io_inputy; // @[alu.scala 33:30]
  assign _T_4 = 4'h2 == io_operation; // @[Conditional.scala 37:30]
  assign _T_6 = io_inputx + io_inputy; // @[alu.scala 36:30]
  assign _T_7 = 4'h3 == io_operation; // @[Conditional.scala 37:30]
  assign _T_9 = io_inputx - io_inputy; // @[alu.scala 39:30]
  assign _T_10 = 4'h4 == io_operation; // @[Conditional.scala 37:30]
  assign _T_13 = $signed(io_inputx) < $signed(io_inputy); // @[alu.scala 42:38]
  assign _T_14 = 4'h5 == io_operation; // @[Conditional.scala 37:30]
  assign _T_15 = io_inputx < io_inputy; // @[alu.scala 45:31]
  assign _T_16 = 4'h6 == io_operation; // @[Conditional.scala 37:30]
  assign _GEN_11 = {{31'd0}, io_inputx}; // @[alu.scala 48:30]
  assign _T_18 = _GEN_11 << io_inputy[4:0]; // @[alu.scala 48:30]
  assign _T_19 = 4'h7 == io_operation; // @[Conditional.scala 37:30]
  assign _T_21 = io_inputx >> io_inputy[4:0]; // @[alu.scala 51:30]
  assign _T_22 = 4'h8 == io_operation; // @[Conditional.scala 37:30]
  assign _T_26 = $signed(io_inputx) >>> io_inputy[4:0]; // @[alu.scala 54:57]
  assign _T_27 = 4'h9 == io_operation; // @[Conditional.scala 37:30]
  assign _T_28 = io_inputx ^ io_inputy; // @[alu.scala 57:30]
  assign _T_29 = 4'ha == io_operation; // @[Conditional.scala 37:30]
  assign _T_31 = ~_T_3; // @[alu.scala 60:20]
  assign _GEN_0 = _T_29 ? _T_31 : 32'h0; // @[Conditional.scala 39:67]
  assign _GEN_1 = _T_27 ? _T_28 : _GEN_0; // @[Conditional.scala 39:67]
  assign _GEN_2 = _T_22 ? _T_26 : _GEN_1; // @[Conditional.scala 39:67]
  assign _GEN_3 = _T_19 ? _T_21 : _GEN_2; // @[Conditional.scala 39:67]
  assign _GEN_4 = _T_16 ? _T_18 : {{31'd0}, _GEN_3}; // @[Conditional.scala 39:67]
  assign _GEN_5 = _T_14 ? {{62'd0}, _T_15} : _GEN_4; // @[Conditional.scala 39:67]
  assign _GEN_6 = _T_10 ? {{62'd0}, _T_13} : _GEN_5; // @[Conditional.scala 39:67]
  assign _GEN_7 = _T_7 ? {{31'd0}, _T_9} : _GEN_6; // @[Conditional.scala 39:67]
  assign _GEN_8 = _T_4 ? {{31'd0}, _T_6} : _GEN_7; // @[Conditional.scala 39:67]
  assign _GEN_9 = _T_2 ? {{31'd0}, _T_3} : _GEN_8; // @[Conditional.scala 39:67]
  assign _GEN_10 = _T ? {{31'd0}, _T_1} : _GEN_9; // @[Conditional.scala 40:58]
  assign io_result = _GEN_10[31:0]; // @[alu.scala 26:13 alu.scala 30:17 alu.scala 33:17 alu.scala 36:17 alu.scala 39:17 alu.scala 42:17 alu.scala 45:17 alu.scala 48:17 alu.scala 51:17 alu.scala 54:17 alu.scala 57:17 alu.scala 60:17]
endmodule
module ImmediateGenerator(
  input  [31:0] io_instruction,
  output [31:0] io_sextImm
);
  wire [6:0] opcode; // @[helpers.scala 44:30]
  wire  _T; // @[Conditional.scala 37:30]
  wire [31:0] _T_3; // @[Cat.scala 29:58]
  wire  _T_4; // @[Conditional.scala 37:30]
  wire  _T_8; // @[Conditional.scala 37:30]
  wire [19:0] _T_15; // @[Cat.scala 29:58]
  wire [10:0] _T_18; // @[Bitwise.scala 71:12]
  wire [31:0] _T_20; // @[Cat.scala 29:58]
  wire  _T_21; // @[Conditional.scala 37:30]
  wire [19:0] _T_25; // @[Bitwise.scala 71:12]
  wire [31:0] _T_26; // @[Cat.scala 29:58]
  wire  _T_27; // @[Conditional.scala 37:30]
  wire [11:0] _T_34; // @[Cat.scala 29:58]
  wire [18:0] _T_37; // @[Bitwise.scala 71:12]
  wire [31:0] _T_39; // @[Cat.scala 29:58]
  wire  _T_40; // @[Conditional.scala 37:30]
  wire  _T_46; // @[Conditional.scala 37:30]
  wire [11:0] _T_49; // @[Cat.scala 29:58]
  wire [19:0] _T_52; // @[Bitwise.scala 71:12]
  wire [31:0] _T_53; // @[Cat.scala 29:58]
  wire  _T_54; // @[Conditional.scala 37:30]
  wire  _T_60; // @[Conditional.scala 37:30]
  wire [31:0] _T_63; // @[Cat.scala 29:58]
  wire [31:0] _GEN_0; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_1; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_2; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_3; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_4; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_5; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_6; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_7; // @[Conditional.scala 39:67]
  assign opcode = io_instruction[6:0]; // @[helpers.scala 44:30]
  assign _T = 7'h37 == opcode; // @[Conditional.scala 37:30]
  assign _T_3 = {io_instruction[31:12],12'h0}; // @[Cat.scala 29:58]
  assign _T_4 = 7'h17 == opcode; // @[Conditional.scala 37:30]
  assign _T_8 = 7'h6f == opcode; // @[Conditional.scala 37:30]
  assign _T_15 = {io_instruction[31],io_instruction[19:12],io_instruction[20],io_instruction[30:21]}; // @[Cat.scala 29:58]
  assign _T_18 = _T_15[19] ? 11'h7ff : 11'h0; // @[Bitwise.scala 71:12]
  assign _T_20 = {_T_18,io_instruction[31],io_instruction[19:12],io_instruction[20],io_instruction[30:21],1'h0}; // @[Cat.scala 29:58]
  assign _T_21 = 7'h67 == opcode; // @[Conditional.scala 37:30]
  assign _T_25 = io_instruction[31] ? 20'hfffff : 20'h0; // @[Bitwise.scala 71:12]
  assign _T_26 = {_T_25,io_instruction[31:20]}; // @[Cat.scala 29:58]
  assign _T_27 = 7'h63 == opcode; // @[Conditional.scala 37:30]
  assign _T_34 = {io_instruction[31],io_instruction[7],io_instruction[30:25],io_instruction[11:8]}; // @[Cat.scala 29:58]
  assign _T_37 = _T_34[11] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 71:12]
  assign _T_39 = {_T_37,io_instruction[31],io_instruction[7],io_instruction[30:25],io_instruction[11:8],1'h0}; // @[Cat.scala 29:58]
  assign _T_40 = 7'h3 == opcode; // @[Conditional.scala 37:30]
  assign _T_46 = 7'h23 == opcode; // @[Conditional.scala 37:30]
  assign _T_49 = {io_instruction[31:25],io_instruction[11:7]}; // @[Cat.scala 29:58]
  assign _T_52 = _T_49[11] ? 20'hfffff : 20'h0; // @[Bitwise.scala 71:12]
  assign _T_53 = {_T_52,io_instruction[31:25],io_instruction[11:7]}; // @[Cat.scala 29:58]
  assign _T_54 = 7'h13 == opcode; // @[Conditional.scala 37:30]
  assign _T_60 = 7'h73 == opcode; // @[Conditional.scala 37:30]
  assign _T_63 = {27'h0,io_instruction[19:15]}; // @[Cat.scala 29:58]
  assign _GEN_0 = _T_60 ? _T_63 : 32'h0; // @[Conditional.scala 39:67]
  assign _GEN_1 = _T_54 ? _T_26 : _GEN_0; // @[Conditional.scala 39:67]
  assign _GEN_2 = _T_46 ? _T_53 : _GEN_1; // @[Conditional.scala 39:67]
  assign _GEN_3 = _T_40 ? _T_26 : _GEN_2; // @[Conditional.scala 39:67]
  assign _GEN_4 = _T_27 ? _T_39 : _GEN_3; // @[Conditional.scala 39:67]
  assign _GEN_5 = _T_21 ? _T_26 : _GEN_4; // @[Conditional.scala 39:67]
  assign _GEN_6 = _T_8 ? _T_20 : _GEN_5; // @[Conditional.scala 39:67]
  assign _GEN_7 = _T_4 ? _T_3 : _GEN_6; // @[Conditional.scala 39:67]
  assign io_sextImm = _T ? _T_3 : _GEN_7; // @[helpers.scala 42:14 helpers.scala 48:18 helpers.scala 52:18 helpers.scala 57:18 helpers.scala 61:18 helpers.scala 66:18 helpers.scala 70:18 helpers.scala 74:18 helpers.scala 78:18 helpers.scala 81:18]
endmodule
module BranchControl(
  input         io_branch,
  input  [2:0]  io_funct3,
  input  [31:0] io_inputx,
  input  [31:0] io_inputy,
  output        io_taken
);
  wire  _T; // @[Conditional.scala 37:30]
  wire  _T_1; // @[branch-control.scala 33:40]
  wire  _T_2; // @[Conditional.scala 37:30]
  wire  _T_3; // @[branch-control.scala 34:40]
  wire  _T_4; // @[Conditional.scala 37:30]
  wire  _T_7; // @[branch-control.scala 35:47]
  wire  _T_8; // @[Conditional.scala 37:30]
  wire  _T_11; // @[branch-control.scala 36:47]
  wire  _T_12; // @[Conditional.scala 37:30]
  wire  _T_13; // @[branch-control.scala 37:40]
  wire  _T_15; // @[branch-control.scala 38:40]
  wire  _GEN_1; // @[Conditional.scala 39:67]
  wire  _GEN_2; // @[Conditional.scala 39:67]
  wire  _GEN_3; // @[Conditional.scala 39:67]
  wire  _GEN_4; // @[Conditional.scala 39:67]
  wire  check; // @[Conditional.scala 40:58]
  assign _T = 3'h0 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_1 = io_inputx == io_inputy; // @[branch-control.scala 33:40]
  assign _T_2 = 3'h1 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_3 = io_inputx != io_inputy; // @[branch-control.scala 34:40]
  assign _T_4 = 3'h4 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_7 = $signed(io_inputx) < $signed(io_inputy); // @[branch-control.scala 35:47]
  assign _T_8 = 3'h5 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_11 = $signed(io_inputx) >= $signed(io_inputy); // @[branch-control.scala 36:47]
  assign _T_12 = 3'h6 == io_funct3; // @[Conditional.scala 37:30]
  assign _T_13 = io_inputx < io_inputy; // @[branch-control.scala 37:40]
  assign _T_15 = io_inputx >= io_inputy; // @[branch-control.scala 38:40]
  assign _GEN_1 = _T_12 ? _T_13 : _T_15; // @[Conditional.scala 39:67]
  assign _GEN_2 = _T_8 ? _T_11 : _GEN_1; // @[Conditional.scala 39:67]
  assign _GEN_3 = _T_4 ? _T_7 : _GEN_2; // @[Conditional.scala 39:67]
  assign _GEN_4 = _T_2 ? _T_3 : _GEN_3; // @[Conditional.scala 39:67]
  assign check = _T ? _T_1 : _GEN_4; // @[Conditional.scala 40:58]
  assign io_taken = check & io_branch; // @[branch-control.scala 41:12]
endmodule
module Adder(
  input  [31:0] io_inputx,
  input  [31:0] io_inputy,
  output [31:0] io_result
);
  assign io_result = io_inputx + io_inputy; // @[helpers.scala 23:13]
endmodule
module SingleCycleCPU(
  input         clock,
  input         reset,
  output [31:0] io_imem_address,
  input  [31:0] io_imem_instruction,
  output [31:0] io_dmem_address,
  output        io_dmem_valid,
  output [31:0] io_dmem_writedata,
  output        io_dmem_memread,
  output        io_dmem_memwrite,
  output [1:0]  io_dmem_maskmode,
  output        io_dmem_sext,
  input  [31:0] io_dmem_readdata
);
  wire [6:0] control_io_opcode; // @[cpu.scala 18:26]
  wire  control_io_validinst; // @[cpu.scala 18:26]
  wire  control_io_branch; // @[cpu.scala 18:26]
  wire  control_io_memread; // @[cpu.scala 18:26]
  wire [1:0] control_io_toreg; // @[cpu.scala 18:26]
  wire  control_io_add; // @[cpu.scala 18:26]
  wire  control_io_memwrite; // @[cpu.scala 18:26]
  wire  control_io_regwrite; // @[cpu.scala 18:26]
  wire  control_io_immediate; // @[cpu.scala 18:26]
  wire [1:0] control_io_alusrc1; // @[cpu.scala 18:26]
  wire [1:0] control_io_jump; // @[cpu.scala 18:26]
  wire  registers_clock; // @[cpu.scala 19:26]
  wire [4:0] registers_io_readreg1; // @[cpu.scala 19:26]
  wire [4:0] registers_io_readreg2; // @[cpu.scala 19:26]
  wire [4:0] registers_io_writereg; // @[cpu.scala 19:26]
  wire [31:0] registers_io_writedata; // @[cpu.scala 19:26]
  wire  registers_io_wen; // @[cpu.scala 19:26]
  wire [31:0] registers_io_readdata1; // @[cpu.scala 19:26]
  wire [31:0] registers_io_readdata2; // @[cpu.scala 19:26]
  wire  csr_clock; // @[cpu.scala 20:26]
  wire  csr_reset; // @[cpu.scala 20:26]
  wire  csr_io_illegal_inst; // @[cpu.scala 20:26]
  wire [31:0] csr_io_pc; // @[cpu.scala 20:26]
  wire [31:0] csr_io_read_data; // @[cpu.scala 20:26]
  wire [31:0] csr_io_inst; // @[cpu.scala 20:26]
  wire [31:0] csr_io_immid; // @[cpu.scala 20:26]
  wire  csr_io_read_illegal; // @[cpu.scala 20:26]
  wire  csr_io_write_illegal; // @[cpu.scala 20:26]
  wire  csr_io_eret; // @[cpu.scala 20:26]
  wire [31:0] csr_io_evec; // @[cpu.scala 20:26]
  wire [31:0] csr_io_write_data; // @[cpu.scala 20:26]
  wire  csr_io_reg_write; // @[cpu.scala 20:26]
  wire  csr_io_status_sd; // @[cpu.scala 20:26]
  wire [7:0] csr_io_status_wpri1; // @[cpu.scala 20:26]
  wire  csr_io_status_tsr; // @[cpu.scala 20:26]
  wire  csr_io_status_tw; // @[cpu.scala 20:26]
  wire  csr_io_status_tvm; // @[cpu.scala 20:26]
  wire  csr_io_status_mxr; // @[cpu.scala 20:26]
  wire  csr_io_status_sum; // @[cpu.scala 20:26]
  wire  csr_io_status_mprv; // @[cpu.scala 20:26]
  wire [1:0] csr_io_status_xs; // @[cpu.scala 20:26]
  wire [1:0] csr_io_status_fs; // @[cpu.scala 20:26]
  wire [1:0] csr_io_status_mpp; // @[cpu.scala 20:26]
  wire [1:0] csr_io_status_wpri2; // @[cpu.scala 20:26]
  wire  csr_io_status_spp; // @[cpu.scala 20:26]
  wire  csr_io_status_mpie; // @[cpu.scala 20:26]
  wire  csr_io_status_wpri3; // @[cpu.scala 20:26]
  wire  csr_io_status_spie; // @[cpu.scala 20:26]
  wire  csr_io_status_upie; // @[cpu.scala 20:26]
  wire  csr_io_status_mie; // @[cpu.scala 20:26]
  wire  csr_io_status_wpri4; // @[cpu.scala 20:26]
  wire  csr_io_status_sie; // @[cpu.scala 20:26]
  wire  csr_io_status_uie; // @[cpu.scala 20:26]
  wire  aluControl_io_add; // @[cpu.scala 21:26]
  wire  aluControl_io_immediate; // @[cpu.scala 21:26]
  wire [6:0] aluControl_io_funct7; // @[cpu.scala 21:26]
  wire [2:0] aluControl_io_funct3; // @[cpu.scala 21:26]
  wire [3:0] aluControl_io_operation; // @[cpu.scala 21:26]
  wire [3:0] alu_io_operation; // @[cpu.scala 22:26]
  wire [31:0] alu_io_inputx; // @[cpu.scala 22:26]
  wire [31:0] alu_io_inputy; // @[cpu.scala 22:26]
  wire [31:0] alu_io_result; // @[cpu.scala 22:26]
  wire [31:0] immGen_io_instruction; // @[cpu.scala 23:26]
  wire [31:0] immGen_io_sextImm; // @[cpu.scala 23:26]
  wire  branchCtrl_io_branch; // @[cpu.scala 24:26]
  wire [2:0] branchCtrl_io_funct3; // @[cpu.scala 24:26]
  wire [31:0] branchCtrl_io_inputx; // @[cpu.scala 24:26]
  wire [31:0] branchCtrl_io_inputy; // @[cpu.scala 24:26]
  wire  branchCtrl_io_taken; // @[cpu.scala 24:26]
  wire [31:0] pcPlusFour_io_inputx; // @[cpu.scala 25:26]
  wire [31:0] pcPlusFour_io_inputy; // @[cpu.scala 25:26]
  wire [31:0] pcPlusFour_io_result; // @[cpu.scala 25:26]
  wire [31:0] branchAdd_io_inputx; // @[cpu.scala 26:26]
  wire [31:0] branchAdd_io_inputy; // @[cpu.scala 26:26]
  wire [31:0] branchAdd_io_result; // @[cpu.scala 26:26]
  reg [31:0] pc; // @[cpu.scala 17:27]
  reg [31:0] _RAND_0;
  wire  _T_7; // @[cpu.scala 46:49]
  wire  _T_8; // @[cpu.scala 46:96]
  wire  _T_12; // @[cpu.scala 61:26]
  wire  _T_13; // @[cpu.scala 61:48]
  wire  _T_17; // @[cpu.scala 70:28]
  wire  _T_18; // @[cpu.scala 72:35]
  wire [31:0] _GEN_2; // @[cpu.scala 72:44]
  wire  _T_23; // @[cpu.scala 97:26]
  wire  _T_24; // @[cpu.scala 99:33]
  wire  _T_25; // @[cpu.scala 101:33]
  wire [31:0] _GEN_5; // @[cpu.scala 101:42]
  wire [31:0] _GEN_6; // @[cpu.scala 99:42]
  wire  _T_26; // @[cpu.scala 112:48]
  wire  _T_27; // @[cpu.scala 112:29]
  wire  _T_28; // @[cpu.scala 114:32]
  wire [31:0] _T_31; // @[cpu.scala 115:30]
  wire  _T_33; // @[cpu.scala 116:28]
  Control control ( // @[cpu.scala 18:26]
    .io_opcode(control_io_opcode),
    .io_validinst(control_io_validinst),
    .io_branch(control_io_branch),
    .io_memread(control_io_memread),
    .io_toreg(control_io_toreg),
    .io_add(control_io_add),
    .io_memwrite(control_io_memwrite),
    .io_regwrite(control_io_regwrite),
    .io_immediate(control_io_immediate),
    .io_alusrc1(control_io_alusrc1),
    .io_jump(control_io_jump)
  );
  RegisterFile registers ( // @[cpu.scala 19:26]
    .clock(registers_clock),
    .io_readreg1(registers_io_readreg1),
    .io_readreg2(registers_io_readreg2),
    .io_writereg(registers_io_writereg),
    .io_writedata(registers_io_writedata),
    .io_wen(registers_io_wen),
    .io_readdata1(registers_io_readdata1),
    .io_readdata2(registers_io_readdata2)
  );
  CSRRegFile csr ( // @[cpu.scala 20:26]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_illegal_inst(csr_io_illegal_inst),
    .io_pc(csr_io_pc),
    .io_read_data(csr_io_read_data),
    .io_inst(csr_io_inst),
    .io_immid(csr_io_immid),
    .io_read_illegal(csr_io_read_illegal),
    .io_write_illegal(csr_io_write_illegal),
    .io_eret(csr_io_eret),
    .io_evec(csr_io_evec),
    .io_write_data(csr_io_write_data),
    .io_reg_write(csr_io_reg_write),
    .io_status_sd(csr_io_status_sd),
    .io_status_wpri1(csr_io_status_wpri1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_wpri2(csr_io_status_wpri2),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_wpri3(csr_io_status_wpri3),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_wpri4(csr_io_status_wpri4),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie)
  );
  ALUControl aluControl ( // @[cpu.scala 21:26]
    .io_add(aluControl_io_add),
    .io_immediate(aluControl_io_immediate),
    .io_funct7(aluControl_io_funct7),
    .io_funct3(aluControl_io_funct3),
    .io_operation(aluControl_io_operation)
  );
  ALU alu ( // @[cpu.scala 22:26]
    .io_operation(alu_io_operation),
    .io_inputx(alu_io_inputx),
    .io_inputy(alu_io_inputy),
    .io_result(alu_io_result)
  );
  ImmediateGenerator immGen ( // @[cpu.scala 23:26]
    .io_instruction(immGen_io_instruction),
    .io_sextImm(immGen_io_sextImm)
  );
  BranchControl branchCtrl ( // @[cpu.scala 24:26]
    .io_branch(branchCtrl_io_branch),
    .io_funct3(branchCtrl_io_funct3),
    .io_inputx(branchCtrl_io_inputx),
    .io_inputy(branchCtrl_io_inputy),
    .io_taken(branchCtrl_io_taken)
  );
  Adder pcPlusFour ( // @[cpu.scala 25:26]
    .io_inputx(pcPlusFour_io_inputx),
    .io_inputy(pcPlusFour_io_inputy),
    .io_result(pcPlusFour_io_result)
  );
  Adder branchAdd ( // @[cpu.scala 26:26]
    .io_inputx(branchAdd_io_inputx),
    .io_inputy(branchAdd_io_inputy),
    .io_result(branchAdd_io_result)
  );
  assign _T_7 = control_io_regwrite | csr_io_reg_write; // @[cpu.scala 46:49]
  assign _T_8 = registers_io_writereg != 5'h0; // @[cpu.scala 46:96]
  assign _T_12 = ~control_io_validinst; // @[cpu.scala 61:26]
  assign _T_13 = _T_12 | csr_io_read_illegal; // @[cpu.scala 61:48]
  assign _T_17 = control_io_alusrc1 == 2'h2; // @[cpu.scala 70:28]
  assign _T_18 = control_io_alusrc1 == 2'h1; // @[cpu.scala 72:35]
  assign _GEN_2 = _T_18 ? 32'h0 : registers_io_readdata1; // @[cpu.scala 72:44]
  assign _T_23 = control_io_toreg == 2'h1; // @[cpu.scala 97:26]
  assign _T_24 = control_io_toreg == 2'h2; // @[cpu.scala 99:33]
  assign _T_25 = control_io_toreg == 2'h3; // @[cpu.scala 101:33]
  assign _GEN_5 = _T_25 ? csr_io_write_data : alu_io_result; // @[cpu.scala 101:42]
  assign _GEN_6 = _T_24 ? pcPlusFour_io_result : _GEN_5; // @[cpu.scala 99:42]
  assign _T_26 = control_io_jump == 2'h2; // @[cpu.scala 112:48]
  assign _T_27 = branchCtrl_io_taken | _T_26; // @[cpu.scala 112:29]
  assign _T_28 = control_io_jump == 2'h3; // @[cpu.scala 114:32]
  assign _T_31 = alu_io_result & 32'hfffffffe; // @[cpu.scala 115:30]
  assign _T_33 = csr_io_eret | _T_12; // @[cpu.scala 116:28]
  assign io_imem_address = pc; // @[cpu.scala 30:19]
  assign io_dmem_address = alu_io_result; // @[cpu.scala 83:21]
  assign io_dmem_valid = io_dmem_memread | io_dmem_memwrite; // @[cpu.scala 90:19 cpu.scala 92:19]
  assign io_dmem_writedata = registers_io_readdata2; // @[cpu.scala 84:21]
  assign io_dmem_memread = control_io_memread; // @[cpu.scala 85:21]
  assign io_dmem_memwrite = control_io_memwrite; // @[cpu.scala 86:21]
  assign io_dmem_maskmode = io_imem_instruction[13:12]; // @[cpu.scala 87:21]
  assign io_dmem_sext = ~io_imem_instruction[14]; // @[cpu.scala 88:21]
  assign control_io_opcode = io_imem_instruction[6:0]; // @[cpu.scala 40:21]
  assign registers_clock = clock;
  assign registers_io_readreg1 = io_imem_instruction[19:15]; // @[cpu.scala 42:25]
  assign registers_io_readreg2 = io_imem_instruction[24:20]; // @[cpu.scala 43:25]
  assign registers_io_writereg = io_imem_instruction[11:7]; // @[cpu.scala 45:25]
  assign registers_io_writedata = _T_23 ? io_dmem_readdata : _GEN_6; // @[cpu.scala 107:26]
  assign registers_io_wen = _T_7 & _T_8; // @[cpu.scala 46:25]
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_illegal_inst = _T_13 | csr_io_write_illegal; // @[cpu.scala 61:23]
  assign csr_io_pc = pc; // @[cpu.scala 62:13]
  assign csr_io_read_data = registers_io_readdata1; // @[cpu.scala 59:20]
  assign csr_io_inst = io_imem_instruction; // @[cpu.scala 57:15]
  assign csr_io_immid = immGen_io_sextImm; // @[cpu.scala 58:16]
  assign aluControl_io_add = control_io_add; // @[cpu.scala 48:27]
  assign aluControl_io_immediate = control_io_immediate; // @[cpu.scala 49:27]
  assign aluControl_io_funct7 = io_imem_instruction[31:25]; // @[cpu.scala 50:27]
  assign aluControl_io_funct3 = io_imem_instruction[14:12]; // @[cpu.scala 51:27]
  assign alu_io_operation = aluControl_io_operation; // @[cpu.scala 80:20]
  assign alu_io_inputx = _T_17 ? pc : _GEN_2; // @[cpu.scala 78:17]
  assign alu_io_inputy = control_io_immediate ? immGen_io_sextImm : registers_io_readdata2; // @[cpu.scala 79:17]
  assign immGen_io_instruction = io_imem_instruction; // @[cpu.scala 53:25]
  assign branchCtrl_io_branch = control_io_branch; // @[cpu.scala 64:24]
  assign branchCtrl_io_funct3 = io_imem_instruction[14:12]; // @[cpu.scala 65:24]
  assign branchCtrl_io_inputx = registers_io_readdata1; // @[cpu.scala 66:24]
  assign branchCtrl_io_inputy = registers_io_readdata2; // @[cpu.scala 67:24]
  assign pcPlusFour_io_inputx = pc; // @[cpu.scala 33:24]
  assign pcPlusFour_io_inputy = 32'h4; // @[cpu.scala 34:24]
  assign branchAdd_io_inputx = pc; // @[cpu.scala 109:23]
  assign branchAdd_io_inputy = immGen_io_sextImm; // @[cpu.scala 110:23]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      pc <= 32'h0;
    end else if (_T_27) begin
      pc <= branchAdd_io_result;
    end else if (_T_28) begin
      pc <= _T_31;
    end else if (_T_33) begin
      pc <= csr_io_evec;
    end else begin
      pc <= pcPlusFour_io_result;
    end
  end
endmodule
module DualPortedCombinMemory(
  input         clock,
  input         reset,
  input  [31:0] io_imem_request_bits_address,
  output [31:0] io_imem_response_bits_data,
  input         io_dmem_request_valid,
  input  [31:0] io_dmem_request_bits_address,
  input  [31:0] io_dmem_request_bits_writedata,
  input  [1:0]  io_dmem_request_bits_operation,
  output        io_dmem_response_valid,
  output [31:0] io_dmem_response_bits_data
);
  reg [31:0] memory [0:16383]; // @[base-memory-components.scala 39:19]
  reg [31:0] _RAND_0;
  wire [31:0] memory__T_9_data; // @[base-memory-components.scala 39:19]
  wire [13:0] memory__T_9_addr; // @[base-memory-components.scala 39:19]
  wire [31:0] memory__T_20_data; // @[base-memory-components.scala 39:19]
  wire [13:0] memory__T_20_addr; // @[base-memory-components.scala 39:19]
  wire [31:0] memory__T_24_data; // @[base-memory-components.scala 39:19]
  wire [13:0] memory__T_24_addr; // @[base-memory-components.scala 39:19]
  wire  memory__T_24_mask; // @[base-memory-components.scala 39:19]
  wire  memory__T_24_en; // @[base-memory-components.scala 39:19]
  wire  _T_6; // @[memory.scala 35:27]
  wire  _T_10; // @[memory.scala 56:31]
  wire  _T_12; // @[memory.scala 56:12]
  wire  _T_13; // @[memory.scala 56:12]
  wire  _T_14; // @[memory.scala 58:29]
  wire  _T_16; // @[memory.scala 58:12]
  wire  _T_17; // @[memory.scala 58:12]
  wire  _T_21; // @[memory.scala 65:29]
  assign memory__T_9_addr = io_imem_request_bits_address[15:2];
  assign memory__T_9_data = memory[memory__T_9_addr]; // @[base-memory-components.scala 39:19]
  assign memory__T_20_addr = io_dmem_request_bits_address[15:2];
  assign memory__T_20_data = memory[memory__T_20_addr]; // @[base-memory-components.scala 39:19]
  assign memory__T_24_data = io_dmem_request_bits_writedata;
  assign memory__T_24_addr = io_dmem_request_bits_address[15:2];
  assign memory__T_24_mask = 1'h1;
  assign memory__T_24_en = io_dmem_request_valid & _T_21;
  assign _T_6 = io_imem_request_bits_address < 32'h10000; // @[memory.scala 35:27]
  assign _T_10 = io_dmem_request_bits_operation != 2'h1; // @[memory.scala 56:31]
  assign _T_12 = _T_10 | reset; // @[memory.scala 56:12]
  assign _T_13 = ~_T_12; // @[memory.scala 56:12]
  assign _T_14 = io_dmem_request_bits_address < 32'h10000; // @[memory.scala 58:29]
  assign _T_16 = _T_14 | reset; // @[memory.scala 58:12]
  assign _T_17 = ~_T_16; // @[memory.scala 58:12]
  assign _T_21 = io_dmem_request_bits_operation == 2'h2; // @[memory.scala 65:29]
  assign io_imem_response_bits_data = _T_6 ? memory__T_9_data : 32'h0; // @[base-memory-components.scala 36:20 memory.scala 37:34]
  assign io_dmem_response_valid = io_dmem_request_valid; // @[base-memory-components.scala 37:20 memory.scala 17:27 memory.scala 62:28 memory.scala 69:28]
  assign io_dmem_response_bits_data = io_dmem_request_valid ? memory__T_20_data : 32'h0; // @[base-memory-components.scala 37:20 memory.scala 61:32]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16384; initvar = initvar+1)
    memory[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(memory__T_24_en & memory__T_24_mask) begin
      memory[memory__T_24_addr] <= memory__T_24_data; // @[base-memory-components.scala 39:19]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_dmem_request_valid & _T_13) begin
          $fwrite(32'h80000002,"Assertion failed\n    at memory.scala:56 assert (request.operation =/= Write)\n"); // @[memory.scala 56:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_dmem_request_valid & _T_13) begin
          $fatal; // @[memory.scala 56:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_dmem_request_valid & _T_17) begin
          $fwrite(32'h80000002,"Assertion failed\n    at memory.scala:58 assert (request.address < size.U)\n"); // @[memory.scala 58:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_dmem_request_valid & _T_17) begin
          $fatal; // @[memory.scala 58:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module ICombinMemPort(
  input  [31:0] io_pipeline_address,
  output [31:0] io_pipeline_instruction,
  output [31:0] io_bus_request_bits_address,
  input  [31:0] io_bus_response_bits_data
);
  assign io_pipeline_instruction = io_bus_response_bits_data; // @[base-memory-components.scala 52:15 memory-combin-ports.scala 30:27]
  assign io_bus_request_bits_address = io_pipeline_address; // @[memory-combin-ports.scala 22:26]
endmodule
module DCombinMemPort(
  input         clock,
  input         reset,
  input  [31:0] io_pipeline_address,
  input         io_pipeline_valid,
  input  [31:0] io_pipeline_writedata,
  input         io_pipeline_memread,
  input         io_pipeline_memwrite,
  input  [1:0]  io_pipeline_maskmode,
  input         io_pipeline_sext,
  output [31:0] io_pipeline_readdata,
  output        io_bus_request_valid,
  output [31:0] io_bus_request_bits_address,
  output [31:0] io_bus_request_bits_writedata,
  output [1:0]  io_bus_request_bits_operation,
  input         io_bus_response_valid,
  input  [31:0] io_bus_response_bits_data
);
  wire  _T_1; // @[memory-combin-ports.scala 41:51]
  wire  _T_2; // @[memory-combin-ports.scala 41:27]
  wire  _T_3; // @[memory-combin-ports.scala 43:34]
  wire  _T_4; // @[memory-combin-ports.scala 43:12]
  wire  _T_6; // @[memory-combin-ports.scala 43:11]
  wire  _T_7; // @[memory-combin-ports.scala 43:11]
  wire  _T_9; // @[memory-combin-ports.scala 74:34]
  wire  _T_12; // @[memory-combin-ports.scala 82:36]
  wire  _T_13; // @[memory-combin-ports.scala 83:23]
  wire [31:0] _T_16; // @[Cat.scala 29:58]
  wire  _T_17; // @[memory-combin-ports.scala 85:29]
  wire [31:0] _T_22; // @[Cat.scala 29:58]
  wire  _T_23; // @[memory-combin-ports.scala 87:29]
  wire [31:0] _T_28; // @[Cat.scala 29:58]
  wire [31:0] _T_31; // @[Cat.scala 29:58]
  wire [31:0] _GEN_4; // @[memory-combin-ports.scala 87:38]
  wire [31:0] _GEN_5; // @[memory-combin-ports.scala 85:38]
  wire [31:0] _GEN_6; // @[memory-combin-ports.scala 83:32]
  wire [31:0] _T_35; // @[Cat.scala 29:58]
  wire [31:0] _T_38; // @[Cat.scala 29:58]
  wire [31:0] _GEN_7; // @[memory-combin-ports.scala 93:33]
  wire [31:0] _GEN_8; // @[memory-combin-ports.scala 82:45]
  wire [3:0] _GEN_20; // @[memory-combin-ports.scala 113:64]
  wire [5:0] _T_43; // @[memory-combin-ports.scala 113:64]
  wire [31:0] _T_44; // @[memory-combin-ports.scala 113:53]
  wire [31:0] _T_45; // @[memory-combin-ports.scala 113:72]
  wire  _T_46; // @[memory-combin-ports.scala 114:41]
  wire [31:0] _T_49; // @[memory-combin-ports.scala 116:72]
  wire [31:0] _GEN_10; // @[memory-combin-ports.scala 114:50]
  wire [31:0] _GEN_11; // @[memory-combin-ports.scala 111:43]
  wire [23:0] _T_53; // @[Bitwise.scala 71:12]
  wire [31:0] _T_55; // @[Cat.scala 29:58]
  wire [15:0] _T_59; // @[Bitwise.scala 71:12]
  wire [31:0] _T_61; // @[Cat.scala 29:58]
  wire [31:0] _GEN_12; // @[memory-combin-ports.scala 125:52]
  wire [31:0] _GEN_13; // @[memory-combin-ports.scala 122:45]
  wire [31:0] _GEN_14; // @[memory-combin-ports.scala 121:31]
  wire [31:0] _GEN_15; // @[memory-combin-ports.scala 105:39]
  wire [31:0] _GEN_17; // @[memory-combin-ports.scala 69:33]
  assign _T_1 = io_pipeline_memread | io_pipeline_memwrite; // @[memory-combin-ports.scala 41:51]
  assign _T_2 = io_pipeline_valid & _T_1; // @[memory-combin-ports.scala 41:27]
  assign _T_3 = io_pipeline_memread & io_pipeline_memwrite; // @[memory-combin-ports.scala 43:34]
  assign _T_4 = ~_T_3; // @[memory-combin-ports.scala 43:12]
  assign _T_6 = _T_4 | reset; // @[memory-combin-ports.scala 43:11]
  assign _T_7 = ~_T_6; // @[memory-combin-ports.scala 43:11]
  assign _T_9 = io_pipeline_maskmode != 2'h2; // @[memory-combin-ports.scala 74:34]
  assign _T_12 = io_pipeline_maskmode == 2'h0; // @[memory-combin-ports.scala 82:36]
  assign _T_13 = io_pipeline_address[1:0] == 2'h0; // @[memory-combin-ports.scala 83:23]
  assign _T_16 = {io_bus_response_bits_data[31:8],io_pipeline_writedata[7:0]}; // @[Cat.scala 29:58]
  assign _T_17 = io_pipeline_address[1:0] == 2'h1; // @[memory-combin-ports.scala 85:29]
  assign _T_22 = {io_bus_response_bits_data[31:16],io_pipeline_writedata[15:8],io_bus_response_bits_data[7:0]}; // @[Cat.scala 29:58]
  assign _T_23 = io_pipeline_address[1:0] == 2'h2; // @[memory-combin-ports.scala 87:29]
  assign _T_28 = {io_bus_response_bits_data[31:24],io_pipeline_writedata[23:16],io_bus_response_bits_data[15:0]}; // @[Cat.scala 29:58]
  assign _T_31 = {io_pipeline_writedata[31:24],io_bus_response_bits_data[23:0]}; // @[Cat.scala 29:58]
  assign _GEN_4 = _T_23 ? _T_28 : _T_31; // @[memory-combin-ports.scala 87:38]
  assign _GEN_5 = _T_17 ? _T_22 : _GEN_4; // @[memory-combin-ports.scala 85:38]
  assign _GEN_6 = _T_13 ? _T_16 : _GEN_5; // @[memory-combin-ports.scala 83:32]
  assign _T_35 = {io_bus_response_bits_data[31:16],io_pipeline_writedata[15:0]}; // @[Cat.scala 29:58]
  assign _T_38 = {io_pipeline_writedata[31:16],io_bus_response_bits_data[15:0]}; // @[Cat.scala 29:58]
  assign _GEN_7 = _T_13 ? _T_35 : _T_38; // @[memory-combin-ports.scala 93:33]
  assign _GEN_8 = _T_12 ? _GEN_6 : _GEN_7; // @[memory-combin-ports.scala 82:45]
  assign _GEN_20 = {{2'd0}, io_pipeline_address[1:0]}; // @[memory-combin-ports.scala 113:64]
  assign _T_43 = _GEN_20 * 4'h8; // @[memory-combin-ports.scala 113:64]
  assign _T_44 = io_bus_response_bits_data >> _T_43; // @[memory-combin-ports.scala 113:53]
  assign _T_45 = _T_44 & 32'hff; // @[memory-combin-ports.scala 113:72]
  assign _T_46 = io_pipeline_maskmode == 2'h1; // @[memory-combin-ports.scala 114:41]
  assign _T_49 = _T_44 & 32'hffff; // @[memory-combin-ports.scala 116:72]
  assign _GEN_10 = _T_46 ? _T_49 : io_bus_response_bits_data; // @[memory-combin-ports.scala 114:50]
  assign _GEN_11 = _T_12 ? _T_45 : _GEN_10; // @[memory-combin-ports.scala 111:43]
  assign _T_53 = _GEN_11[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 71:12]
  assign _T_55 = {_T_53,_GEN_11[7:0]}; // @[Cat.scala 29:58]
  assign _T_59 = _GEN_11[15] ? 16'hffff : 16'h0; // @[Bitwise.scala 71:12]
  assign _T_61 = {_T_59,_GEN_11[15:0]}; // @[Cat.scala 29:58]
  assign _GEN_12 = _T_46 ? _T_61 : _GEN_11; // @[memory-combin-ports.scala 125:52]
  assign _GEN_13 = _T_12 ? _T_55 : _GEN_12; // @[memory-combin-ports.scala 122:45]
  assign _GEN_14 = io_pipeline_sext ? _GEN_13 : _GEN_11; // @[memory-combin-ports.scala 121:31]
  assign _GEN_15 = io_pipeline_memread ? _GEN_14 : 32'h0; // @[memory-combin-ports.scala 105:39]
  assign _GEN_17 = io_pipeline_memwrite ? 32'h0 : _GEN_15; // @[memory-combin-ports.scala 69:33]
  assign io_pipeline_readdata = io_bus_response_valid ? _GEN_17 : 32'h0; // @[base-memory-components.scala 69:15 memory-combin-ports.scala 136:28]
  assign io_bus_request_valid = io_pipeline_valid & _T_1; // @[memory-combin-ports.scala 46:26 memory-combin-ports.scala 64:26]
  assign io_bus_request_bits_address = io_pipeline_address; // @[memory-combin-ports.scala 45:33]
  assign io_bus_request_bits_writedata = _T_9 ? _GEN_8 : io_pipeline_writedata; // @[memory-combin-ports.scala 104:37]
  assign io_bus_request_bits_operation = io_pipeline_memwrite ? 2'h2 : 2'h0; // @[memory-combin-ports.scala 57:37 memory-combin-ports.scala 60:37]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2 & _T_7) begin
          $fwrite(32'h80000002,"Assertion failed\n    at memory-combin-ports.scala:43 assert(!(io.pipeline.memread && io.pipeline.memwrite))\n"); // @[memory-combin-ports.scala 43:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_2 & _T_7) begin
          $fatal; // @[memory-combin-ports.scala 43:11]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module Top(
  input   clock,
  input   reset,
  output  io_success
);
  wire  cpu_clock; // @[top.scala 14:20]
  wire  cpu_reset; // @[top.scala 14:20]
  wire [31:0] cpu_io_imem_address; // @[top.scala 14:20]
  wire [31:0] cpu_io_imem_instruction; // @[top.scala 14:20]
  wire [31:0] cpu_io_dmem_address; // @[top.scala 14:20]
  wire  cpu_io_dmem_valid; // @[top.scala 14:20]
  wire [31:0] cpu_io_dmem_writedata; // @[top.scala 14:20]
  wire  cpu_io_dmem_memread; // @[top.scala 14:20]
  wire  cpu_io_dmem_memwrite; // @[top.scala 14:20]
  wire [1:0] cpu_io_dmem_maskmode; // @[top.scala 14:20]
  wire  cpu_io_dmem_sext; // @[top.scala 14:20]
  wire [31:0] cpu_io_dmem_readdata; // @[top.scala 14:20]
  wire  mem_clock; // @[top.scala 15:20]
  wire  mem_reset; // @[top.scala 15:20]
  wire [31:0] mem_io_imem_request_bits_address; // @[top.scala 15:20]
  wire [31:0] mem_io_imem_response_bits_data; // @[top.scala 15:20]
  wire  mem_io_dmem_request_valid; // @[top.scala 15:20]
  wire [31:0] mem_io_dmem_request_bits_address; // @[top.scala 15:20]
  wire [31:0] mem_io_dmem_request_bits_writedata; // @[top.scala 15:20]
  wire [1:0] mem_io_dmem_request_bits_operation; // @[top.scala 15:20]
  wire  mem_io_dmem_response_valid; // @[top.scala 15:20]
  wire [31:0] mem_io_dmem_response_bits_data; // @[top.scala 15:20]
  wire [31:0] imem_io_pipeline_address; // @[top.scala 17:20]
  wire [31:0] imem_io_pipeline_instruction; // @[top.scala 17:20]
  wire [31:0] imem_io_bus_request_bits_address; // @[top.scala 17:20]
  wire [31:0] imem_io_bus_response_bits_data; // @[top.scala 17:20]
  wire  dmem_clock; // @[top.scala 18:20]
  wire  dmem_reset; // @[top.scala 18:20]
  wire [31:0] dmem_io_pipeline_address; // @[top.scala 18:20]
  wire  dmem_io_pipeline_valid; // @[top.scala 18:20]
  wire [31:0] dmem_io_pipeline_writedata; // @[top.scala 18:20]
  wire  dmem_io_pipeline_memread; // @[top.scala 18:20]
  wire  dmem_io_pipeline_memwrite; // @[top.scala 18:20]
  wire [1:0] dmem_io_pipeline_maskmode; // @[top.scala 18:20]
  wire  dmem_io_pipeline_sext; // @[top.scala 18:20]
  wire [31:0] dmem_io_pipeline_readdata; // @[top.scala 18:20]
  wire  dmem_io_bus_request_valid; // @[top.scala 18:20]
  wire [31:0] dmem_io_bus_request_bits_address; // @[top.scala 18:20]
  wire [31:0] dmem_io_bus_request_bits_writedata; // @[top.scala 18:20]
  wire [1:0] dmem_io_bus_request_bits_operation; // @[top.scala 18:20]
  wire  dmem_io_bus_response_valid; // @[top.scala 18:20]
  wire [31:0] dmem_io_bus_response_bits_data; // @[top.scala 18:20]
  SingleCycleCPU cpu ( // @[top.scala 14:20]
    .clock(cpu_clock),
    .reset(cpu_reset),
    .io_imem_address(cpu_io_imem_address),
    .io_imem_instruction(cpu_io_imem_instruction),
    .io_dmem_address(cpu_io_dmem_address),
    .io_dmem_valid(cpu_io_dmem_valid),
    .io_dmem_writedata(cpu_io_dmem_writedata),
    .io_dmem_memread(cpu_io_dmem_memread),
    .io_dmem_memwrite(cpu_io_dmem_memwrite),
    .io_dmem_maskmode(cpu_io_dmem_maskmode),
    .io_dmem_sext(cpu_io_dmem_sext),
    .io_dmem_readdata(cpu_io_dmem_readdata)
  );
  DualPortedCombinMemory mem ( // @[top.scala 15:20]
    .clock(mem_clock),
    .reset(mem_reset),
    .io_imem_request_bits_address(mem_io_imem_request_bits_address),
    .io_imem_response_bits_data(mem_io_imem_response_bits_data),
    .io_dmem_request_valid(mem_io_dmem_request_valid),
    .io_dmem_request_bits_address(mem_io_dmem_request_bits_address),
    .io_dmem_request_bits_writedata(mem_io_dmem_request_bits_writedata),
    .io_dmem_request_bits_operation(mem_io_dmem_request_bits_operation),
    .io_dmem_response_valid(mem_io_dmem_response_valid),
    .io_dmem_response_bits_data(mem_io_dmem_response_bits_data)
  );
  ICombinMemPort imem ( // @[top.scala 17:20]
    .io_pipeline_address(imem_io_pipeline_address),
    .io_pipeline_instruction(imem_io_pipeline_instruction),
    .io_bus_request_bits_address(imem_io_bus_request_bits_address),
    .io_bus_response_bits_data(imem_io_bus_response_bits_data)
  );
  DCombinMemPort dmem ( // @[top.scala 18:20]
    .clock(dmem_clock),
    .reset(dmem_reset),
    .io_pipeline_address(dmem_io_pipeline_address),
    .io_pipeline_valid(dmem_io_pipeline_valid),
    .io_pipeline_writedata(dmem_io_pipeline_writedata),
    .io_pipeline_memread(dmem_io_pipeline_memread),
    .io_pipeline_memwrite(dmem_io_pipeline_memwrite),
    .io_pipeline_maskmode(dmem_io_pipeline_maskmode),
    .io_pipeline_sext(dmem_io_pipeline_sext),
    .io_pipeline_readdata(dmem_io_pipeline_readdata),
    .io_bus_request_valid(dmem_io_bus_request_valid),
    .io_bus_request_bits_address(dmem_io_bus_request_bits_address),
    .io_bus_request_bits_writedata(dmem_io_bus_request_bits_writedata),
    .io_bus_request_bits_operation(dmem_io_bus_request_bits_operation),
    .io_bus_response_valid(dmem_io_bus_response_valid),
    .io_bus_response_bits_data(dmem_io_bus_response_bits_data)
  );
  assign io_success = 1'h0;
  assign cpu_clock = clock;
  assign cpu_reset = reset;
  assign cpu_io_imem_instruction = imem_io_pipeline_instruction; // @[top.scala 21:15]
  assign cpu_io_dmem_readdata = dmem_io_pipeline_readdata; // @[top.scala 22:15]
  assign mem_clock = clock;
  assign mem_reset = reset;
  assign mem_io_imem_request_bits_address = imem_io_bus_request_bits_address; // @[base-memory-components.scala 16:26]
  assign mem_io_dmem_request_valid = dmem_io_bus_request_valid; // @[base-memory-components.scala 19:26]
  assign mem_io_dmem_request_bits_address = dmem_io_bus_request_bits_address; // @[base-memory-components.scala 19:26]
  assign mem_io_dmem_request_bits_writedata = dmem_io_bus_request_bits_writedata; // @[base-memory-components.scala 19:26]
  assign mem_io_dmem_request_bits_operation = dmem_io_bus_request_bits_operation; // @[base-memory-components.scala 19:26]
  assign imem_io_pipeline_address = cpu_io_imem_address; // @[top.scala 21:15]
  assign imem_io_bus_response_bits_data = mem_io_imem_response_bits_data; // @[base-memory-components.scala 17:26]
  assign dmem_clock = clock;
  assign dmem_reset = reset;
  assign dmem_io_pipeline_address = cpu_io_dmem_address; // @[top.scala 22:15]
  assign dmem_io_pipeline_valid = cpu_io_dmem_valid; // @[top.scala 22:15]
  assign dmem_io_pipeline_writedata = cpu_io_dmem_writedata; // @[top.scala 22:15]
  assign dmem_io_pipeline_memread = cpu_io_dmem_memread; // @[top.scala 22:15]
  assign dmem_io_pipeline_memwrite = cpu_io_dmem_memwrite; // @[top.scala 22:15]
  assign dmem_io_pipeline_maskmode = cpu_io_dmem_maskmode; // @[top.scala 22:15]
  assign dmem_io_pipeline_sext = cpu_io_dmem_sext; // @[top.scala 22:15]
  assign dmem_io_bus_response_valid = mem_io_dmem_response_valid; // @[base-memory-components.scala 20:26]
  assign dmem_io_bus_response_bits_data = mem_io_dmem_response_bits_data; // @[base-memory-components.scala 20:26]
endmodule
