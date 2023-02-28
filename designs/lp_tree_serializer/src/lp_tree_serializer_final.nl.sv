// This is the unpowered netlist.
module lp_tree_serializer (CLK,
    RESET,
    SERIAL_OUT,
    PAR_IN);
 input CLK;
 input RESET;
 output SERIAL_OUT;
 input [15:0] PAR_IN;

 wire \S0.CLK ;
 wire \S0.RESET ;
 wire \S0.SERIAL_OUT ;
 wire \S0.clk_gen[1].clk_gen[0].clks.clk0_o ;
 wire \S0.clk_gen[1].clk_gen[0].clks.clk90_o ;
 wire \S0.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ;
 wire \S0.clk_gen[1].clk_gen[0].clks.hold_rsts[1] ;
 wire \S0.clk_gen[1].clk_gen[0].clks.hold_rsts[2] ;
 wire \S0.clk_gen[2].clk_gen[0].clks.clk0_o ;
 wire \S0.clk_gen[2].clk_gen[0].clks.clk90_o ;
 wire \S0.clk_gen[2].clk_gen[0].clks.rst0_o ;
 wire \S0.clk_gen[2].clk_gen[1].clks.clk0_o ;
 wire \S0.clk_gen[2].clk_gen[1].clks.clk90_o ;
 wire \S0.clk_gen[2].clk_gen[1].clks.rst0_o ;
 wire \S0.stage_gen[1].mux_gen[0].S.PAR_IN1 ;
 wire \S0.stage_gen[1].mux_gen[0].S.PAR_IN2 ;
 wire \S0.stage_gen[1].mux_gen[1].S.PAR_IN1 ;
 wire \S0.stage_gen[1].mux_gen[1].S.PAR_IN2 ;
 wire \S0.stage_gen[1].mux_gen[2].S.PAR_IN1 ;
 wire \S0.stage_gen[1].mux_gen[3].S.PAR_IN1 ;
 wire \S1.CLK ;
 wire \S1.RESET ;
 wire \S1.SERIAL_OUT ;
 wire \S1.clk_gen[1].clk_gen[0].clks.clk0_o ;
 wire \S1.clk_gen[1].clk_gen[0].clks.clk90_o ;
 wire \S1.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ;
 wire \S1.clk_gen[1].clk_gen[0].clks.hold_rsts[1] ;
 wire \S1.clk_gen[1].clk_gen[0].clks.hold_rsts[2] ;
 wire \S1.clk_gen[2].clk_gen[0].clks.clk0_o ;
 wire \S1.clk_gen[2].clk_gen[0].clks.clk90_o ;
 wire \S1.clk_gen[2].clk_gen[0].clks.rst0_o ;
 wire \S1.clk_gen[2].clk_gen[1].clks.clk0_o ;
 wire \S1.clk_gen[2].clk_gen[1].clks.clk90_o ;
 wire \S1.clk_gen[2].clk_gen[1].clks.rst0_o ;
 wire \S1.stage_gen[1].mux_gen[0].S.PAR_IN1 ;
 wire \S1.stage_gen[1].mux_gen[0].S.PAR_IN2 ;
 wire \S1.stage_gen[1].mux_gen[1].S.PAR_IN1 ;
 wire \S1.stage_gen[1].mux_gen[2].S.PAR_IN1 ;
 wire \S1.stage_gen[1].mux_gen[3].S.PAR_IN1 ;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire \clkdiv0.hold_rsts[1] ;
 wire clknet_0_CLK;
 wire clknet_1_0__leaf_CLK;
 wire clknet_1_1__leaf_CLK;
 wire \last_stage.PAR_IN1 ;
 wire \last_stage.PAR_IN2 ;
 wire \last_stage_inputs[0] ;
 wire \last_stage_inputs[1] ;
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__decap_4 FILLER_0_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_64 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_76 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_90 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_112 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_53 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_83 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_91 ();
 sky130_ef_sc_hd__decap_12 FILLER_10_96 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_26 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_34 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_42 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_68 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_112 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_47 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_106 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_32 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_40 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_13_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_13_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_8 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_88 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_26 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_56 ();
 sky130_ef_sc_hd__decap_12 FILLER_14_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_76 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_92 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_98 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_107 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_32 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_7 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_112 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_78 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_10 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_102 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_106 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_38 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_54 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_76 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_80 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_96 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_105 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_77 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_8 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_90 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_12 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_75 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_91 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_12 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_36 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_62 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_90 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_43 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_62 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_79 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_8 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_26 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_35 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_77 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_93 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_12 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_43 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_105 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_112 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_17 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_26 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_35 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_42 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_49 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_107 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_31 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_112 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_35 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_17 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_26 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_34 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_89 ();
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 ();
 sky130_fd_sc_hd__nand2_1 _070_ (.A(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ),
    .B(\S1.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .Y(_020_));
 sky130_fd_sc_hd__nand2_1 _071_ (.A(\S1.clk_gen[2].clk_gen[0].clks.rst0_o ),
    .B(\S1.clk_gen[2].clk_gen[0].clks.clk90_o ),
    .Y(_018_));
 sky130_fd_sc_hd__inv_2 _072_ (.A(\S1.clk_gen[2].clk_gen[1].clks.clk90_o ),
    .Y(_049_));
 sky130_fd_sc_hd__and2_1 _073_ (.A(_049_),
    .B(\S1.clk_gen[2].clk_gen[1].clks.rst0_o ),
    .X(_050_));
 sky130_fd_sc_hd__clkbuf_1 _074_ (.A(_050_),
    .X(_016_));
 sky130_fd_sc_hd__nand2_1 _075_ (.A(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ),
    .B(\S0.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .Y(_013_));
 sky130_fd_sc_hd__nand2_1 _076_ (.A(\S0.clk_gen[2].clk_gen[0].clks.rst0_o ),
    .B(\S0.clk_gen[2].clk_gen[0].clks.clk90_o ),
    .Y(_012_));
 sky130_fd_sc_hd__inv_2 _077_ (.A(\S0.clk_gen[2].clk_gen[1].clks.clk90_o ),
    .Y(_051_));
 sky130_fd_sc_hd__and2_1 _078_ (.A(_051_),
    .B(\S0.clk_gen[2].clk_gen[1].clks.rst0_o ),
    .X(_052_));
 sky130_fd_sc_hd__clkbuf_1 _079_ (.A(_052_),
    .X(_010_));
 sky130_fd_sc_hd__nand2_1 _080_ (.A(\S0.RESET ),
    .B(\S1.CLK ),
    .Y(_007_));
 sky130_fd_sc_hd__inv_2 _081_ (.A(net12),
    .Y(_053_));
 sky130_fd_sc_hd__inv_2 _082_ (.A(\S0.clk_gen[2].clk_gen[1].clks.clk0_o ),
    .Y(_054_));
 sky130_fd_sc_hd__nand2_1 _083_ (.A(_053_),
    .B(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__inv_2 _084_ (.A(\S0.stage_gen[1].mux_gen[2].S.PAR_IN1 ),
    .Y(_056_));
 sky130_fd_sc_hd__nand2_1 _085_ (.A(_056_),
    .B(\S0.clk_gen[2].clk_gen[1].clks.clk0_o ),
    .Y(_057_));
 sky130_fd_sc_hd__nand3_1 _086_ (.A(_055_),
    .B(_057_),
    .C(\S0.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .Y(_058_));
 sky130_fd_sc_hd__inv_2 _087_ (.A(net14),
    .Y(_059_));
 sky130_fd_sc_hd__nand2_1 _088_ (.A(_059_),
    .B(_051_),
    .Y(_060_));
 sky130_fd_sc_hd__inv_2 _089_ (.A(\S0.stage_gen[1].mux_gen[3].S.PAR_IN1 ),
    .Y(_061_));
 sky130_fd_sc_hd__nand2_1 _090_ (.A(_061_),
    .B(\S0.clk_gen[2].clk_gen[1].clks.clk90_o ),
    .Y(_062_));
 sky130_fd_sc_hd__clkinv_4 _091_ (.A(\S0.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .Y(_001_));
 sky130_fd_sc_hd__nand3_1 _092_ (.A(_060_),
    .B(_062_),
    .C(_001_),
    .Y(_063_));
 sky130_fd_sc_hd__nand2_1 _093_ (.A(_058_),
    .B(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__inv_2 _094_ (.A(\S0.CLK ),
    .Y(_003_));
 sky130_fd_sc_hd__nand2_1 _095_ (.A(_064_),
    .B(_003_),
    .Y(_065_));
 sky130_fd_sc_hd__nand2b_1 _096_ (.A_N(\S0.clk_gen[2].clk_gen[0].clks.clk90_o ),
    .B(\S0.stage_gen[1].mux_gen[1].S.PAR_IN2 ),
    .Y(_066_));
 sky130_fd_sc_hd__inv_2 _097_ (.A(\S0.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .Y(_002_));
 sky130_fd_sc_hd__nand2_1 _098_ (.A(\S0.stage_gen[1].mux_gen[1].S.PAR_IN1 ),
    .B(\S0.clk_gen[2].clk_gen[0].clks.clk90_o ),
    .Y(_067_));
 sky130_fd_sc_hd__nand3_1 _099_ (.A(_066_),
    .B(_002_),
    .C(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__inv_2 _100_ (.A(\S0.clk_gen[2].clk_gen[0].clks.clk0_o ),
    .Y(_069_));
 sky130_fd_sc_hd__nand2_1 _101_ (.A(_069_),
    .B(\S0.stage_gen[1].mux_gen[0].S.PAR_IN2 ),
    .Y(_021_));
 sky130_fd_sc_hd__nand2_1 _102_ (.A(\S0.stage_gen[1].mux_gen[0].S.PAR_IN1 ),
    .B(\S0.clk_gen[2].clk_gen[0].clks.clk0_o ),
    .Y(_022_));
 sky130_fd_sc_hd__nand3_1 _103_ (.A(_021_),
    .B(\S0.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .C(_022_),
    .Y(_023_));
 sky130_fd_sc_hd__nand3_1 _104_ (.A(_068_),
    .B(_023_),
    .C(\S0.CLK ),
    .Y(_024_));
 sky130_fd_sc_hd__nand2_1 _105_ (.A(_065_),
    .B(_024_),
    .Y(\S0.SERIAL_OUT ));
 sky130_fd_sc_hd__inv_2 _106_ (.A(net5),
    .Y(_025_));
 sky130_fd_sc_hd__inv_2 _107_ (.A(\S1.clk_gen[2].clk_gen[1].clks.clk0_o ),
    .Y(_026_));
 sky130_fd_sc_hd__nand2_1 _108_ (.A(_025_),
    .B(_026_),
    .Y(_027_));
 sky130_fd_sc_hd__inv_2 _109_ (.A(\S1.stage_gen[1].mux_gen[2].S.PAR_IN1 ),
    .Y(_028_));
 sky130_fd_sc_hd__nand2_1 _110_ (.A(_028_),
    .B(\S1.clk_gen[2].clk_gen[1].clks.clk0_o ),
    .Y(_029_));
 sky130_fd_sc_hd__nand3_1 _111_ (.A(_027_),
    .B(_029_),
    .C(\S1.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .Y(_030_));
 sky130_fd_sc_hd__inv_2 _112_ (.A(net7),
    .Y(_031_));
 sky130_fd_sc_hd__nand2_1 _113_ (.A(_031_),
    .B(_049_),
    .Y(_032_));
 sky130_fd_sc_hd__inv_2 _114_ (.A(\S1.stage_gen[1].mux_gen[3].S.PAR_IN1 ),
    .Y(_033_));
 sky130_fd_sc_hd__nand2_1 _115_ (.A(_033_),
    .B(\S1.clk_gen[2].clk_gen[1].clks.clk90_o ),
    .Y(_034_));
 sky130_fd_sc_hd__clkinv_4 _116_ (.A(\S1.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .Y(_004_));
 sky130_fd_sc_hd__nand3_1 _117_ (.A(_032_),
    .B(_034_),
    .C(_004_),
    .Y(_035_));
 sky130_fd_sc_hd__nand2_1 _118_ (.A(_030_),
    .B(_035_),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _119_ (.A(\S1.CLK ),
    .Y(_006_));
 sky130_fd_sc_hd__nand2_1 _120_ (.A(_036_),
    .B(_006_),
    .Y(_037_));
 sky130_fd_sc_hd__nand2b_1 _121_ (.A_N(\S1.clk_gen[2].clk_gen[0].clks.clk90_o ),
    .B(net3),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _122_ (.A(\S1.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .Y(_005_));
 sky130_fd_sc_hd__nand2_1 _123_ (.A(\S1.stage_gen[1].mux_gen[1].S.PAR_IN1 ),
    .B(\S1.clk_gen[2].clk_gen[0].clks.clk90_o ),
    .Y(_039_));
 sky130_fd_sc_hd__nand3_1 _124_ (.A(_038_),
    .B(_005_),
    .C(_039_),
    .Y(_040_));
 sky130_fd_sc_hd__inv_2 _125_ (.A(\S1.clk_gen[2].clk_gen[0].clks.clk0_o ),
    .Y(_041_));
 sky130_fd_sc_hd__nand2_1 _126_ (.A(_041_),
    .B(\S1.stage_gen[1].mux_gen[0].S.PAR_IN2 ),
    .Y(_042_));
 sky130_fd_sc_hd__nand2_1 _127_ (.A(\S1.stage_gen[1].mux_gen[0].S.PAR_IN1 ),
    .B(\S1.clk_gen[2].clk_gen[0].clks.clk0_o ),
    .Y(_043_));
 sky130_fd_sc_hd__nand3_1 _128_ (.A(_042_),
    .B(\S1.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .C(_043_),
    .Y(_044_));
 sky130_fd_sc_hd__nand3_1 _129_ (.A(_040_),
    .B(_044_),
    .C(\S1.CLK ),
    .Y(_045_));
 sky130_fd_sc_hd__nand2_1 _130_ (.A(_037_),
    .B(_045_),
    .Y(\S1.SERIAL_OUT ));
 sky130_fd_sc_hd__mux2_4 _131_ (.A0(\last_stage.PAR_IN2 ),
    .A1(\last_stage.PAR_IN1 ),
    .S(clknet_1_1__leaf_CLK),
    .X(_046_));
 sky130_fd_sc_hd__buf_6 _132_ (.A(_046_),
    .X(net18));
 sky130_fd_sc_hd__inv_2 _133__1 (.A(clknet_1_0__leaf_CLK),
    .Y(net19));
 sky130_fd_sc_hd__and2_1 _134_ (.A(_026_),
    .B(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[2] ),
    .X(_047_));
 sky130_fd_sc_hd__clkbuf_1 _135_ (.A(_047_),
    .X(_008_));
 sky130_fd_sc_hd__nand2_1 _136_ (.A(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ),
    .B(\S0.clk_gen[2].clk_gen[0].clks.clk0_o ),
    .Y(_009_));
 sky130_fd_sc_hd__nand2_1 _137_ (.A(\S0.RESET ),
    .B(\S0.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .Y(_011_));
 sky130_fd_sc_hd__nand2_1 _138_ (.A(\S0.CLK ),
    .B(net17),
    .Y(_014_));
 sky130_fd_sc_hd__nand2_1 _139_ (.A(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ),
    .B(\S1.clk_gen[2].clk_gen[0].clks.clk0_o ),
    .Y(_015_));
 sky130_fd_sc_hd__nand2_1 _140_ (.A(\S1.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .B(\S1.RESET ),
    .Y(_017_));
 sky130_fd_sc_hd__and2_1 _141_ (.A(_054_),
    .B(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[2] ),
    .X(_048_));
 sky130_fd_sc_hd__clkbuf_1 _142_ (.A(_048_),
    .X(_019_));
 sky130_fd_sc_hd__dlxtp_1 _143_ (.D(\S0.SERIAL_OUT ),
    .GATE(clknet_1_0__leaf_CLK),
    .Q(\last_stage_inputs[0] ));
 sky130_fd_sc_hd__dlxtn_1 _144_ (.D(\S1.SERIAL_OUT ),
    .GATE_N(clknet_1_1__leaf_CLK),
    .Q(\last_stage_inputs[1] ));
 sky130_fd_sc_hd__dlxtn_1 _145_ (.D(\last_stage_inputs[0] ),
    .GATE_N(clknet_1_1__leaf_CLK),
    .Q(\last_stage.PAR_IN1 ));
 sky130_fd_sc_hd__dlxtp_1 _146_ (.D(net20),
    .GATE(clknet_1_1__leaf_CLK),
    .Q(\last_stage.PAR_IN2 ));
 sky130_fd_sc_hd__dlxtn_1 _147_ (.D(net8),
    .GATE_N(clknet_1_0__leaf_CLK),
    .Q(\S0.stage_gen[1].mux_gen[0].S.PAR_IN2 ));
 sky130_fd_sc_hd__dlxtn_1 _148_ (.D(net10),
    .GATE_N(clknet_1_0__leaf_CLK),
    .Q(\S0.stage_gen[1].mux_gen[1].S.PAR_IN2 ));
 sky130_fd_sc_hd__dlxtn_1 _149_ (.D(net11),
    .GATE_N(clknet_1_0__leaf_CLK),
    .Q(\S0.stage_gen[1].mux_gen[2].S.PAR_IN1 ));
 sky130_fd_sc_hd__dlxtn_1 _150_ (.D(net13),
    .GATE_N(clknet_1_0__leaf_CLK),
    .Q(\S0.stage_gen[1].mux_gen[3].S.PAR_IN1 ));
 sky130_fd_sc_hd__dlxtn_1 _151_ (.D(net16),
    .GATE_N(clknet_1_0__leaf_CLK),
    .Q(\S1.stage_gen[1].mux_gen[0].S.PAR_IN2 ));
 sky130_fd_sc_hd__dlxtn_1 _152_ (.D(net2),
    .GATE_N(clknet_1_1__leaf_CLK),
    .Q(\S1.stage_gen[1].mux_gen[1].S.PAR_IN1 ));
 sky130_fd_sc_hd__dlxtn_1 _153_ (.D(net4),
    .GATE_N(clknet_1_1__leaf_CLK),
    .Q(\S1.stage_gen[1].mux_gen[2].S.PAR_IN1 ));
 sky130_fd_sc_hd__dlxtn_1 _154_ (.D(net6),
    .GATE_N(clknet_1_1__leaf_CLK),
    .Q(\S1.stage_gen[1].mux_gen[3].S.PAR_IN1 ));
 sky130_fd_sc_hd__dfxtp_1 _155_ (.CLK(clknet_1_1__leaf_CLK),
    .D(net1),
    .Q(\S0.stage_gen[1].mux_gen[0].S.PAR_IN1 ));
 sky130_fd_sc_hd__dfxtp_1 _156_ (.CLK(clknet_1_0__leaf_CLK),
    .D(net9),
    .Q(\S0.stage_gen[1].mux_gen[1].S.PAR_IN1 ));
 sky130_fd_sc_hd__dfxtp_1 _157_ (.CLK(clknet_1_0__leaf_CLK),
    .D(net15),
    .Q(\S1.stage_gen[1].mux_gen[0].S.PAR_IN1 ));
 sky130_fd_sc_hd__dfxtp_1 _158_ (.CLK(clknet_1_0__leaf_CLK),
    .D(net17),
    .Q(\S0.RESET ));
 sky130_fd_sc_hd__dfxtp_1 _159_ (.CLK(clknet_1_0__leaf_CLK),
    .D(\S0.RESET ),
    .Q(\clkdiv0.hold_rsts[1] ));
 sky130_fd_sc_hd__dfxtp_1 _160_ (.CLK(clknet_1_0__leaf_CLK),
    .D(net21),
    .Q(\S1.RESET ));
 sky130_fd_sc_hd__dfxtp_1 _161_ (.CLK(net19),
    .D(_007_),
    .Q(\S1.CLK ));
 sky130_fd_sc_hd__dfxtp_1 _162_ (.CLK(\S1.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .D(_008_),
    .Q(\S1.clk_gen[2].clk_gen[1].clks.clk0_o ));
 sky130_fd_sc_hd__dfxtp_1 _163_ (.CLK(\S0.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .D(_009_),
    .Q(\S0.clk_gen[2].clk_gen[0].clks.clk0_o ));
 sky130_fd_sc_hd__dfxtp_1 _164_ (.CLK(_001_),
    .D(_010_),
    .Q(\S0.clk_gen[2].clk_gen[1].clks.clk90_o ));
 sky130_fd_sc_hd__dfxtp_1 _165_ (.CLK(\S0.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .D(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[2] ),
    .Q(\S0.clk_gen[2].clk_gen[1].clks.rst0_o ));
 sky130_fd_sc_hd__dfxtp_1 _166_ (.CLK(\S0.CLK ),
    .D(_011_),
    .Q(\S0.clk_gen[1].clk_gen[0].clks.clk0_o ));
 sky130_fd_sc_hd__dfxtp_1 _167_ (.CLK(_002_),
    .D(_012_),
    .Q(\S0.clk_gen[2].clk_gen[0].clks.clk90_o ));
 sky130_fd_sc_hd__dfxtp_1 _168_ (.CLK(\S0.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .D(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ),
    .Q(\S0.clk_gen[2].clk_gen[0].clks.rst0_o ));
 sky130_fd_sc_hd__dfxtp_1 _169_ (.CLK(_003_),
    .D(_013_),
    .Q(\S0.clk_gen[1].clk_gen[0].clks.clk90_o ));
 sky130_fd_sc_hd__dfxtp_1 _170_ (.CLK(\S0.CLK ),
    .D(\S0.RESET ),
    .Q(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ));
 sky130_fd_sc_hd__dfxtp_1 _171_ (.CLK(\S0.CLK ),
    .D(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ),
    .Q(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[1] ));
 sky130_fd_sc_hd__dfxtp_1 _172_ (.CLK(\S0.CLK ),
    .D(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[1] ),
    .Q(\S0.clk_gen[1].clk_gen[0].clks.hold_rsts[2] ));
 sky130_fd_sc_hd__dfxtp_1 _173_ (.CLK(clknet_1_0__leaf_CLK),
    .D(_014_),
    .Q(\S0.CLK ));
 sky130_fd_sc_hd__dfxtp_1 _174_ (.CLK(\S1.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .D(_015_),
    .Q(\S1.clk_gen[2].clk_gen[0].clks.clk0_o ));
 sky130_fd_sc_hd__dfxtp_1 _175_ (.CLK(_004_),
    .D(_016_),
    .Q(\S1.clk_gen[2].clk_gen[1].clks.clk90_o ));
 sky130_fd_sc_hd__dfxtp_1 _176_ (.CLK(\S1.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .D(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[2] ),
    .Q(\S1.clk_gen[2].clk_gen[1].clks.rst0_o ));
 sky130_fd_sc_hd__dfxtp_1 _177_ (.CLK(\S1.CLK ),
    .D(_017_),
    .Q(\S1.clk_gen[1].clk_gen[0].clks.clk0_o ));
 sky130_fd_sc_hd__dfxtp_1 _178_ (.CLK(_005_),
    .D(_018_),
    .Q(\S1.clk_gen[2].clk_gen[0].clks.clk90_o ));
 sky130_fd_sc_hd__dfxtp_1 _179_ (.CLK(\S1.clk_gen[1].clk_gen[0].clks.clk0_o ),
    .D(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ),
    .Q(\S1.clk_gen[2].clk_gen[0].clks.rst0_o ));
 sky130_fd_sc_hd__dfxtp_1 _180_ (.CLK(\S0.clk_gen[1].clk_gen[0].clks.clk90_o ),
    .D(_019_),
    .Q(\S0.clk_gen[2].clk_gen[1].clks.clk0_o ));
 sky130_fd_sc_hd__dfxtp_1 _181_ (.CLK(_006_),
    .D(_020_),
    .Q(\S1.clk_gen[1].clk_gen[0].clks.clk90_o ));
 sky130_fd_sc_hd__dfxtp_1 _182_ (.CLK(\S1.CLK ),
    .D(\S1.RESET ),
    .Q(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ));
 sky130_fd_sc_hd__dfxtp_1 _183_ (.CLK(\S1.CLK ),
    .D(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[0] ),
    .Q(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[1] ));
 sky130_fd_sc_hd__dfxtp_1 _184_ (.CLK(\S1.CLK ),
    .D(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[1] ),
    .Q(\S1.clk_gen[1].clk_gen[0].clks.hold_rsts[2] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_CLK (.A(CLK),
    .X(clknet_0_CLK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_CLK (.A(clknet_0_CLK),
    .X(clknet_1_0__leaf_CLK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_CLK (.A(clknet_0_CLK),
    .X(clknet_1_1__leaf_CLK));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\last_stage_inputs[1] ),
    .X(net20));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\clkdiv0.hold_rsts[1] ),
    .X(net21));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(PAR_IN[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(PAR_IN[3]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(PAR_IN[4]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(PAR_IN[5]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(PAR_IN[6]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(PAR_IN[7]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(PAR_IN[8]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(PAR_IN[9]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(RESET),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(PAR_IN[10]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(PAR_IN[11]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(PAR_IN[12]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(PAR_IN[13]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(PAR_IN[14]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(PAR_IN[15]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(PAR_IN[1]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(PAR_IN[2]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 output18 (.A(net18),
    .X(SERIAL_OUT));
endmodule

