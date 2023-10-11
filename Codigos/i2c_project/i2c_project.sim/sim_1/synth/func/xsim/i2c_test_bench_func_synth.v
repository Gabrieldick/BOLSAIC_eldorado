// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Oct 10 23:51:26 2023
// Host        : Notebook-GMD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/BOLSAIC_eldorado/Codigos/i2c_project/i2c_project.sim/sim_1/synth/func/xsim/i2c_test_bench_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvf1517-1LV-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SSEG
   (_7LED_OBUF,
    anode_OBUF,
    Q,
    clk_IBUF_BUFG,
    \refresh_reg[0]_0 );
  output [6:0]_7LED_OBUF;
  output [4:0]anode_OBUF;
  input [12:0]Q;
  input clk_IBUF_BUFG;
  input \refresh_reg[0]_0 ;

  wire [12:0]Q;
  wire [6:0]_7LED_OBUF;
  wire \_7LED_OBUF[7]_inst_i_2_n_0 ;
  wire \_7LED_OBUF[7]_inst_i_3_n_0 ;
  wire \_7LED_OBUF[7]_inst_i_4_n_0 ;
  wire \_7LED_OBUF[7]_inst_i_5_n_0 ;
  wire \_7LED_OBUF[7]_inst_i_6_n_0 ;
  wire \_7LED_OBUF[7]_inst_i_7_n_0 ;
  wire \_7LED_OBUF[7]_inst_i_8_n_0 ;
  wire \_7LED_OBUF[7]_inst_i_9_n_0 ;
  wire [4:0]anode_OBUF;
  wire clk_IBUF_BUFG;
  wire [3:3]enable;
  wire [3:0]hex0;
  wire [3:0]hex1;
  wire [3:0]hex2;
  wire [3:2]hex3;
  wire [3:3]hex4;
  wire \refresh[0]_i_2_n_0 ;
  wire \refresh_reg[0]_0 ;
  wire \refresh_reg[0]_i_1_n_0 ;
  wire \refresh_reg[0]_i_1_n_1 ;
  wire \refresh_reg[0]_i_1_n_10 ;
  wire \refresh_reg[0]_i_1_n_11 ;
  wire \refresh_reg[0]_i_1_n_12 ;
  wire \refresh_reg[0]_i_1_n_13 ;
  wire \refresh_reg[0]_i_1_n_14 ;
  wire \refresh_reg[0]_i_1_n_15 ;
  wire \refresh_reg[0]_i_1_n_2 ;
  wire \refresh_reg[0]_i_1_n_3 ;
  wire \refresh_reg[0]_i_1_n_4 ;
  wire \refresh_reg[0]_i_1_n_5 ;
  wire \refresh_reg[0]_i_1_n_6 ;
  wire \refresh_reg[0]_i_1_n_7 ;
  wire \refresh_reg[0]_i_1_n_8 ;
  wire \refresh_reg[0]_i_1_n_9 ;
  wire \refresh_reg[16]_i_1_n_12 ;
  wire \refresh_reg[16]_i_1_n_13 ;
  wire \refresh_reg[16]_i_1_n_14 ;
  wire \refresh_reg[16]_i_1_n_15 ;
  wire \refresh_reg[16]_i_1_n_5 ;
  wire \refresh_reg[16]_i_1_n_6 ;
  wire \refresh_reg[16]_i_1_n_7 ;
  wire \refresh_reg[8]_i_1_n_0 ;
  wire \refresh_reg[8]_i_1_n_1 ;
  wire \refresh_reg[8]_i_1_n_10 ;
  wire \refresh_reg[8]_i_1_n_11 ;
  wire \refresh_reg[8]_i_1_n_12 ;
  wire \refresh_reg[8]_i_1_n_13 ;
  wire \refresh_reg[8]_i_1_n_14 ;
  wire \refresh_reg[8]_i_1_n_15 ;
  wire \refresh_reg[8]_i_1_n_2 ;
  wire \refresh_reg[8]_i_1_n_3 ;
  wire \refresh_reg[8]_i_1_n_4 ;
  wire \refresh_reg[8]_i_1_n_5 ;
  wire \refresh_reg[8]_i_1_n_6 ;
  wire \refresh_reg[8]_i_1_n_7 ;
  wire \refresh_reg[8]_i_1_n_8 ;
  wire \refresh_reg[8]_i_1_n_9 ;
  wire \refresh_reg_n_0_[0] ;
  wire \refresh_reg_n_0_[10] ;
  wire \refresh_reg_n_0_[11] ;
  wire \refresh_reg_n_0_[12] ;
  wire \refresh_reg_n_0_[13] ;
  wire \refresh_reg_n_0_[14] ;
  wire \refresh_reg_n_0_[15] ;
  wire \refresh_reg_n_0_[1] ;
  wire \refresh_reg_n_0_[2] ;
  wire \refresh_reg_n_0_[3] ;
  wire \refresh_reg_n_0_[4] ;
  wire \refresh_reg_n_0_[5] ;
  wire \refresh_reg_n_0_[6] ;
  wire \refresh_reg_n_0_[7] ;
  wire \refresh_reg_n_0_[8] ;
  wire \refresh_reg_n_0_[9] ;
  wire [2:0]sel0;
  wire [7:3]\NLW_refresh_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_refresh_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4121)) 
    \_7LED_OBUF[1]_inst_i_1 
       (.I0(\_7LED_OBUF[7]_inst_i_4_n_0 ),
        .I1(\_7LED_OBUF[7]_inst_i_2_n_0 ),
        .I2(\_7LED_OBUF[7]_inst_i_5_n_0 ),
        .I3(\_7LED_OBUF[7]_inst_i_3_n_0 ),
        .O(_7LED_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h480E)) 
    \_7LED_OBUF[2]_inst_i_1 
       (.I0(\_7LED_OBUF[7]_inst_i_2_n_0 ),
        .I1(\_7LED_OBUF[7]_inst_i_3_n_0 ),
        .I2(\_7LED_OBUF[7]_inst_i_4_n_0 ),
        .I3(\_7LED_OBUF[7]_inst_i_5_n_0 ),
        .O(_7LED_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5704)) 
    \_7LED_OBUF[3]_inst_i_1 
       (.I0(\_7LED_OBUF[7]_inst_i_4_n_0 ),
        .I1(\_7LED_OBUF[7]_inst_i_5_n_0 ),
        .I2(\_7LED_OBUF[7]_inst_i_2_n_0 ),
        .I3(\_7LED_OBUF[7]_inst_i_3_n_0 ),
        .O(_7LED_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \_7LED_OBUF[4]_inst_i_1 
       (.I0(\_7LED_OBUF[7]_inst_i_4_n_0 ),
        .I1(\_7LED_OBUF[7]_inst_i_3_n_0 ),
        .I2(\_7LED_OBUF[7]_inst_i_5_n_0 ),
        .I3(\_7LED_OBUF[7]_inst_i_2_n_0 ),
        .O(_7LED_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8098)) 
    \_7LED_OBUF[5]_inst_i_1 
       (.I0(\_7LED_OBUF[7]_inst_i_4_n_0 ),
        .I1(\_7LED_OBUF[7]_inst_i_5_n_0 ),
        .I2(\_7LED_OBUF[7]_inst_i_2_n_0 ),
        .I3(\_7LED_OBUF[7]_inst_i_3_n_0 ),
        .O(_7LED_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    \_7LED_OBUF[6]_inst_i_1 
       (.I0(\_7LED_OBUF[7]_inst_i_2_n_0 ),
        .I1(\_7LED_OBUF[7]_inst_i_5_n_0 ),
        .I2(\_7LED_OBUF[7]_inst_i_3_n_0 ),
        .I3(\_7LED_OBUF[7]_inst_i_4_n_0 ),
        .O(_7LED_OBUF[5]));
  LUT4 #(
    .INIT(16'h4184)) 
    \_7LED_OBUF[7]_inst_i_1 
       (.I0(\_7LED_OBUF[7]_inst_i_2_n_0 ),
        .I1(\_7LED_OBUF[7]_inst_i_3_n_0 ),
        .I2(\_7LED_OBUF[7]_inst_i_4_n_0 ),
        .I3(\_7LED_OBUF[7]_inst_i_5_n_0 ),
        .O(_7LED_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCCCAAF0CCCCF0F0)) 
    \_7LED_OBUF[7]_inst_i_2 
       (.I0(hex1[1]),
        .I1(hex0[1]),
        .I2(hex4),
        .I3(sel0[1]),
        .I4(\_7LED_OBUF[7]_inst_i_6_n_0 ),
        .I5(sel0[2]),
        .O(\_7LED_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEAAAAAAAEAAAA)) 
    \_7LED_OBUF[7]_inst_i_3 
       (.I0(\_7LED_OBUF[7]_inst_i_7_n_0 ),
        .I1(hex3[2]),
        .I2(sel0[2]),
        .I3(\_7LED_OBUF[7]_inst_i_6_n_0 ),
        .I4(sel0[1]),
        .I5(hex1[0]),
        .O(\_7LED_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEAAAAAAAEAAAA)) 
    \_7LED_OBUF[7]_inst_i_4 
       (.I0(\_7LED_OBUF[7]_inst_i_8_n_0 ),
        .I1(hex3[3]),
        .I2(sel0[2]),
        .I3(\_7LED_OBUF[7]_inst_i_6_n_0 ),
        .I4(sel0[1]),
        .I5(hex1[3]),
        .O(\_7LED_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAEAAAAAAAE)) 
    \_7LED_OBUF[7]_inst_i_5 
       (.I0(\_7LED_OBUF[7]_inst_i_9_n_0 ),
        .I1(hex4),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(enable),
        .I5(hex0[2]),
        .O(\_7LED_OBUF[7]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \_7LED_OBUF[7]_inst_i_6 
       (.I0(sel0[0]),
        .I1(enable),
        .O(\_7LED_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000E020E02)) 
    \_7LED_OBUF[7]_inst_i_7 
       (.I0(hex3[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(hex2[0]),
        .I4(hex0[0]),
        .I5(\_7LED_OBUF[7]_inst_i_6_n_0 ),
        .O(\_7LED_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000E020E02)) 
    \_7LED_OBUF[7]_inst_i_8 
       (.I0(hex4),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(hex2[3]),
        .I4(hex0[3]),
        .I5(\_7LED_OBUF[7]_inst_i_6_n_0 ),
        .O(\_7LED_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0008000C00080000)) 
    \_7LED_OBUF[7]_inst_i_9 
       (.I0(hex1[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(enable),
        .I4(sel0[2]),
        .I5(hex3[2]),
        .O(\_7LED_OBUF[7]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \anode_OBUF[0]_inst_i_1 
       (.I0(enable),
        .I1(sel0[0]),
        .O(anode_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \anode_OBUF[1]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(enable),
        .I3(sel0[2]),
        .O(anode_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \anode_OBUF[2]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(enable),
        .I3(sel0[2]),
        .O(anode_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \anode_OBUF[3]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(enable),
        .I3(sel0[2]),
        .O(anode_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \anode_OBUF[4]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(enable),
        .I3(sel0[2]),
        .O(anode_OBUF[4]));
  FDRE #(
    .INIT(1'b0)) 
    \hex0_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[0]),
        .Q(hex0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex0_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[1]),
        .Q(hex0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex0_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[2]),
        .Q(hex0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex0_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[3]),
        .Q(hex0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[4]),
        .Q(hex1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[5]),
        .Q(hex1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[6]),
        .Q(hex1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[7]),
        .Q(hex1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[8]),
        .Q(hex2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[9]),
        .Q(hex2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[10]),
        .Q(hex3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[11]),
        .Q(hex3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hex4_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[12]),
        .Q(hex4),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \refresh[0]_i_2 
       (.I0(\refresh_reg_n_0_[0] ),
        .O(\refresh[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[0]_i_1_n_15 ),
        .Q(\refresh_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \refresh_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\refresh_reg[0]_i_1_n_0 ,\refresh_reg[0]_i_1_n_1 ,\refresh_reg[0]_i_1_n_2 ,\refresh_reg[0]_i_1_n_3 ,\refresh_reg[0]_i_1_n_4 ,\refresh_reg[0]_i_1_n_5 ,\refresh_reg[0]_i_1_n_6 ,\refresh_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\refresh_reg[0]_i_1_n_8 ,\refresh_reg[0]_i_1_n_9 ,\refresh_reg[0]_i_1_n_10 ,\refresh_reg[0]_i_1_n_11 ,\refresh_reg[0]_i_1_n_12 ,\refresh_reg[0]_i_1_n_13 ,\refresh_reg[0]_i_1_n_14 ,\refresh_reg[0]_i_1_n_15 }),
        .S({\refresh_reg_n_0_[7] ,\refresh_reg_n_0_[6] ,\refresh_reg_n_0_[5] ,\refresh_reg_n_0_[4] ,\refresh_reg_n_0_[3] ,\refresh_reg_n_0_[2] ,\refresh_reg_n_0_[1] ,\refresh[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[8]_i_1_n_13 ),
        .Q(\refresh_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[8]_i_1_n_12 ),
        .Q(\refresh_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[8]_i_1_n_11 ),
        .Q(\refresh_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[8]_i_1_n_10 ),
        .Q(\refresh_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[8]_i_1_n_9 ),
        .Q(\refresh_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[8]_i_1_n_8 ),
        .Q(\refresh_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[16]_i_1_n_15 ),
        .Q(sel0[0]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \refresh_reg[16]_i_1 
       (.CI(\refresh_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_refresh_reg[16]_i_1_CO_UNCONNECTED [7:3],\refresh_reg[16]_i_1_n_5 ,\refresh_reg[16]_i_1_n_6 ,\refresh_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_refresh_reg[16]_i_1_O_UNCONNECTED [7:4],\refresh_reg[16]_i_1_n_12 ,\refresh_reg[16]_i_1_n_13 ,\refresh_reg[16]_i_1_n_14 ,\refresh_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,enable,sel0}));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[16]_i_1_n_14 ),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[16]_i_1_n_13 ),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[16]_i_1_n_12 ),
        .Q(enable));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[0]_i_1_n_14 ),
        .Q(\refresh_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[0]_i_1_n_13 ),
        .Q(\refresh_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[0]_i_1_n_12 ),
        .Q(\refresh_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[0]_i_1_n_11 ),
        .Q(\refresh_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[0]_i_1_n_10 ),
        .Q(\refresh_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[0]_i_1_n_9 ),
        .Q(\refresh_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[0]_i_1_n_8 ),
        .Q(\refresh_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[8]_i_1_n_15 ),
        .Q(\refresh_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \refresh_reg[8]_i_1 
       (.CI(\refresh_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\refresh_reg[8]_i_1_n_0 ,\refresh_reg[8]_i_1_n_1 ,\refresh_reg[8]_i_1_n_2 ,\refresh_reg[8]_i_1_n_3 ,\refresh_reg[8]_i_1_n_4 ,\refresh_reg[8]_i_1_n_5 ,\refresh_reg[8]_i_1_n_6 ,\refresh_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_reg[8]_i_1_n_8 ,\refresh_reg[8]_i_1_n_9 ,\refresh_reg[8]_i_1_n_10 ,\refresh_reg[8]_i_1_n_11 ,\refresh_reg[8]_i_1_n_12 ,\refresh_reg[8]_i_1_n_13 ,\refresh_reg[8]_i_1_n_14 ,\refresh_reg[8]_i_1_n_15 }),
        .S({\refresh_reg_n_0_[15] ,\refresh_reg_n_0_[14] ,\refresh_reg_n_0_[13] ,\refresh_reg_n_0_[12] ,\refresh_reg_n_0_[11] ,\refresh_reg_n_0_[10] ,\refresh_reg_n_0_[9] ,\refresh_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\refresh_reg[0]_0 ),
        .D(\refresh_reg[8]_i_1_n_14 ),
        .Q(\refresh_reg_n_0_[9] ));
endmodule

module i2c_master
   (rst,
    scl_OBUF,
    sda_OBUF,
    scl_TRI,
    E,
    D,
    \state_reg[0]_0 ,
    \state_reg[3]_0 ,
    \state_reg[0]_1 ,
    sda_IOBUF_inst_i_3_0,
    \data_out_reg[7]_0 ,
    clk_IBUF_BUFG,
    \byte_len_reg[1]_0 ,
    \sub_addr_reg[11]_0 ,
    i_data_write,
    \byte_len_reg[0]_0 ,
    rw_reg_0,
    slave_addr,
    Q,
    \state_reg[0]_2 ,
    \state_reg[0]_3 ,
    state,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    \state_reg[1]_2 ,
    \state_reg[1]_3 ,
    CO,
    request_transmit,
    en_cntr_reg,
    next_state,
    rst_IBUF,
    sda_IOBUF_inst_i_1,
    \sda_curr_reg[0]_0 );
  output rst;
  output scl_OBUF;
  output sda_OBUF;
  output scl_TRI;
  output [0:0]E;
  output [3:0]D;
  output [0:0]\state_reg[0]_0 ;
  output \state_reg[3]_0 ;
  output \state_reg[0]_1 ;
  output sda_IOBUF_inst_i_3_0;
  output [7:0]\data_out_reg[7]_0 ;
  input clk_IBUF_BUFG;
  input \byte_len_reg[1]_0 ;
  input \sub_addr_reg[11]_0 ;
  input [0:0]i_data_write;
  input \byte_len_reg[0]_0 ;
  input rw_reg_0;
  input slave_addr;
  input [3:0]Q;
  input \state_reg[0]_2 ;
  input \state_reg[0]_3 ;
  input [0:0]state;
  input \state_reg[1]_0 ;
  input \state_reg[1]_1 ;
  input \state_reg[1]_2 ;
  input \state_reg[1]_3 ;
  input [0:0]CO;
  input request_transmit;
  input en_cntr_reg;
  input next_state;
  input rst_IBUF;
  input sda_IOBUF_inst_i_1;
  input [0:0]\sda_curr_reg[0]_0 ;

  wire [0:0]CO;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire ack_in_prog_i_1_n_0;
  wire ack_in_prog_i_2_n_0;
  wire ack_in_prog_reg_n_0;
  wire ack_nack;
  wire ack_nack0_carry__0_i_1_n_0;
  wire ack_nack0_carry__0_i_2_n_0;
  wire ack_nack0_carry__0_i_3_n_0;
  wire ack_nack0_carry__0_n_5;
  wire ack_nack0_carry__0_n_6;
  wire ack_nack0_carry__0_n_7;
  wire ack_nack0_carry_i_1_n_0;
  wire ack_nack0_carry_i_2_n_0;
  wire ack_nack0_carry_i_3_n_0;
  wire ack_nack0_carry_i_4_n_0;
  wire ack_nack0_carry_i_5_n_0;
  wire ack_nack0_carry_i_6_n_0;
  wire ack_nack0_carry_i_7_n_0;
  wire ack_nack0_carry_i_8_n_0;
  wire ack_nack0_carry_n_0;
  wire ack_nack0_carry_n_1;
  wire ack_nack0_carry_n_2;
  wire ack_nack0_carry_n_3;
  wire ack_nack0_carry_n_4;
  wire ack_nack0_carry_n_5;
  wire ack_nack0_carry_n_6;
  wire ack_nack0_carry_n_7;
  wire ack_nack_reg_n_0;
  wire [7:7]addr;
  wire busy;
  wire busy__18;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire [1:0]byte_len;
  wire \byte_len[1]_i_1_n_0 ;
  wire \byte_len_reg[0]_0 ;
  wire \byte_len_reg[1]_0 ;
  wire byte_sent6_out;
  wire byte_sent_i_1_n_0;
  wire byte_sent_i_2_n_0;
  wire byte_sent_i_3_n_0;
  wire byte_sent_i_4_n_0;
  wire \byte_sr[0]_i_1_n_0 ;
  wire \byte_sr[1]_i_1_n_0 ;
  wire \byte_sr[1]_i_2_n_0 ;
  wire \byte_sr[2]_i_1_n_0 ;
  wire \byte_sr[3]_i_1_n_0 ;
  wire \byte_sr[4]_i_1_n_0 ;
  wire \byte_sr[5]_i_1_n_0 ;
  wire \byte_sr[6]_i_1_n_0 ;
  wire \byte_sr[7]_i_10_n_0 ;
  wire \byte_sr[7]_i_1_n_0 ;
  wire \byte_sr[7]_i_2_n_0 ;
  wire \byte_sr[7]_i_3_n_0 ;
  wire \byte_sr[7]_i_4_n_0 ;
  wire \byte_sr[7]_i_5_n_0 ;
  wire \byte_sr[7]_i_7_n_0 ;
  wire \byte_sr[7]_i_8_n_0 ;
  wire \byte_sr[7]_i_9_n_0 ;
  wire clk_IBUF_BUFG;
  wire \clk_i2c_cntr[0]_i_1_n_0 ;
  wire \clk_i2c_cntr[10]_i_1_n_0 ;
  wire \clk_i2c_cntr[11]_i_1_n_0 ;
  wire \clk_i2c_cntr[12]_i_1_n_0 ;
  wire \clk_i2c_cntr[12]_i_2_n_0 ;
  wire \clk_i2c_cntr[13]_i_1_n_0 ;
  wire \clk_i2c_cntr[14]_i_1_n_0 ;
  wire \clk_i2c_cntr[14]_i_2_n_0 ;
  wire \clk_i2c_cntr[15]_i_1_n_0 ;
  wire \clk_i2c_cntr[15]_i_2_n_0 ;
  wire \clk_i2c_cntr[15]_i_3_n_0 ;
  wire \clk_i2c_cntr[15]_i_4_n_0 ;
  wire \clk_i2c_cntr[15]_i_5_n_0 ;
  wire \clk_i2c_cntr[1]_i_1_n_0 ;
  wire \clk_i2c_cntr[2]_i_1_n_0 ;
  wire \clk_i2c_cntr[3]_i_1_n_0 ;
  wire \clk_i2c_cntr[4]_i_1_n_0 ;
  wire \clk_i2c_cntr[5]_i_1_n_0 ;
  wire \clk_i2c_cntr[6]_i_1_n_0 ;
  wire \clk_i2c_cntr[7]_i_1_n_0 ;
  wire \clk_i2c_cntr[7]_i_2_n_0 ;
  wire \clk_i2c_cntr[8]_i_1_n_0 ;
  wire \clk_i2c_cntr[9]_i_1_n_0 ;
  wire \clk_i2c_cntr[9]_i_2_n_0 ;
  wire \clk_i2c_cntr_reg_n_0_[0] ;
  wire \clk_i2c_cntr_reg_n_0_[10] ;
  wire \clk_i2c_cntr_reg_n_0_[11] ;
  wire \clk_i2c_cntr_reg_n_0_[12] ;
  wire \clk_i2c_cntr_reg_n_0_[13] ;
  wire \clk_i2c_cntr_reg_n_0_[14] ;
  wire \clk_i2c_cntr_reg_n_0_[15] ;
  wire \clk_i2c_cntr_reg_n_0_[1] ;
  wire \clk_i2c_cntr_reg_n_0_[2] ;
  wire \clk_i2c_cntr_reg_n_0_[3] ;
  wire \clk_i2c_cntr_reg_n_0_[4] ;
  wire \clk_i2c_cntr_reg_n_0_[5] ;
  wire \clk_i2c_cntr_reg_n_0_[6] ;
  wire \clk_i2c_cntr_reg_n_0_[7] ;
  wire \clk_i2c_cntr_reg_n_0_[8] ;
  wire \clk_i2c_cntr_reg_n_0_[9] ;
  wire clk_i2c_i_1_n_0;
  wire clk_i2c_i_2_n_0;
  wire clk_i2c_i_3_n_0;
  wire clk_i2c_i_4_n_0;
  wire clk_i2c_i_5_n_0;
  wire \cntr[0]_i_1_n_0 ;
  wire \cntr[1]_i_1_n_0 ;
  wire \cntr[2]_i_1_n_0 ;
  wire \cntr[2]_i_2_n_0 ;
  wire \cntr[2]_i_3_n_0 ;
  wire \cntr_reg_n_0_[1] ;
  wire \cntr_reg_n_0_[2] ;
  wire data2;
  wire [7:1]data4;
  wire [7:0]data_in_sr;
  wire \data_in_sr[7]_i_1_n_0 ;
  wire \data_in_sr[7]_i_2_n_0 ;
  wire \data_in_sr[7]_i_3_n_0 ;
  wire [7:0]\data_out_reg[7]_0 ;
  wire [0:0]data_to_write;
  wire en_cntr;
  wire en_cntr_i_3_n_0;
  wire en_cntr_reg;
  wire en_end_indicator131_out;
  wire en_end_indicator_i_1_n_0;
  wire en_end_indicator_i_2_n_0;
  wire en_end_indicator_i_3_n_0;
  wire en_end_indicator_i_4_n_0;
  wire en_end_indicator_reg_n_0;
  wire grab_next_data;
  wire grab_next_data_i_1_n_0;
  wire [0:0]i_data_write;
  wire nack;
  wire nack_i_1_n_0;
  wire nack_i_2_n_0;
  wire nack_i_3_n_0;
  wire nack_i_4_n_0;
  wire nack_i_5_n_0;
  wire next_state;
  wire \next_state[0]_i_1__0_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state[3]_i_2_n_0 ;
  wire \next_state[3]_i_4_n_0 ;
  wire \next_state[3]_i_5_n_0 ;
  wire next_state_2;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire \next_state_reg_n_0_[3] ;
  wire [23:0]num_byte_sent;
  wire [23:1]num_byte_sent0;
  wire \num_byte_sent[0]_i_1_n_0 ;
  wire \num_byte_sent[10]_i_1_n_0 ;
  wire \num_byte_sent[11]_i_1_n_0 ;
  wire \num_byte_sent[12]_i_1_n_0 ;
  wire \num_byte_sent[13]_i_1_n_0 ;
  wire \num_byte_sent[14]_i_1_n_0 ;
  wire \num_byte_sent[15]_i_1_n_0 ;
  wire \num_byte_sent[16]_i_1_n_0 ;
  wire \num_byte_sent[17]_i_1_n_0 ;
  wire \num_byte_sent[18]_i_1_n_0 ;
  wire \num_byte_sent[19]_i_1_n_0 ;
  wire \num_byte_sent[1]_i_1_n_0 ;
  wire \num_byte_sent[20]_i_1_n_0 ;
  wire \num_byte_sent[21]_i_1_n_0 ;
  wire \num_byte_sent[22]_i_1_n_0 ;
  wire \num_byte_sent[23]_i_2_n_0 ;
  wire \num_byte_sent[2]_i_1_n_0 ;
  wire \num_byte_sent[3]_i_1_n_0 ;
  wire \num_byte_sent[4]_i_1_n_0 ;
  wire \num_byte_sent[5]_i_1_n_0 ;
  wire \num_byte_sent[6]_i_1_n_0 ;
  wire \num_byte_sent[7]_i_1_n_0 ;
  wire \num_byte_sent[8]_i_1_n_0 ;
  wire \num_byte_sent[9]_i_1_n_0 ;
  wire num_byte_sent_1;
  wire \num_byte_sent_reg[16]_i_2_n_0 ;
  wire \num_byte_sent_reg[16]_i_2_n_1 ;
  wire \num_byte_sent_reg[16]_i_2_n_2 ;
  wire \num_byte_sent_reg[16]_i_2_n_3 ;
  wire \num_byte_sent_reg[16]_i_2_n_4 ;
  wire \num_byte_sent_reg[16]_i_2_n_5 ;
  wire \num_byte_sent_reg[16]_i_2_n_6 ;
  wire \num_byte_sent_reg[16]_i_2_n_7 ;
  wire \num_byte_sent_reg[23]_i_3_n_2 ;
  wire \num_byte_sent_reg[23]_i_3_n_3 ;
  wire \num_byte_sent_reg[23]_i_3_n_4 ;
  wire \num_byte_sent_reg[23]_i_3_n_5 ;
  wire \num_byte_sent_reg[23]_i_3_n_6 ;
  wire \num_byte_sent_reg[23]_i_3_n_7 ;
  wire \num_byte_sent_reg[8]_i_2_n_0 ;
  wire \num_byte_sent_reg[8]_i_2_n_1 ;
  wire \num_byte_sent_reg[8]_i_2_n_2 ;
  wire \num_byte_sent_reg[8]_i_2_n_3 ;
  wire \num_byte_sent_reg[8]_i_2_n_4 ;
  wire \num_byte_sent_reg[8]_i_2_n_5 ;
  wire \num_byte_sent_reg[8]_i_2_n_6 ;
  wire \num_byte_sent_reg[8]_i_2_n_7 ;
  wire p_0_in;
  wire [3:0]p_0_in_0;
  wire p_28_in;
  wire read_sub_addr_sent_flag;
  wire read_sub_addr_sent_flag_i_1_n_0;
  wire read_sub_addr_sent_flag_i_2_n_0;
  wire reg_sda_o10_out;
  wire reg_sda_o2;
  wire reg_sda_o_tristate_oe_i_10_n_0;
  wire reg_sda_o_tristate_oe_i_11_n_0;
  wire reg_sda_o_tristate_oe_i_12_n_0;
  wire reg_sda_o_tristate_oe_i_13_n_0;
  wire reg_sda_o_tristate_oe_i_14_n_0;
  wire reg_sda_o_tristate_oe_i_15_n_0;
  wire reg_sda_o_tristate_oe_i_16_n_0;
  wire reg_sda_o_tristate_oe_i_17_n_0;
  wire reg_sda_o_tristate_oe_i_18_n_0;
  wire reg_sda_o_tristate_oe_i_19_n_0;
  wire reg_sda_o_tristate_oe_i_1_n_0;
  wire reg_sda_o_tristate_oe_i_2_n_0;
  wire reg_sda_o_tristate_oe_i_3_n_0;
  wire reg_sda_o_tristate_oe_i_4_n_0;
  wire reg_sda_o_tristate_oe_i_5_n_0;
  wire reg_sda_o_tristate_oe_i_6_n_0;
  wire reg_sda_o_tristate_oe_i_7_n_0;
  wire reg_sda_o_tristate_oe_i_8_n_0;
  wire reg_sda_o_tristate_oe_i_9_n_0;
  wire request_transmit;
  wire request_transmit_i_2_n_0;
  wire rst;
  wire rst_IBUF;
  wire rw;
  wire rw_reg_0;
  wire scl_OBUF;
  wire scl_TRI;
  wire scl_curr;
  wire scl_is_high11_in;
  wire scl_is_high_i_10_n_0;
  wire scl_is_high_i_1_n_0;
  wire scl_is_high_i_2_n_0;
  wire scl_is_high_i_3_n_0;
  wire scl_is_high_i_4_n_0;
  wire scl_is_high_i_5_n_0;
  wire scl_is_high_i_6_n_0;
  wire scl_is_high_i_7_n_0;
  wire scl_is_high_i_8_n_0;
  wire scl_is_high_i_9_n_0;
  wire scl_is_high_reg_n_0;
  wire scl_is_low_i_1_n_0;
  wire scl_is_low_i_2_n_0;
  wire scl_is_low_i_3_n_0;
  wire scl_is_low_i_5_n_0;
  wire scl_is_low_i_6_n_0;
  wire scl_is_low_i_7_n_0;
  wire scl_is_low_i_8_n_0;
  wire scl_is_low_reg_n_0;
  wire scl_prev;
  wire sda_IOBUF_inst_i_1;
  wire sda_IOBUF_inst_i_3_0;
  wire sda_IOBUF_inst_i_3_n_0;
  wire sda_IOBUF_inst_i_4_n_0;
  wire sda_IOBUF_inst_i_6_n_0;
  wire sda_IOBUF_inst_i_7_n_0;
  wire sda_OBUF;
  wire [0:0]\sda_curr_reg[0]_0 ;
  wire \sda_curr_reg_n_0_[0] ;
  wire sda_prev;
  wire slave_addr;
  wire [0:0]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_11_n_0 ;
  wire \state[3]_i_12_n_0 ;
  wire \state[3]_i_13_n_0 ;
  wire \state[3]_i_14_n_0 ;
  wire \state[3]_i_15_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2__0_n_0 ;
  wire \state[3]_i_3__0_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4__0_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[3]_i_6__0_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[3]_i_8_n_0 ;
  wire [0:0]\state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg[0]_3 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[3]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \sub_addr_reg[11]_0 ;
  wire \sub_addr_reg_n_0_[11] ;
  wire sub_len1__0;
  wire valid_out;
  wire [7:0]NLW_ack_nack0_carry_O_UNCONNECTED;
  wire [7:3]NLW_ack_nack0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_ack_nack0_carry__0_O_UNCONNECTED;
  wire [7:6]\NLW_num_byte_sent_reg[23]_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_num_byte_sent_reg[23]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h22222FFF22222000)) 
    ack_in_prog_i_1
       (.I0(p_0_in_0[3]),
        .I1(\state_reg_n_0_[3] ),
        .I2(byte_sent6_out),
        .I3(ack_in_prog_i_2_n_0),
        .I4(ack_nack),
        .I5(ack_in_prog_reg_n_0),
        .O(ack_in_prog_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    ack_in_prog_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(ack_in_prog_reg_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .O(ack_in_prog_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ack_in_prog_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(ack_in_prog_i_1_n_0),
        .Q(ack_in_prog_reg_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    ack_nack0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({ack_nack0_carry_n_0,ack_nack0_carry_n_1,ack_nack0_carry_n_2,ack_nack0_carry_n_3,ack_nack0_carry_n_4,ack_nack0_carry_n_5,ack_nack0_carry_n_6,ack_nack0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ack_nack0_carry_O_UNCONNECTED[7:0]),
        .S({ack_nack0_carry_i_1_n_0,ack_nack0_carry_i_2_n_0,ack_nack0_carry_i_3_n_0,ack_nack0_carry_i_4_n_0,ack_nack0_carry_i_5_n_0,ack_nack0_carry_i_6_n_0,ack_nack0_carry_i_7_n_0,ack_nack0_carry_i_8_n_0}));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    ack_nack0_carry__0
       (.CI(ack_nack0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_ack_nack0_carry__0_CO_UNCONNECTED[7:3],ack_nack0_carry__0_n_5,ack_nack0_carry__0_n_6,ack_nack0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ack_nack0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,ack_nack0_carry__0_i_1_n_0,ack_nack0_carry__0_i_2_n_0,ack_nack0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    ack_nack0_carry__0_i_1
       (.I0(byte_len[1]),
        .I1(byte_len[0]),
        .O(ack_nack0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ack_nack0_carry__0_i_2
       (.I0(byte_len[1]),
        .I1(byte_len[0]),
        .O(ack_nack0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ack_nack0_carry__0_i_3
       (.I0(byte_len[1]),
        .I1(byte_len[0]),
        .O(ack_nack0_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h00081110)) 
    ack_nack0_carry_i_1
       (.I0(num_byte_sent[22]),
        .I1(num_byte_sent[23]),
        .I2(byte_len[0]),
        .I3(byte_len[1]),
        .I4(num_byte_sent[21]),
        .O(ack_nack0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h00081110)) 
    ack_nack0_carry_i_2
       (.I0(num_byte_sent[19]),
        .I1(num_byte_sent[20]),
        .I2(byte_len[0]),
        .I3(byte_len[1]),
        .I4(num_byte_sent[18]),
        .O(ack_nack0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h00081110)) 
    ack_nack0_carry_i_3
       (.I0(num_byte_sent[16]),
        .I1(num_byte_sent[17]),
        .I2(byte_len[0]),
        .I3(byte_len[1]),
        .I4(num_byte_sent[15]),
        .O(ack_nack0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h00081110)) 
    ack_nack0_carry_i_4
       (.I0(num_byte_sent[13]),
        .I1(num_byte_sent[14]),
        .I2(byte_len[0]),
        .I3(byte_len[1]),
        .I4(num_byte_sent[12]),
        .O(ack_nack0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h00081110)) 
    ack_nack0_carry_i_5
       (.I0(num_byte_sent[10]),
        .I1(num_byte_sent[11]),
        .I2(byte_len[0]),
        .I3(byte_len[1]),
        .I4(num_byte_sent[9]),
        .O(ack_nack0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h00081110)) 
    ack_nack0_carry_i_6
       (.I0(num_byte_sent[7]),
        .I1(num_byte_sent[8]),
        .I2(byte_len[0]),
        .I3(byte_len[1]),
        .I4(num_byte_sent[6]),
        .O(ack_nack0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h00081110)) 
    ack_nack0_carry_i_7
       (.I0(num_byte_sent[4]),
        .I1(num_byte_sent[5]),
        .I2(byte_len[0]),
        .I3(byte_len[1]),
        .I4(num_byte_sent[3]),
        .O(ack_nack0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h04010280)) 
    ack_nack0_carry_i_8
       (.I0(num_byte_sent[0]),
        .I1(num_byte_sent[1]),
        .I2(num_byte_sent[2]),
        .I3(byte_len[1]),
        .I4(byte_len[0]),
        .O(ack_nack0_carry_i_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ack_nack_reg
       (.C(clk_IBUF_BUFG),
        .CE(ack_nack),
        .CLR(rst),
        .D(ack_nack0_carry__0_n_5),
        .Q(ack_nack_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_len[1]_i_1_n_0 ),
        .CLR(rst),
        .D(1'b1),
        .Q(addr));
  LUT1 #(
    .INIT(2'h1)) 
    busy_i_1
       (.I0(busy_i_2_n_0),
        .O(busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0F20)) 
    busy_i_2
       (.I0(request_transmit),
        .I1(\state_reg_n_0_[3] ),
        .I2(reg_sda_o_tristate_oe_i_5_n_0),
        .I3(busy),
        .O(busy_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    busy_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .PRE(rst),
        .Q(scl_TRI));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \byte_len[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(request_transmit),
        .I3(busy),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\byte_len[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \byte_len[1]_i_2 
       (.I0(scl_TRI),
        .O(busy));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_len[1]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_len_reg[0]_0 ),
        .Q(byte_len[0]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_len[1]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_len_reg[1]_0 ),
        .Q(byte_len[1]));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    byte_sent_i_1
       (.I0(byte_sent_i_2_n_0),
        .I1(\cntr[2]_i_3_n_0 ),
        .I2(\next_state[3]_i_4_n_0 ),
        .I3(\data_in_sr[7]_i_2_n_0 ),
        .I4(byte_sent_i_3_n_0),
        .I5(p_0_in_0[3]),
        .O(byte_sent_i_1_n_0));
  LUT6 #(
    .INIT(64'h1111190019191900)) 
    byte_sent_i_2
       (.I0(byte_sent_i_4_n_0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(byte_sent_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    byte_sent_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .O(byte_sent_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    byte_sent_i_4
       (.I0(p_0_in_0[0]),
        .I1(\cntr_reg_n_0_[1] ),
        .I2(\cntr_reg_n_0_[2] ),
        .O(byte_sent_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    byte_sent_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(byte_sent_i_1_n_0),
        .Q(p_0_in_0[3]));
  LUT6 #(
    .INIT(64'hFCCCEEEECCCCCCCC)) 
    \byte_sr[0]_i_1 
       (.I0(rw),
        .I1(\byte_sr[7]_i_8_n_0 ),
        .I2(sub_len1__0),
        .I3(byte_len[0]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\byte_sr[7]_i_5_n_0 ),
        .O(\byte_sr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \byte_sr[1]_i_1 
       (.I0(\byte_sr[7]_i_7_n_0 ),
        .I1(\byte_sr[1]_i_2_n_0 ),
        .I2(data4[1]),
        .I3(\byte_sr[7]_i_9_n_0 ),
        .O(\byte_sr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \byte_sr[1]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(byte_len[0]),
        .I4(sub_len1__0),
        .I5(\byte_sr[7]_i_8_n_0 ),
        .O(\byte_sr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AA222222F0F0F0)) 
    \byte_sr[2]_i_1 
       (.I0(data4[2]),
        .I1(sub_len1__0),
        .I2(addr),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\byte_sr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C80008028A028A0)) 
    \byte_sr[3]_i_1 
       (.I0(data4[3]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\sub_addr_reg_n_0_[11] ),
        .I5(sub_len1__0),
        .O(\byte_sr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AA222222F0F0F0)) 
    \byte_sr[4]_i_1 
       (.I0(data4[4]),
        .I1(sub_len1__0),
        .I2(addr),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\byte_sr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h26660AAA00000000)) 
    \byte_sr[5]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(\state_reg_n_0_[1] ),
        .I5(data4[5]),
        .O(\byte_sr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h26660AAA00000000)) 
    \byte_sr[6]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(\state_reg_n_0_[1] ),
        .I5(data4[6]),
        .O(\byte_sr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFEEEEEEE)) 
    \byte_sr[7]_i_1 
       (.I0(\byte_sr[7]_i_3_n_0 ),
        .I1(\state[3]_i_3_n_0 ),
        .I2(\byte_sr[7]_i_4_n_0 ),
        .I3(\byte_sr[7]_i_5_n_0 ),
        .I4(sub_len1__0),
        .I5(byte_sent6_out),
        .O(\byte_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \byte_sr[7]_i_10 
       (.I0(clk_i2c_i_5_n_0),
        .I1(scl_is_low_reg_n_0),
        .I2(\clk_i2c_cntr_reg_n_0_[2] ),
        .I3(\clk_i2c_cntr_reg_n_0_[1] ),
        .I4(\clk_i2c_cntr_reg_n_0_[0] ),
        .O(\byte_sr[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \byte_sr[7]_i_2 
       (.I0(\byte_sr[7]_i_7_n_0 ),
        .I1(\byte_sr[7]_i_8_n_0 ),
        .I2(data4[7]),
        .I3(\byte_sr[7]_i_9_n_0 ),
        .O(\byte_sr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h11000000F0000000)) 
    \byte_sr[7]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rw),
        .I2(byte_sent6_out),
        .I3(\state_reg_n_0_[2] ),
        .I4(read_sub_addr_sent_flag_i_2_n_0),
        .I5(sub_len1__0),
        .O(\byte_sr[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_sr[7]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\byte_sr[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_sr[7]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\byte_sr[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \byte_sr[7]_i_6 
       (.I0(\byte_sr[7]_i_10_n_0 ),
        .I1(clk_i2c_i_2_n_0),
        .I2(\clk_i2c_cntr_reg_n_0_[3] ),
        .I3(\clk_i2c_cntr_reg_n_0_[4] ),
        .I4(\clk_i2c_cntr_reg_n_0_[5] ),
        .O(byte_sent6_out));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \byte_sr[7]_i_7 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(addr),
        .O(\byte_sr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8F80808000000000)) 
    \byte_sr[7]_i_8 
       (.I0(\state_reg_n_0_[0] ),
        .I1(i_data_write),
        .I2(\state_reg_n_0_[1] ),
        .I3(data_to_write),
        .I4(sub_len1__0),
        .I5(\state_reg_n_0_[2] ),
        .O(\byte_sr[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h15BF2A00)) 
    \byte_sr[7]_i_9 
       (.I0(\state_reg_n_0_[1] ),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\byte_sr[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_sr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_sr[0]_i_1_n_0 ),
        .Q(data4[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_sr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_sr[1]_i_1_n_0 ),
        .Q(data4[2]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_sr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_sr[2]_i_1_n_0 ),
        .Q(data4[3]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_sr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_sr[3]_i_1_n_0 ),
        .Q(data4[4]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_sr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_sr[4]_i_1_n_0 ),
        .Q(data4[5]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_sr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_sr[5]_i_1_n_0 ),
        .Q(data4[6]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_sr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_sr[6]_i_1_n_0 ),
        .Q(data4[7]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_sr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\byte_sr[7]_i_2_n_0 ),
        .Q(data2));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clk_i2c_cntr[0]_i_1 
       (.I0(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[0] ),
        .O(\clk_i2c_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \clk_i2c_cntr[10]_i_1 
       (.I0(\clk_i2c_cntr[12]_i_2_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[9] ),
        .I2(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I3(\clk_i2c_cntr_reg_n_0_[10] ),
        .O(\clk_i2c_cntr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \clk_i2c_cntr[11]_i_1 
       (.I0(\clk_i2c_cntr_reg_n_0_[9] ),
        .I1(\clk_i2c_cntr[12]_i_2_n_0 ),
        .I2(\clk_i2c_cntr_reg_n_0_[10] ),
        .I3(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I4(\clk_i2c_cntr_reg_n_0_[11] ),
        .O(\clk_i2c_cntr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \clk_i2c_cntr[12]_i_1 
       (.I0(\clk_i2c_cntr_reg_n_0_[11] ),
        .I1(\clk_i2c_cntr_reg_n_0_[10] ),
        .I2(\clk_i2c_cntr[12]_i_2_n_0 ),
        .I3(\clk_i2c_cntr_reg_n_0_[9] ),
        .I4(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I5(\clk_i2c_cntr_reg_n_0_[12] ),
        .O(\clk_i2c_cntr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \clk_i2c_cntr[12]_i_2 
       (.I0(\clk_i2c_cntr[7]_i_2_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[5] ),
        .I2(\clk_i2c_cntr_reg_n_0_[4] ),
        .I3(\clk_i2c_cntr_reg_n_0_[6] ),
        .I4(\clk_i2c_cntr_reg_n_0_[7] ),
        .I5(\clk_i2c_cntr_reg_n_0_[8] ),
        .O(\clk_i2c_cntr[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBF004000)) 
    \clk_i2c_cntr[13]_i_1 
       (.I0(\clk_i2c_cntr[14]_i_2_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[11] ),
        .I2(\clk_i2c_cntr_reg_n_0_[12] ),
        .I3(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I4(\clk_i2c_cntr_reg_n_0_[13] ),
        .O(\clk_i2c_cntr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \clk_i2c_cntr[14]_i_1 
       (.I0(\clk_i2c_cntr_reg_n_0_[12] ),
        .I1(\clk_i2c_cntr_reg_n_0_[11] ),
        .I2(\clk_i2c_cntr[14]_i_2_n_0 ),
        .I3(\clk_i2c_cntr_reg_n_0_[13] ),
        .I4(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I5(\clk_i2c_cntr_reg_n_0_[14] ),
        .O(\clk_i2c_cntr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \clk_i2c_cntr[14]_i_2 
       (.I0(\clk_i2c_cntr_reg_n_0_[9] ),
        .I1(\clk_i2c_cntr[9]_i_2_n_0 ),
        .I2(\clk_i2c_cntr_reg_n_0_[6] ),
        .I3(\clk_i2c_cntr_reg_n_0_[7] ),
        .I4(\clk_i2c_cntr_reg_n_0_[8] ),
        .I5(\clk_i2c_cntr_reg_n_0_[10] ),
        .O(\clk_i2c_cntr[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \clk_i2c_cntr[15]_i_1 
       (.I0(\clk_i2c_cntr[15]_i_2_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[14] ),
        .I2(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I3(\clk_i2c_cntr_reg_n_0_[15] ),
        .O(\clk_i2c_cntr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \clk_i2c_cntr[15]_i_2 
       (.I0(\clk_i2c_cntr_reg_n_0_[12] ),
        .I1(\clk_i2c_cntr_reg_n_0_[11] ),
        .I2(\clk_i2c_cntr_reg_n_0_[10] ),
        .I3(\clk_i2c_cntr[12]_i_2_n_0 ),
        .I4(\clk_i2c_cntr_reg_n_0_[9] ),
        .I5(\clk_i2c_cntr_reg_n_0_[13] ),
        .O(\clk_i2c_cntr[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \clk_i2c_cntr[15]_i_3 
       (.I0(\clk_i2c_cntr[15]_i_4_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[6] ),
        .I2(\clk_i2c_cntr[15]_i_5_n_0 ),
        .I3(\clk_i2c_cntr_reg_n_0_[7] ),
        .I4(scl_is_high_i_4_n_0),
        .I5(busy),
        .O(\clk_i2c_cntr[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \clk_i2c_cntr[15]_i_4 
       (.I0(\clk_i2c_cntr_reg_n_0_[1] ),
        .I1(\clk_i2c_cntr_reg_n_0_[5] ),
        .I2(\clk_i2c_cntr_reg_n_0_[4] ),
        .I3(\clk_i2c_cntr_reg_n_0_[3] ),
        .O(\clk_i2c_cntr[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \clk_i2c_cntr[15]_i_5 
       (.I0(\clk_i2c_cntr_reg_n_0_[0] ),
        .I1(\clk_i2c_cntr_reg_n_0_[2] ),
        .O(\clk_i2c_cntr[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \clk_i2c_cntr[1]_i_1 
       (.I0(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[0] ),
        .I2(\clk_i2c_cntr_reg_n_0_[1] ),
        .O(\clk_i2c_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \clk_i2c_cntr[2]_i_1 
       (.I0(\clk_i2c_cntr_reg_n_0_[1] ),
        .I1(\clk_i2c_cntr_reg_n_0_[0] ),
        .I2(\clk_i2c_cntr_reg_n_0_[2] ),
        .I3(\clk_i2c_cntr[15]_i_3_n_0 ),
        .O(\clk_i2c_cntr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \clk_i2c_cntr[3]_i_1 
       (.I0(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[2] ),
        .I2(\clk_i2c_cntr_reg_n_0_[0] ),
        .I3(\clk_i2c_cntr_reg_n_0_[1] ),
        .I4(\clk_i2c_cntr_reg_n_0_[3] ),
        .O(\clk_i2c_cntr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \clk_i2c_cntr[4]_i_1 
       (.I0(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[1] ),
        .I2(\clk_i2c_cntr_reg_n_0_[0] ),
        .I3(\clk_i2c_cntr_reg_n_0_[2] ),
        .I4(\clk_i2c_cntr_reg_n_0_[3] ),
        .I5(\clk_i2c_cntr_reg_n_0_[4] ),
        .O(\clk_i2c_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \clk_i2c_cntr[5]_i_1 
       (.I0(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[4] ),
        .I2(\clk_i2c_cntr[7]_i_2_n_0 ),
        .I3(\clk_i2c_cntr_reg_n_0_[5] ),
        .O(\clk_i2c_cntr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \clk_i2c_cntr[6]_i_1 
       (.I0(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I1(\clk_i2c_cntr[7]_i_2_n_0 ),
        .I2(\clk_i2c_cntr_reg_n_0_[5] ),
        .I3(\clk_i2c_cntr_reg_n_0_[4] ),
        .I4(\clk_i2c_cntr_reg_n_0_[6] ),
        .O(\clk_i2c_cntr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \clk_i2c_cntr[7]_i_1 
       (.I0(\clk_i2c_cntr[7]_i_2_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[5] ),
        .I2(\clk_i2c_cntr_reg_n_0_[4] ),
        .I3(\clk_i2c_cntr_reg_n_0_[6] ),
        .I4(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I5(\clk_i2c_cntr_reg_n_0_[7] ),
        .O(\clk_i2c_cntr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \clk_i2c_cntr[7]_i_2 
       (.I0(\clk_i2c_cntr_reg_n_0_[3] ),
        .I1(\clk_i2c_cntr_reg_n_0_[2] ),
        .I2(\clk_i2c_cntr_reg_n_0_[0] ),
        .I3(\clk_i2c_cntr_reg_n_0_[1] ),
        .O(\clk_i2c_cntr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF7000800)) 
    \clk_i2c_cntr[8]_i_1 
       (.I0(\clk_i2c_cntr_reg_n_0_[7] ),
        .I1(\clk_i2c_cntr_reg_n_0_[6] ),
        .I2(\clk_i2c_cntr[9]_i_2_n_0 ),
        .I3(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I4(\clk_i2c_cntr_reg_n_0_[8] ),
        .O(\clk_i2c_cntr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF000040000000)) 
    \clk_i2c_cntr[9]_i_1 
       (.I0(\clk_i2c_cntr[9]_i_2_n_0 ),
        .I1(\clk_i2c_cntr_reg_n_0_[6] ),
        .I2(\clk_i2c_cntr_reg_n_0_[7] ),
        .I3(\clk_i2c_cntr_reg_n_0_[8] ),
        .I4(\clk_i2c_cntr[15]_i_3_n_0 ),
        .I5(\clk_i2c_cntr_reg_n_0_[9] ),
        .O(\clk_i2c_cntr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \clk_i2c_cntr[9]_i_2 
       (.I0(\clk_i2c_cntr_reg_n_0_[4] ),
        .I1(\clk_i2c_cntr_reg_n_0_[5] ),
        .I2(\clk_i2c_cntr_reg_n_0_[1] ),
        .I3(\clk_i2c_cntr_reg_n_0_[0] ),
        .I4(\clk_i2c_cntr_reg_n_0_[2] ),
        .I5(\clk_i2c_cntr_reg_n_0_[3] ),
        .O(\clk_i2c_cntr[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[0]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[10]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[11]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[12]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[13]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[14]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[15]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[1]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[2]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[3]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[4]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[5]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[6]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[7]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[8]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_i2c_cntr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\clk_i2c_cntr[9]_i_1_n_0 ),
        .Q(\clk_i2c_cntr_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7F8F)) 
    clk_i2c_i_1
       (.I0(clk_i2c_i_2_n_0),
        .I1(clk_i2c_i_3_n_0),
        .I2(busy),
        .I3(scl_OBUF),
        .O(clk_i2c_i_1_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    clk_i2c_i_2
       (.I0(clk_i2c_i_4_n_0),
        .I1(\clk_i2c_cntr_reg_n_0_[13] ),
        .I2(\clk_i2c_cntr_reg_n_0_[12] ),
        .I3(\clk_i2c_cntr_reg_n_0_[14] ),
        .O(clk_i2c_i_2_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    clk_i2c_i_3
       (.I0(\clk_i2c_cntr_reg_n_0_[1] ),
        .I1(clk_i2c_i_5_n_0),
        .I2(\clk_i2c_cntr[15]_i_5_n_0 ),
        .I3(\clk_i2c_cntr_reg_n_0_[4] ),
        .I4(\clk_i2c_cntr_reg_n_0_[3] ),
        .I5(\clk_i2c_cntr_reg_n_0_[5] ),
        .O(clk_i2c_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clk_i2c_i_4
       (.I0(\clk_i2c_cntr_reg_n_0_[15] ),
        .I1(\clk_i2c_cntr_reg_n_0_[7] ),
        .I2(\clk_i2c_cntr_reg_n_0_[8] ),
        .I3(\clk_i2c_cntr_reg_n_0_[10] ),
        .I4(\clk_i2c_cntr_reg_n_0_[9] ),
        .I5(\clk_i2c_cntr_reg_n_0_[11] ),
        .O(clk_i2c_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    clk_i2c_i_5
       (.I0(\clk_i2c_cntr_reg_n_0_[7] ),
        .I1(\clk_i2c_cntr_reg_n_0_[6] ),
        .I2(\clk_i2c_cntr_reg_n_0_[8] ),
        .O(clk_i2c_i_5_n_0));
  FDPE #(
    .INIT(1'b1)) 
    clk_i2c_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_i2c_i_1_n_0),
        .PRE(rst),
        .Q(scl_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cntr[0]_i_1 
       (.I0(p_0_in_0[0]),
        .O(\cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0F0F20F0)) 
    \cntr[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(\cntr_reg_n_0_[1] ),
        .O(\cntr[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cntr[2]_i_1 
       (.I0(\data_in_sr[7]_i_1_n_0 ),
        .I1(\cntr[2]_i_3_n_0 ),
        .O(\cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F2FFF20F00000)) 
    \cntr[2]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[3]),
        .I4(\cntr_reg_n_0_[1] ),
        .I5(\cntr_reg_n_0_[2] ),
        .O(\cntr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0540054005400000)) 
    \cntr[2]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(sub_len1__0),
        .I5(byte_sent6_out),
        .O(\cntr[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cntr[2]_i_1_n_0 ),
        .CLR(rst),
        .D(\cntr[0]_i_1_n_0 ),
        .Q(p_0_in_0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cntr[2]_i_1_n_0 ),
        .CLR(rst),
        .D(\cntr[1]_i_1_n_0 ),
        .Q(\cntr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cntr[2]_i_1_n_0 ),
        .CLR(rst),
        .D(\cntr[2]_i_2_n_0 ),
        .Q(\cntr_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \data_in_sr[7]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\data_in_sr[7]_i_2_n_0 ),
        .O(\data_in_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \data_in_sr[7]_i_2 
       (.I0(\data_in_sr[7]_i_3_n_0 ),
        .I1(clk_i2c_i_2_n_0),
        .I2(\clk_i2c_cntr_reg_n_0_[3] ),
        .I3(\clk_i2c_cntr_reg_n_0_[4] ),
        .I4(\clk_i2c_cntr_reg_n_0_[5] ),
        .O(\data_in_sr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \data_in_sr[7]_i_3 
       (.I0(\clk_i2c_cntr_reg_n_0_[0] ),
        .I1(\clk_i2c_cntr_reg_n_0_[2] ),
        .I2(\clk_i2c_cntr_reg_n_0_[1] ),
        .I3(scl_is_high_reg_n_0),
        .I4(clk_i2c_i_5_n_0),
        .O(\data_in_sr[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_sr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(sda_prev),
        .Q(data_in_sr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_sr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(data_in_sr[0]),
        .Q(data_in_sr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_sr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(data_in_sr[1]),
        .Q(data_in_sr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_sr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(data_in_sr[2]),
        .Q(data_in_sr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_sr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(data_in_sr[3]),
        .Q(data_in_sr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_sr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(data_in_sr[4]),
        .Q(data_in_sr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_sr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(data_in_sr[5]),
        .Q(data_in_sr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_in_sr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_in_sr[7]_i_1_n_0 ),
        .CLR(rst),
        .D(data_in_sr[6]),
        .Q(data_in_sr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ack_nack),
        .CLR(rst),
        .D(data_in_sr[0]),
        .Q(\data_out_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ack_nack),
        .CLR(rst),
        .D(data_in_sr[1]),
        .Q(\data_out_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ack_nack),
        .CLR(rst),
        .D(data_in_sr[2]),
        .Q(\data_out_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ack_nack),
        .CLR(rst),
        .D(data_in_sr[3]),
        .Q(\data_out_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ack_nack),
        .CLR(rst),
        .D(data_in_sr[4]),
        .Q(\data_out_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ack_nack),
        .CLR(rst),
        .D(data_in_sr[5]),
        .Q(\data_out_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ack_nack),
        .CLR(rst),
        .D(data_in_sr[6]),
        .Q(\data_out_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ack_nack),
        .CLR(rst),
        .D(data_in_sr[7]),
        .Q(\data_out_reg[7]_0 [7]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \data_read[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(valid_out),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\state_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_to_write_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_len[1]_i_1_n_0 ),
        .CLR(rst),
        .D(i_data_write),
        .Q(data_to_write));
  LUT5 #(
    .INIT(32'h0BFF0B00)) 
    en_cntr_i_1
       (.I0(CO),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(en_cntr),
        .I4(en_cntr_reg),
        .O(\state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    en_cntr_i_2
       (.I0(en_cntr_i_3_n_0),
        .I1(slave_addr),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(en_cntr));
  LUT6 #(
    .INIT(64'h00000000000C0500)) 
    en_cntr_i_3
       (.I0(busy),
        .I1(CO),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(en_cntr_i_3_n_0));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    en_end_indicator_i_1
       (.I0(en_end_indicator_i_2_n_0),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(en_end_indicator_i_3_n_0),
        .I4(en_end_indicator_reg_n_0),
        .O(en_end_indicator_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hAAAA000C)) 
    en_end_indicator_i_2
       (.I0(scl_is_low_reg_n_0),
        .I1(scl_prev),
        .I2(scl_curr),
        .I3(rw),
        .I4(\state_reg_n_0_[0] ),
        .O(en_end_indicator_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    en_end_indicator_i_3
       (.I0(en_end_indicator_i_4_n_0),
        .I1(byte_sent6_out),
        .I2(ack_in_prog_reg_n_0),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(reg_sda_o2),
        .O(en_end_indicator_i_3_n_0));
  LUT6 #(
    .INIT(64'h4000000040400040)) 
    en_end_indicator_i_4
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(scl_prev),
        .I3(scl_curr),
        .I4(en_end_indicator_reg_n_0),
        .I5(rw),
        .O(en_end_indicator_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    en_end_indicator_i_5
       (.I0(\next_state_reg_n_0_[0] ),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\next_state_reg_n_0_[3] ),
        .O(reg_sda_o2));
  FDCE #(
    .INIT(1'b0)) 
    en_end_indicator_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(en_end_indicator_i_1_n_0),
        .Q(en_end_indicator_reg_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A2AEAAA)) 
    grab_next_data_i_1
       (.I0(grab_next_data),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(sub_len1__0),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(grab_next_data_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    grab_next_data_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(grab_next_data_i_1_n_0),
        .Q(grab_next_data));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    nack_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(scl_is_high_reg_n_0),
        .I2(nack_i_2_n_0),
        .I3(nack),
        .O(nack_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF4000)) 
    nack_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(nack_i_3_n_0),
        .I3(nack_i_4_n_0),
        .I4(reg_sda_o_tristate_oe_i_16_n_0),
        .I5(nack_i_5_n_0),
        .O(nack_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    nack_i_3
       (.I0(\clk_i2c_cntr_reg_n_0_[5] ),
        .I1(\clk_i2c_cntr_reg_n_0_[4] ),
        .I2(\clk_i2c_cntr_reg_n_0_[3] ),
        .I3(clk_i2c_i_2_n_0),
        .O(nack_i_3_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    nack_i_4
       (.I0(\clk_i2c_cntr_reg_n_0_[0] ),
        .I1(\clk_i2c_cntr_reg_n_0_[2] ),
        .I2(scl_is_high_reg_n_0),
        .I3(\clk_i2c_cntr_reg_n_0_[1] ),
        .I4(sda_prev),
        .I5(clk_i2c_i_5_n_0),
        .O(nack_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    nack_i_5
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(nack_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    nack_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(nack_i_1_n_0),
        .Q(nack));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00BBFCBB)) 
    \next_state[0]_i_1__0 
       (.I0(read_sub_addr_sent_flag),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(ack_nack0_carry__0_n_5),
        .O(\next_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hCBCF)) 
    \next_state[1]_i_1 
       (.I0(ack_nack0_carry__0_n_5),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h01F0FDF0)) 
    \next_state[2]_i_1 
       (.I0(rw),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(ack_nack0_carry__0_n_5),
        .O(\next_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002808)) 
    \next_state[3]_i_1 
       (.I0(sub_len1__0),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\next_state[3]_i_4_n_0 ),
        .O(next_state_2));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \next_state[3]_i_2 
       (.I0(ack_nack0_carry__0_n_5),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\next_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \next_state[3]_i_3 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[0]),
        .O(sub_len1__0));
  LUT6 #(
    .INIT(64'h000000000A040004)) 
    \next_state[3]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\next_state[3]_i_5_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(p_0_in_0[3]),
        .I5(\state_reg_n_0_[3] ),
        .O(\next_state[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \next_state[3]_i_5 
       (.I0(request_transmit),
        .I1(busy),
        .O(\next_state[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state_2),
        .CLR(rst),
        .D(\next_state[0]_i_1__0_n_0 ),
        .Q(\next_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state_2),
        .CLR(rst),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state_2),
        .CLR(rst),
        .D(\next_state[2]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state_2),
        .CLR(rst),
        .D(\next_state[3]_i_2_n_0 ),
        .Q(\next_state_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num_byte_sent[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent[0]),
        .O(\num_byte_sent[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[10]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[10]),
        .O(\num_byte_sent[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[11]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[11]),
        .O(\num_byte_sent[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[12]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[12]),
        .O(\num_byte_sent[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[13]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[13]),
        .O(\num_byte_sent[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[14]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[14]),
        .O(\num_byte_sent[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[15]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[15]),
        .O(\num_byte_sent[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[16]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[16]),
        .O(\num_byte_sent[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[17]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[17]),
        .O(\num_byte_sent[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[18]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[18]),
        .O(\num_byte_sent[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[19]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[19]),
        .O(\num_byte_sent[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[1]),
        .O(\num_byte_sent[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[20]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[20]),
        .O(\num_byte_sent[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[21]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[21]),
        .O(\num_byte_sent[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[22]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[22]),
        .O(\num_byte_sent[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000080)) 
    \num_byte_sent[23]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(sub_len1__0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\next_state[3]_i_4_n_0 ),
        .O(num_byte_sent_1));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[23]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[23]),
        .O(\num_byte_sent[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[2]),
        .O(\num_byte_sent[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[3]),
        .O(\num_byte_sent[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[4]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[4]),
        .O(\num_byte_sent[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[5]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[5]),
        .O(\num_byte_sent[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[6]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[6]),
        .O(\num_byte_sent[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[7]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[7]),
        .O(\num_byte_sent[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[8]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[8]),
        .O(\num_byte_sent[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_byte_sent[9]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(num_byte_sent0[9]),
        .O(\num_byte_sent[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[0]_i_1_n_0 ),
        .Q(num_byte_sent[0]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[10]_i_1_n_0 ),
        .Q(num_byte_sent[10]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[11]_i_1_n_0 ),
        .Q(num_byte_sent[11]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[12]_i_1_n_0 ),
        .Q(num_byte_sent[12]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[13]_i_1_n_0 ),
        .Q(num_byte_sent[13]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[14]_i_1_n_0 ),
        .Q(num_byte_sent[14]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[15]_i_1_n_0 ),
        .Q(num_byte_sent[15]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[16]_i_1_n_0 ),
        .Q(num_byte_sent[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \num_byte_sent_reg[16]_i_2 
       (.CI(\num_byte_sent_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\num_byte_sent_reg[16]_i_2_n_0 ,\num_byte_sent_reg[16]_i_2_n_1 ,\num_byte_sent_reg[16]_i_2_n_2 ,\num_byte_sent_reg[16]_i_2_n_3 ,\num_byte_sent_reg[16]_i_2_n_4 ,\num_byte_sent_reg[16]_i_2_n_5 ,\num_byte_sent_reg[16]_i_2_n_6 ,\num_byte_sent_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(num_byte_sent0[16:9]),
        .S(num_byte_sent[16:9]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[17]_i_1_n_0 ),
        .Q(num_byte_sent[17]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[18]_i_1_n_0 ),
        .Q(num_byte_sent[18]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[19]_i_1_n_0 ),
        .Q(num_byte_sent[19]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[1]_i_1_n_0 ),
        .Q(num_byte_sent[1]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[20]_i_1_n_0 ),
        .Q(num_byte_sent[20]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[21]_i_1_n_0 ),
        .Q(num_byte_sent[21]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[22]_i_1_n_0 ),
        .Q(num_byte_sent[22]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[23]_i_2_n_0 ),
        .Q(num_byte_sent[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \num_byte_sent_reg[23]_i_3 
       (.CI(\num_byte_sent_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_num_byte_sent_reg[23]_i_3_CO_UNCONNECTED [7:6],\num_byte_sent_reg[23]_i_3_n_2 ,\num_byte_sent_reg[23]_i_3_n_3 ,\num_byte_sent_reg[23]_i_3_n_4 ,\num_byte_sent_reg[23]_i_3_n_5 ,\num_byte_sent_reg[23]_i_3_n_6 ,\num_byte_sent_reg[23]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_num_byte_sent_reg[23]_i_3_O_UNCONNECTED [7],num_byte_sent0[23:17]}),
        .S({1'b0,num_byte_sent[23:17]}));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[2]_i_1_n_0 ),
        .Q(num_byte_sent[2]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[3]_i_1_n_0 ),
        .Q(num_byte_sent[3]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[4]_i_1_n_0 ),
        .Q(num_byte_sent[4]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[5]_i_1_n_0 ),
        .Q(num_byte_sent[5]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[6]_i_1_n_0 ),
        .Q(num_byte_sent[6]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[7]_i_1_n_0 ),
        .Q(num_byte_sent[7]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[8]_i_1_n_0 ),
        .Q(num_byte_sent[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \num_byte_sent_reg[8]_i_2 
       (.CI(num_byte_sent[0]),
        .CI_TOP(1'b0),
        .CO({\num_byte_sent_reg[8]_i_2_n_0 ,\num_byte_sent_reg[8]_i_2_n_1 ,\num_byte_sent_reg[8]_i_2_n_2 ,\num_byte_sent_reg[8]_i_2_n_3 ,\num_byte_sent_reg[8]_i_2_n_4 ,\num_byte_sent_reg[8]_i_2_n_5 ,\num_byte_sent_reg[8]_i_2_n_6 ,\num_byte_sent_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(num_byte_sent0[8:1]),
        .S(num_byte_sent[8:1]));
  FDCE #(
    .INIT(1'b0)) 
    \num_byte_sent_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(num_byte_sent_1),
        .CLR(rst),
        .D(\num_byte_sent[9]_i_1_n_0 ),
        .Q(num_byte_sent[9]));
  LUT6 #(
    .INIT(64'hC0C0FFFFC0C04000)) 
    read_sub_addr_sent_flag_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(sub_len1__0),
        .I3(read_sub_addr_sent_flag_i_2_n_0),
        .I4(\byte_len[1]_i_1_n_0 ),
        .I5(read_sub_addr_sent_flag),
        .O(read_sub_addr_sent_flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    read_sub_addr_sent_flag_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .O(read_sub_addr_sent_flag_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    read_sub_addr_sent_flag_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(read_sub_addr_sent_flag_i_1_n_0),
        .Q(read_sub_addr_sent_flag));
  LUT6 #(
    .INIT(64'hEEEEEEEFEEEEEEE0)) 
    reg_sda_o_tristate_oe_i_1
       (.I0(reg_sda_o_tristate_oe_i_2_n_0),
        .I1(reg_sda_o_tristate_oe_i_3_n_0),
        .I2(reg_sda_o_tristate_oe_i_4_n_0),
        .I3(reg_sda_o_tristate_oe_i_5_n_0),
        .I4(reg_sda_o_tristate_oe_i_6_n_0),
        .I5(sda_OBUF),
        .O(reg_sda_o_tristate_oe_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    reg_sda_o_tristate_oe_i_10
       (.I0(\state_reg_n_0_[0] ),
        .I1(scl_curr),
        .I2(scl_prev),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[2] ),
        .O(reg_sda_o_tristate_oe_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    reg_sda_o_tristate_oe_i_11
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(reg_sda_o_tristate_oe_i_11_n_0));
  LUT6 #(
    .INIT(64'h0404040404FF0404)) 
    reg_sda_o_tristate_oe_i_12
       (.I0(scl_is_high_i_9_n_0),
        .I1(scl_is_high_reg_n_0),
        .I2(scl_is_high_i_4_n_0),
        .I3(rw),
        .I4(scl_prev),
        .I5(scl_curr),
        .O(reg_sda_o_tristate_oe_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    reg_sda_o_tristate_oe_i_13
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(reg_sda_o_tristate_oe_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0062)) 
    reg_sda_o_tristate_oe_i_14
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .O(reg_sda_o_tristate_oe_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    reg_sda_o_tristate_oe_i_15
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .O(reg_sda_o_tristate_oe_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    reg_sda_o_tristate_oe_i_16
       (.I0(busy),
        .I1(request_transmit),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .O(reg_sda_o_tristate_oe_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    reg_sda_o_tristate_oe_i_17
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(reg_sda_o_tristate_oe_i_19_n_0),
        .I3(clk_i2c_i_2_n_0),
        .I4(nack_i_4_n_0),
        .O(reg_sda_o_tristate_oe_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    reg_sda_o_tristate_oe_i_18
       (.I0(scl_is_high_i_4_n_0),
        .I1(scl_is_high_reg_n_0),
        .I2(\state[3]_i_11_n_0 ),
        .O(reg_sda_o_tristate_oe_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h01)) 
    reg_sda_o_tristate_oe_i_19
       (.I0(\clk_i2c_cntr_reg_n_0_[3] ),
        .I1(\clk_i2c_cntr_reg_n_0_[4] ),
        .I2(\clk_i2c_cntr_reg_n_0_[5] ),
        .O(reg_sda_o_tristate_oe_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFF0F8F8F0F0F0F0)) 
    reg_sda_o_tristate_oe_i_2
       (.I0(ack_in_prog_reg_n_0),
        .I1(ack_nack_reg_n_0),
        .I2(reg_sda_o_tristate_oe_i_7_n_0),
        .I3(reg_sda_o10_out),
        .I4(reg_sda_o_tristate_oe_i_8_n_0),
        .I5(\state_reg_n_0_[3] ),
        .O(reg_sda_o_tristate_oe_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    reg_sda_o_tristate_oe_i_3
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(data2),
        .I4(reg_sda_o_tristate_oe_i_9_n_0),
        .I5(reg_sda_o_tristate_oe_i_10_n_0),
        .O(reg_sda_o_tristate_oe_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF88F888F888)) 
    reg_sda_o_tristate_oe_i_4
       (.I0(reg_sda_o_tristate_oe_i_11_n_0),
        .I1(reg_sda_o_tristate_oe_i_12_n_0),
        .I2(reg_sda_o_tristate_oe_i_13_n_0),
        .I3(byte_sent6_out),
        .I4(sub_len1__0),
        .I5(reg_sda_o_tristate_oe_i_14_n_0),
        .O(reg_sda_o_tristate_oe_i_4_n_0));
  LUT6 #(
    .INIT(64'h080F080F080F0800)) 
    reg_sda_o_tristate_oe_i_5
       (.I0(busy__18),
        .I1(reg_sda_o_tristate_oe_i_15_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(reg_sda_o_tristate_oe_i_16_n_0),
        .I5(reg_sda_o_tristate_oe_i_17_n_0),
        .O(reg_sda_o_tristate_oe_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000E0)) 
    reg_sda_o_tristate_oe_i_6
       (.I0(reg_sda_o_tristate_oe_i_18_n_0),
        .I1(p_28_in),
        .I2(\byte_sr[7]_i_5_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state[3]_i_6_n_0 ),
        .O(reg_sda_o_tristate_oe_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h08FB0808)) 
    reg_sda_o_tristate_oe_i_7
       (.I0(data2),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(reg_sda_o_tristate_oe_i_16_n_0),
        .O(reg_sda_o_tristate_oe_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    reg_sda_o_tristate_oe_i_8
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .O(reg_sda_o_tristate_oe_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    reg_sda_o_tristate_oe_i_9
       (.I0(scl_is_high_i_4_n_0),
        .I1(\state[3]_i_11_n_0 ),
        .I2(scl_is_high_reg_n_0),
        .O(reg_sda_o_tristate_oe_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_sda_o_tristate_oe_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_sda_o_tristate_oe_i_1_n_0),
        .Q(sda_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1F1F1FFF1F1F1F00)) 
    request_transmit_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(request_transmit_i_2_n_0),
        .I4(next_state),
        .I5(request_transmit),
        .O(\state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00080088)) 
    request_transmit_i_2
       (.I0(busy),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(request_transmit_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rw_reg
       (.C(clk_IBUF_BUFG),
        .CE(\byte_len[1]_i_1_n_0 ),
        .CLR(rst),
        .D(rw_reg_0),
        .Q(rw));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    scl_curr_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(scl_OBUF),
        .Q(scl_curr));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFB00)) 
    scl_is_high_i_1
       (.I0(scl_is_high_i_2_n_0),
        .I1(scl_is_high_i_3_n_0),
        .I2(scl_is_high_i_4_n_0),
        .I3(scl_is_high_reg_n_0),
        .I4(scl_is_high_i_5_n_0),
        .I5(scl_is_high_i_6_n_0),
        .O(scl_is_high_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_is_high_i_10
       (.I0(\clk_i2c_cntr_reg_n_0_[12] ),
        .I1(\clk_i2c_cntr_reg_n_0_[14] ),
        .I2(\clk_i2c_cntr_reg_n_0_[9] ),
        .I3(\clk_i2c_cntr_reg_n_0_[11] ),
        .O(scl_is_high_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h04FF0404)) 
    scl_is_high_i_11
       (.I0(\state[3]_i_11_n_0 ),
        .I1(scl_is_high_reg_n_0),
        .I2(scl_is_high_i_4_n_0),
        .I3(scl_prev),
        .I4(scl_curr),
        .O(scl_is_high11_in));
  LUT3 #(
    .INIT(8'h80)) 
    scl_is_high_i_12
       (.I0(scl_prev),
        .I1(scl_curr),
        .I2(en_end_indicator_reg_n_0),
        .O(en_end_indicator131_out));
  LUT6 #(
    .INIT(64'h00F0000088000000)) 
    scl_is_high_i_2
       (.I0(scl_is_high_i_7_n_0),
        .I1(en_end_indicator_reg_n_0),
        .I2(reg_sda_o_tristate_oe_i_9_n_0),
        .I3(scl_prev),
        .I4(scl_curr),
        .I5(scl_is_high_i_8_n_0),
        .O(scl_is_high_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    scl_is_high_i_3
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(scl_is_high_i_9_n_0),
        .O(scl_is_high_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    scl_is_high_i_4
       (.I0(\clk_i2c_cntr_reg_n_0_[10] ),
        .I1(\clk_i2c_cntr_reg_n_0_[8] ),
        .I2(\clk_i2c_cntr_reg_n_0_[13] ),
        .I3(\clk_i2c_cntr_reg_n_0_[15] ),
        .I4(scl_is_high_i_10_n_0),
        .O(scl_is_high_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000040000C0000)) 
    scl_is_high_i_5
       (.I0(p_0_in_0[3]),
        .I1(scl_is_high11_in),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[0] ),
        .O(scl_is_high_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000A0000000C00)) 
    scl_is_high_i_6
       (.I0(en_end_indicator131_out),
        .I1(scl_is_high11_in),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(scl_is_high_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    scl_is_high_i_7
       (.I0(scl_is_high_i_4_n_0),
        .I1(scl_is_high_i_9_n_0),
        .I2(scl_is_high_reg_n_0),
        .O(scl_is_high_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    scl_is_high_i_8
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .O(scl_is_high_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    scl_is_high_i_9
       (.I0(\clk_i2c_cntr_reg_n_0_[6] ),
        .I1(\clk_i2c_cntr_reg_n_0_[2] ),
        .I2(\clk_i2c_cntr_reg_n_0_[0] ),
        .I3(\clk_i2c_cntr_reg_n_0_[7] ),
        .I4(\clk_i2c_cntr_reg_n_0_[3] ),
        .I5(\state[3]_i_13_n_0 ),
        .O(scl_is_high_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scl_is_high_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(scl_is_high_i_1_n_0),
        .Q(scl_is_high_reg_n_0));
  LUT6 #(
    .INIT(64'hFAEAFFFFFAEA0000)) 
    scl_is_low_i_1
       (.I0(scl_is_low_i_2_n_0),
        .I1(scl_is_low_i_3_n_0),
        .I2(p_28_in),
        .I3(scl_is_low_i_5_n_0),
        .I4(scl_is_low_i_6_n_0),
        .I5(scl_is_low_reg_n_0),
        .O(scl_is_low_i_1_n_0));
  LUT6 #(
    .INIT(64'h00FF000000FB0000)) 
    scl_is_low_i_2
       (.I0(\clk_i2c_cntr_reg_n_0_[7] ),
        .I1(scl_is_low_reg_n_0),
        .I2(scl_is_high_i_4_n_0),
        .I3(scl_curr),
        .I4(scl_prev),
        .I5(\clk_i2c_cntr_reg_n_0_[6] ),
        .O(scl_is_low_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    scl_is_low_i_3
       (.I0(\clk_i2c_cntr_reg_n_0_[1] ),
        .I1(\clk_i2c_cntr_reg_n_0_[0] ),
        .I2(\clk_i2c_cntr_reg_n_0_[2] ),
        .O(scl_is_low_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    scl_is_low_i_4
       (.I0(scl_prev),
        .I1(scl_curr),
        .O(p_28_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    scl_is_low_i_5
       (.I0(\clk_i2c_cntr_reg_n_0_[4] ),
        .I1(\clk_i2c_cntr_reg_n_0_[5] ),
        .I2(\clk_i2c_cntr_reg_n_0_[3] ),
        .O(scl_is_low_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000080000222800)) 
    scl_is_low_i_6
       (.I0(scl_is_low_i_7_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(sub_len1__0),
        .O(scl_is_low_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    scl_is_low_i_7
       (.I0(scl_is_high_i_4_n_0),
        .I1(scl_is_low_i_8_n_0),
        .I2(\clk_i2c_cntr_reg_n_0_[0] ),
        .I3(\clk_i2c_cntr_reg_n_0_[1] ),
        .I4(\clk_i2c_cntr_reg_n_0_[2] ),
        .I5(p_28_in),
        .O(scl_is_low_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    scl_is_low_i_8
       (.I0(\clk_i2c_cntr_reg_n_0_[3] ),
        .I1(\clk_i2c_cntr_reg_n_0_[4] ),
        .I2(\clk_i2c_cntr_reg_n_0_[5] ),
        .I3(\clk_i2c_cntr_reg_n_0_[6] ),
        .I4(\clk_i2c_cntr_reg_n_0_[7] ),
        .I5(scl_is_low_reg_n_0),
        .O(scl_is_low_i_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scl_is_low_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(scl_is_low_i_1_n_0),
        .Q(scl_is_low_reg_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    scl_prev_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(scl_curr),
        .Q(scl_prev));
  LUT1 #(
    .INIT(2'h1)) 
    sda_IOBUF_inst_i_2
       (.I0(sda_IOBUF_inst_i_3_n_0),
        .O(sda_IOBUF_inst_i_3_0));
  LUT6 #(
    .INIT(64'hFFFFEEEFFFFFEEE0)) 
    sda_IOBUF_inst_i_3
       (.I0(sda_IOBUF_inst_i_4_n_0),
        .I1(\byte_len[1]_i_1_n_0 ),
        .I2(reg_sda_o_tristate_oe_i_4_n_0),
        .I3(reg_sda_o_tristate_oe_i_5_n_0),
        .I4(reg_sda_o_tristate_oe_i_6_n_0),
        .I5(sda_IOBUF_inst_i_1),
        .O(sda_IOBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAEEAAFAAAAAAA)) 
    sda_IOBUF_inst_i_4
       (.I0(sda_IOBUF_inst_i_6_n_0),
        .I1(sda_IOBUF_inst_i_7_n_0),
        .I2(reg_sda_o_tristate_oe_i_12_n_0),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(sda_IOBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h0044004000400040)) 
    sda_IOBUF_inst_i_6
       (.I0(sub_len1__0),
        .I1(scl_is_low_reg_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(sda_IOBUF_inst_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    sda_IOBUF_inst_i_7
       (.I0(\next_state_reg_n_0_[3] ),
        .I1(\next_state_reg_n_0_[2] ),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(\next_state_reg_n_0_[0] ),
        .I4(ack_in_prog_reg_n_0),
        .O(sda_IOBUF_inst_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \sda_curr[1]_i_1 
       (.I0(rst_IBUF),
        .O(rst));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_curr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\sda_curr_reg[0]_0 ),
        .Q(\sda_curr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_curr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(\sda_curr_reg_n_0_[0] ),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    sda_prev_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in),
        .Q(sda_prev));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF10FF1E)) 
    \state[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\state[2]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\state_reg[0]_3 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00000F0F00F0A2FF)) 
    \state[0]_i_1__0 
       (.I0(\next_state_reg_n_0_[0] ),
        .I1(sda_prev),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFAAAFAAAAAAAEAA)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state_reg[1]_0 ),
        .I2(\state[2]_i_2_n_0 ),
        .I3(\state_reg[1]_1 ),
        .I4(\state_reg[1]_2 ),
        .I5(\state_reg[1]_3 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h000CF00F0F040F00)) 
    \state[1]_i_1__0 
       (.I0(sda_prev),
        .I1(\next_state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000011010000110D)) 
    \state[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\state[2]_i_2_n_0 ),
        .I5(CO),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000BF000033C3)) 
    \state[2]_i_1 
       (.I0(i_data_write),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(\state[2]_i_2_n_0 ),
        .I5(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h4242000240400000)) 
    \state[2]_i_1__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(sda_prev),
        .I4(\state_reg_n_0_[0] ),
        .I5(\next_state_reg_n_0_[2] ),
        .O(\state[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[2]_i_2 
       (.I0(busy),
        .I1(nack),
        .O(\state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(next_state_2),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state[3]_i_4_n_0 ),
        .I4(\state[3]_i_5_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088800000000)) 
    \state[3]_i_10 
       (.I0(\state[3]_i_14_n_0 ),
        .I1(clk_i2c_i_5_n_0),
        .I2(\clk_i2c_cntr_reg_n_0_[0] ),
        .I3(\clk_i2c_cntr_reg_n_0_[1] ),
        .I4(\clk_i2c_cntr_reg_n_0_[2] ),
        .I5(clk_i2c_i_2_n_0),
        .O(busy__18));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \state[3]_i_11 
       (.I0(\clk_i2c_cntr_reg_n_0_[1] ),
        .I1(\clk_i2c_cntr_reg_n_0_[4] ),
        .I2(\clk_i2c_cntr_reg_n_0_[5] ),
        .I3(\clk_i2c_cntr_reg_n_0_[3] ),
        .I4(\state[3]_i_15_n_0 ),
        .O(\state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \state[3]_i_12 
       (.I0(\clk_i2c_cntr_reg_n_0_[4] ),
        .I1(\clk_i2c_cntr_reg_n_0_[3] ),
        .I2(\clk_i2c_cntr_reg_n_0_[5] ),
        .O(\state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \state[3]_i_13 
       (.I0(\clk_i2c_cntr_reg_n_0_[4] ),
        .I1(\clk_i2c_cntr_reg_n_0_[5] ),
        .I2(\clk_i2c_cntr_reg_n_0_[1] ),
        .O(\state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \state[3]_i_14 
       (.I0(\clk_i2c_cntr_reg_n_0_[1] ),
        .I1(\clk_i2c_cntr_reg_n_0_[2] ),
        .I2(\clk_i2c_cntr_reg_n_0_[5] ),
        .I3(\clk_i2c_cntr_reg_n_0_[3] ),
        .I4(\clk_i2c_cntr_reg_n_0_[4] ),
        .O(\state[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \state[3]_i_15 
       (.I0(\clk_i2c_cntr_reg_n_0_[7] ),
        .I1(\clk_i2c_cntr_reg_n_0_[0] ),
        .I2(\clk_i2c_cntr_reg_n_0_[2] ),
        .I3(\clk_i2c_cntr_reg_n_0_[6] ),
        .O(\state[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBFAAAA)) 
    \state[3]_i_1__0 
       (.I0(\state[3]_i_3__0_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\state[3]_i_4__0_n_0 ),
        .I5(\state_reg[0]_2 ),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \state[3]_i_2 
       (.I0(\state[3]_i_6__0_n_0 ),
        .I1(state),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h000F0A020FF0F0F0)) 
    \state[3]_i_2__0 
       (.I0(\next_state_reg_n_0_[3] ),
        .I1(sda_prev),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    \state[3]_i_3 
       (.I0(\state[3]_i_6_n_0 ),
        .I1(grab_next_data),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[3]_i_7_n_0 ),
        .I4(\state[3]_i_8_n_0 ),
        .I5(\data_in_sr[7]_i_2_n_0 ),
        .O(\state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAB70000)) 
    \state[3]_i_3__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(valid_out),
        .I5(\state[2]_i_2_n_0 ),
        .O(\state[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \state[3]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(reg_sda_o10_out),
        .I2(busy__18),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFEFDFBBF)) 
    \state[3]_i_4__0 
       (.I0(busy),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\state[3]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h020F0200)) 
    \state[3]_i_5 
       (.I0(byte_sent6_out),
        .I1(ack_in_prog_reg_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\data_in_sr[7]_i_2_n_0 ),
        .O(\state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \state[3]_i_6 
       (.I0(nack_i_5_n_0),
        .I1(\byte_sr[7]_i_4_n_0 ),
        .I2(\state[3]_i_11_n_0 ),
        .I3(scl_prev),
        .I4(scl_curr),
        .I5(scl_is_high_i_4_n_0),
        .O(\state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \state[3]_i_6__0 
       (.I0(\state_reg[1]_3 ),
        .I1(\byte_len_reg[1]_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(nack),
        .I5(busy),
        .O(\state[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[3]_i_7 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \state[3]_i_8 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \state[3]_i_9 
       (.I0(\clk_i2c_cntr[15]_i_5_n_0 ),
        .I1(scl_is_high_reg_n_0),
        .I2(\state[3]_i_12_n_0 ),
        .I3(\state[3]_i_13_n_0 ),
        .I4(clk_i2c_i_5_n_0),
        .I5(clk_i2c_i_2_n_0),
        .O(reg_sda_o10_out));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\state[3]_i_2__0_n_0 ),
        .Q(\state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \sub_addr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_len[1]_i_1_n_0 ),
        .CLR(rst),
        .D(\sub_addr_reg[11]_0 ),
        .Q(\sub_addr_reg_n_0_[11] ));
  LUT5 #(
    .INIT(32'h10000000)) 
    valid_out_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(p_0_in_0[3]),
        .O(ack_nack));
  FDCE #(
    .INIT(1'b0)) 
    valid_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst),
        .D(ack_nack),
        .Q(valid_out));
endmodule

(* AWAIT_DATA = "4'b0111" *) (* CONFIG_BITS = "8'b10000011" *) (* DEVICE_ID = "8'b11001011" *) 
(* ERROR = "4'b1001" *) (* I2C_ADDR = "7'b1001011" *) (* INCR_DATA_AQ = "4'b1000" *) 
(* READ_REQ = "4'b0110" *) (* SETUP = "4'b0000" *) (* TEMP_DATA_AQ = "4'b0101" *) 
(* VERIFY_ID = "4'b0001" *) (* WRITE_CONFIG = "4'b0010" *) (* WRITE_FINISH = "4'b0100" *) 
(* WRITE_REQ = "4'b0011" *) 
(* NotValidForBitStream *)
module top
   (clk,
    rst,
    scl,
    sda,
    TMP_INT,
    TMP_CT,
    anode,
    _7LED);
  input clk;
  input rst;
  inout scl;
  inout sda;
  input TMP_INT;
  input TMP_CT;
  output [7:0]anode;
  output [7:0]_7LED;

  wire [19:0]SSEG_data;
  wire \SSEG_data[0]_i_1_n_0 ;
  wire \SSEG_data[0]_i_2_n_0 ;
  wire \SSEG_data[0]_i_3_n_0 ;
  wire \SSEG_data[11]_i_1_n_0 ;
  wire \SSEG_data[14]_i_1_n_0 ;
  wire \SSEG_data[15]_i_1_n_0 ;
  wire \SSEG_data[19]_i_1_n_0 ;
  wire \SSEG_data[19]_i_2_n_0 ;
  wire \SSEG_data[1]_i_1_n_0 ;
  wire \SSEG_data[1]_i_2_n_0 ;
  wire \SSEG_data[2]_i_1_n_0 ;
  wire \SSEG_data[2]_i_2_n_0 ;
  wire \SSEG_data[3]_i_1_n_0 ;
  wire \SSEG_data[3]_i_2_n_0 ;
  wire \SSEG_data[4]_i_1_n_0 ;
  wire \SSEG_data[4]_i_2_n_0 ;
  wire \SSEG_data[5]_i_1_n_0 ;
  wire \SSEG_data[5]_i_2_n_0 ;
  wire \SSEG_data[6]_i_1_n_0 ;
  wire \SSEG_data[6]_i_2_n_0 ;
  wire \SSEG_data[7]_i_1_n_0 ;
  wire \SSEG_data[8]_i_1_n_0 ;
  wire \SSEG_data[8]_i_2_n_0 ;
  wire [7:0]_7LED;
  wire [7:1]_7LED_OBUF;
  wire [7:0]anode;
  wire [4:0]anode_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \cntr[0]_i_2_n_0 ;
  wire \cntr[0]_i_3_n_0 ;
  wire \cntr[0]_i_4_n_0 ;
  wire \cntr[0]_i_5_n_0 ;
  wire \cntr[0]_i_6_n_0 ;
  wire \cntr[0]_i_7_n_0 ;
  wire \cntr[0]_i_8_n_0 ;
  wire \cntr[0]_i_9_n_0 ;
  wire \cntr[16]_i_2_n_0 ;
  wire \cntr[16]_i_3_n_0 ;
  wire \cntr[16]_i_4_n_0 ;
  wire \cntr[16]_i_5_n_0 ;
  wire \cntr[16]_i_6_n_0 ;
  wire \cntr[16]_i_7_n_0 ;
  wire \cntr[16]_i_8_n_0 ;
  wire \cntr[16]_i_9_n_0 ;
  wire \cntr[24]_i_2_n_0 ;
  wire \cntr[24]_i_3_n_0 ;
  wire \cntr[24]_i_4_n_0 ;
  wire \cntr[8]_i_2_n_0 ;
  wire \cntr[8]_i_3_n_0 ;
  wire \cntr[8]_i_4_n_0 ;
  wire \cntr[8]_i_5_n_0 ;
  wire \cntr[8]_i_6_n_0 ;
  wire \cntr[8]_i_7_n_0 ;
  wire \cntr[8]_i_8_n_0 ;
  wire \cntr[8]_i_9_n_0 ;
  wire [26:0]cntr_reg;
  wire \cntr_reg[0]_i_1_n_0 ;
  wire \cntr_reg[0]_i_1_n_1 ;
  wire \cntr_reg[0]_i_1_n_10 ;
  wire \cntr_reg[0]_i_1_n_11 ;
  wire \cntr_reg[0]_i_1_n_12 ;
  wire \cntr_reg[0]_i_1_n_13 ;
  wire \cntr_reg[0]_i_1_n_14 ;
  wire \cntr_reg[0]_i_1_n_15 ;
  wire \cntr_reg[0]_i_1_n_2 ;
  wire \cntr_reg[0]_i_1_n_3 ;
  wire \cntr_reg[0]_i_1_n_4 ;
  wire \cntr_reg[0]_i_1_n_5 ;
  wire \cntr_reg[0]_i_1_n_6 ;
  wire \cntr_reg[0]_i_1_n_7 ;
  wire \cntr_reg[0]_i_1_n_8 ;
  wire \cntr_reg[0]_i_1_n_9 ;
  wire \cntr_reg[16]_i_1_n_0 ;
  wire \cntr_reg[16]_i_1_n_1 ;
  wire \cntr_reg[16]_i_1_n_10 ;
  wire \cntr_reg[16]_i_1_n_11 ;
  wire \cntr_reg[16]_i_1_n_12 ;
  wire \cntr_reg[16]_i_1_n_13 ;
  wire \cntr_reg[16]_i_1_n_14 ;
  wire \cntr_reg[16]_i_1_n_15 ;
  wire \cntr_reg[16]_i_1_n_2 ;
  wire \cntr_reg[16]_i_1_n_3 ;
  wire \cntr_reg[16]_i_1_n_4 ;
  wire \cntr_reg[16]_i_1_n_5 ;
  wire \cntr_reg[16]_i_1_n_6 ;
  wire \cntr_reg[16]_i_1_n_7 ;
  wire \cntr_reg[16]_i_1_n_8 ;
  wire \cntr_reg[16]_i_1_n_9 ;
  wire \cntr_reg[24]_i_1_n_13 ;
  wire \cntr_reg[24]_i_1_n_14 ;
  wire \cntr_reg[24]_i_1_n_15 ;
  wire \cntr_reg[24]_i_1_n_6 ;
  wire \cntr_reg[24]_i_1_n_7 ;
  wire \cntr_reg[8]_i_1_n_0 ;
  wire \cntr_reg[8]_i_1_n_1 ;
  wire \cntr_reg[8]_i_1_n_10 ;
  wire \cntr_reg[8]_i_1_n_11 ;
  wire \cntr_reg[8]_i_1_n_12 ;
  wire \cntr_reg[8]_i_1_n_13 ;
  wire \cntr_reg[8]_i_1_n_14 ;
  wire \cntr_reg[8]_i_1_n_15 ;
  wire \cntr_reg[8]_i_1_n_2 ;
  wire \cntr_reg[8]_i_1_n_3 ;
  wire \cntr_reg[8]_i_1_n_4 ;
  wire \cntr_reg[8]_i_1_n_5 ;
  wire \cntr_reg[8]_i_1_n_6 ;
  wire \cntr_reg[8]_i_1_n_7 ;
  wire \cntr_reg[8]_i_1_n_8 ;
  wire \cntr_reg[8]_i_1_n_9 ;
  wire [7:0]data_out;
  wire [7:0]data_read;
  wire en_cntr_reg_n_0;
  wire [0:0]i_byte_len;
  wire \i_byte_len_reg_n_0_[0] ;
  wire \i_byte_len_reg_n_0_[1] ;
  wire [7:7]i_data_write;
  wire i_i2c_master_n_0;
  wire i_i2c_master_n_10;
  wire i_i2c_master_n_11;
  wire i_i2c_master_n_12;
  wire i_i2c_master_n_4;
  wire i_i2c_master_n_5;
  wire i_i2c_master_n_6;
  wire i_i2c_master_n_7;
  wire i_i2c_master_n_8;
  wire i_i2c_master_n_9;
  wire next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire [23:0]read_bytes;
  wire [23:1]read_bytes0;
  wire \read_bytes[0]_i_1_n_0 ;
  wire \read_bytes[10]_i_1_n_0 ;
  wire \read_bytes[11]_i_1_n_0 ;
  wire \read_bytes[12]_i_1_n_0 ;
  wire \read_bytes[13]_i_1_n_0 ;
  wire \read_bytes[14]_i_1_n_0 ;
  wire \read_bytes[15]_i_1_n_0 ;
  wire \read_bytes[16]_i_1_n_0 ;
  wire \read_bytes[17]_i_1_n_0 ;
  wire \read_bytes[18]_i_1_n_0 ;
  wire \read_bytes[19]_i_1_n_0 ;
  wire \read_bytes[1]_i_1_n_0 ;
  wire \read_bytes[20]_i_1_n_0 ;
  wire \read_bytes[21]_i_1_n_0 ;
  wire \read_bytes[22]_i_1_n_0 ;
  wire \read_bytes[23]_i_10_n_0 ;
  wire \read_bytes[23]_i_11_n_0 ;
  wire \read_bytes[23]_i_12_n_0 ;
  wire \read_bytes[23]_i_13_n_0 ;
  wire \read_bytes[23]_i_14_n_0 ;
  wire \read_bytes[23]_i_15_n_0 ;
  wire \read_bytes[23]_i_16_n_0 ;
  wire \read_bytes[23]_i_1_n_0 ;
  wire \read_bytes[23]_i_2_n_0 ;
  wire \read_bytes[23]_i_6_n_0 ;
  wire \read_bytes[23]_i_7_n_0 ;
  wire \read_bytes[23]_i_8_n_0 ;
  wire \read_bytes[23]_i_9_n_0 ;
  wire \read_bytes[2]_i_1_n_0 ;
  wire \read_bytes[3]_i_1_n_0 ;
  wire \read_bytes[4]_i_1_n_0 ;
  wire \read_bytes[5]_i_1_n_0 ;
  wire \read_bytes[6]_i_1_n_0 ;
  wire \read_bytes[7]_i_1_n_0 ;
  wire \read_bytes[8]_i_1_n_0 ;
  wire \read_bytes[9]_i_1_n_0 ;
  wire \read_bytes_reg[16]_i_2_n_0 ;
  wire \read_bytes_reg[16]_i_2_n_1 ;
  wire \read_bytes_reg[16]_i_2_n_2 ;
  wire \read_bytes_reg[16]_i_2_n_3 ;
  wire \read_bytes_reg[16]_i_2_n_4 ;
  wire \read_bytes_reg[16]_i_2_n_5 ;
  wire \read_bytes_reg[16]_i_2_n_6 ;
  wire \read_bytes_reg[16]_i_2_n_7 ;
  wire \read_bytes_reg[23]_i_3_n_5 ;
  wire \read_bytes_reg[23]_i_3_n_6 ;
  wire \read_bytes_reg[23]_i_3_n_7 ;
  wire \read_bytes_reg[23]_i_4_n_2 ;
  wire \read_bytes_reg[23]_i_4_n_3 ;
  wire \read_bytes_reg[23]_i_4_n_4 ;
  wire \read_bytes_reg[23]_i_4_n_5 ;
  wire \read_bytes_reg[23]_i_4_n_6 ;
  wire \read_bytes_reg[23]_i_4_n_7 ;
  wire \read_bytes_reg[23]_i_5_n_0 ;
  wire \read_bytes_reg[23]_i_5_n_1 ;
  wire \read_bytes_reg[23]_i_5_n_2 ;
  wire \read_bytes_reg[23]_i_5_n_3 ;
  wire \read_bytes_reg[23]_i_5_n_4 ;
  wire \read_bytes_reg[23]_i_5_n_5 ;
  wire \read_bytes_reg[23]_i_5_n_6 ;
  wire \read_bytes_reg[23]_i_5_n_7 ;
  wire \read_bytes_reg[8]_i_2_n_0 ;
  wire \read_bytes_reg[8]_i_2_n_1 ;
  wire \read_bytes_reg[8]_i_2_n_2 ;
  wire \read_bytes_reg[8]_i_2_n_3 ;
  wire \read_bytes_reg[8]_i_2_n_4 ;
  wire \read_bytes_reg[8]_i_2_n_5 ;
  wire \read_bytes_reg[8]_i_2_n_6 ;
  wire \read_bytes_reg[8]_i_2_n_7 ;
  wire request_transmit;
  wire rst;
  wire rst_IBUF;
  wire scl;
  wire scl_OBUF;
  wire scl_TRI;
  wire sda;
  wire sda_IBUF;
  wire sda_IOBUF_inst_i_5_n_0;
  wire sda_OBUF;
  wire sda_TRI;
  wire slave_addr;
  wire \slave_addr[0]_i_10_n_0 ;
  wire \slave_addr[0]_i_11_n_0 ;
  wire \slave_addr[0]_i_2_n_0 ;
  wire \slave_addr[0]_i_4_n_0 ;
  wire \slave_addr[0]_i_5_n_0 ;
  wire \slave_addr[0]_i_6_n_0 ;
  wire \slave_addr[0]_i_7_n_0 ;
  wire \slave_addr[0]_i_8_n_0 ;
  wire \slave_addr[0]_i_9_n_0 ;
  wire \slave_addr_reg_n_0_[0] ;
  wire [0:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state[3]_i_5__0_n_0 ;
  wire \state[3]_i_8__0_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire [15:0]temp_data;
  wire [26:3]temp_data1;
  wire \temp_data[15]_i_10_n_0 ;
  wire \temp_data[15]_i_11_n_0 ;
  wire \temp_data[15]_i_12_n_0 ;
  wire \temp_data[15]_i_13_n_0 ;
  wire \temp_data[15]_i_14_n_0 ;
  wire \temp_data[15]_i_15_n_0 ;
  wire \temp_data[15]_i_16_n_0 ;
  wire \temp_data[15]_i_17_n_0 ;
  wire \temp_data[15]_i_18_n_0 ;
  wire \temp_data[15]_i_1_n_0 ;
  wire \temp_data[15]_i_22_n_0 ;
  wire \temp_data[15]_i_23_n_0 ;
  wire \temp_data[15]_i_24_n_0 ;
  wire \temp_data[15]_i_25_n_0 ;
  wire \temp_data[15]_i_26_n_0 ;
  wire \temp_data[15]_i_27_n_0 ;
  wire \temp_data[15]_i_28_n_0 ;
  wire \temp_data[15]_i_29_n_0 ;
  wire \temp_data[15]_i_2_n_0 ;
  wire \temp_data[15]_i_30_n_0 ;
  wire \temp_data[15]_i_31_n_0 ;
  wire \temp_data[15]_i_32_n_0 ;
  wire \temp_data[15]_i_33_n_0 ;
  wire \temp_data[15]_i_34_n_0 ;
  wire \temp_data[15]_i_35_n_0 ;
  wire \temp_data[15]_i_36_n_0 ;
  wire \temp_data[15]_i_37_n_0 ;
  wire \temp_data[15]_i_3_n_0 ;
  wire \temp_data[15]_i_5_n_0 ;
  wire \temp_data[15]_i_6_n_0 ;
  wire \temp_data[15]_i_7_n_0 ;
  wire \temp_data[15]_i_8_n_0 ;
  wire \temp_data[15]_i_9_n_0 ;
  wire \temp_data[7]_i_1_n_0 ;
  wire \temp_data_reg[15]_i_19_n_0 ;
  wire \temp_data_reg[15]_i_19_n_1 ;
  wire \temp_data_reg[15]_i_19_n_2 ;
  wire \temp_data_reg[15]_i_19_n_3 ;
  wire \temp_data_reg[15]_i_19_n_4 ;
  wire \temp_data_reg[15]_i_19_n_5 ;
  wire \temp_data_reg[15]_i_19_n_6 ;
  wire \temp_data_reg[15]_i_19_n_7 ;
  wire \temp_data_reg[15]_i_20_n_0 ;
  wire \temp_data_reg[15]_i_20_n_1 ;
  wire \temp_data_reg[15]_i_20_n_2 ;
  wire \temp_data_reg[15]_i_20_n_3 ;
  wire \temp_data_reg[15]_i_20_n_4 ;
  wire \temp_data_reg[15]_i_20_n_5 ;
  wire \temp_data_reg[15]_i_20_n_6 ;
  wire \temp_data_reg[15]_i_20_n_7 ;
  wire \temp_data_reg[15]_i_21_n_7 ;
  wire \temp_data_reg[15]_i_4_n_0 ;
  wire \temp_data_reg[15]_i_4_n_1 ;
  wire \temp_data_reg[15]_i_4_n_2 ;
  wire \temp_data_reg[15]_i_4_n_3 ;
  wire \temp_data_reg[15]_i_4_n_4 ;
  wire \temp_data_reg[15]_i_4_n_5 ;
  wire \temp_data_reg[15]_i_4_n_6 ;
  wire \temp_data_reg[15]_i_4_n_7 ;
  wire [7:2]\NLW_cntr_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_cntr_reg[24]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_read_bytes_reg[23]_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_read_bytes_reg[23]_i_3_O_UNCONNECTED ;
  wire [7:6]\NLW_read_bytes_reg[23]_i_4_CO_UNCONNECTED ;
  wire [7:7]\NLW_read_bytes_reg[23]_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_read_bytes_reg[23]_i_5_O_UNCONNECTED ;
  wire [7:1]\NLW_temp_data_reg[15]_i_21_CO_UNCONNECTED ;
  wire [7:0]\NLW_temp_data_reg[15]_i_21_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF0F0EEEE0FF0EEEE)) 
    \SSEG_data[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(data_read[0]),
        .I2(temp_data[7]),
        .I3(temp_data[15]),
        .I4(\state_reg_n_0_[2] ),
        .I5(\SSEG_data[0]_i_2_n_0 ),
        .O(\SSEG_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \SSEG_data[0]_i_2 
       (.I0(\SSEG_data[0]_i_3_n_0 ),
        .I1(temp_data[0]),
        .I2(temp_data[1]),
        .I3(temp_data[2]),
        .O(\SSEG_data[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \SSEG_data[0]_i_3 
       (.I0(temp_data[6]),
        .I1(temp_data[5]),
        .I2(temp_data[4]),
        .I3(temp_data[3]),
        .O(\SSEG_data[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \SSEG_data[11]_i_1 
       (.I0(temp_data[15]),
        .I1(\state_reg_n_0_[2] ),
        .O(\SSEG_data[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \SSEG_data[14]_i_1 
       (.I0(temp_data[15]),
        .I1(\state_reg_n_0_[2] ),
        .O(\SSEG_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h23)) 
    \SSEG_data[15]_i_1 
       (.I0(temp_data[15]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\SSEG_data[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h020F0000)) 
    \SSEG_data[19]_i_1 
       (.I0(slave_addr),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\SSEG_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \SSEG_data[19]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(temp_data[15]),
        .I2(\state_reg_n_0_[3] ),
        .O(\SSEG_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0EEEEF0F0EEEE)) 
    \SSEG_data[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(data_read[1]),
        .I2(temp_data[8]),
        .I3(temp_data[15]),
        .I4(\state_reg_n_0_[2] ),
        .I5(\SSEG_data[1]_i_2_n_0 ),
        .O(\SSEG_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \SSEG_data[1]_i_2 
       (.I0(temp_data[7]),
        .I1(\SSEG_data[0]_i_2_n_0 ),
        .O(\SSEG_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55FCAAFCFFFC00FC)) 
    \SSEG_data[2]_i_1 
       (.I0(\SSEG_data[2]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(data_read[2]),
        .I3(\state_reg_n_0_[2] ),
        .I4(temp_data[9]),
        .I5(temp_data[15]),
        .O(\SSEG_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \SSEG_data[2]_i_2 
       (.I0(\SSEG_data[0]_i_2_n_0 ),
        .I1(temp_data[7]),
        .I2(temp_data[8]),
        .O(\SSEG_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1310333023200300)) 
    \SSEG_data[3]_i_1 
       (.I0(\SSEG_data[3]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(data_read[3]),
        .I4(temp_data[15]),
        .I5(temp_data[10]),
        .O(\SSEG_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SSEG_data[3]_i_2 
       (.I0(\SSEG_data[2]_i_2_n_0 ),
        .I1(temp_data[9]),
        .O(\SSEG_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2320333013100300)) 
    \SSEG_data[4]_i_1 
       (.I0(\SSEG_data[4]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(data_read[4]),
        .I4(temp_data[15]),
        .I5(temp_data[11]),
        .O(\SSEG_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \SSEG_data[4]_i_2 
       (.I0(temp_data[9]),
        .I1(\SSEG_data[2]_i_2_n_0 ),
        .I2(temp_data[10]),
        .O(\SSEG_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1310333023200300)) 
    \SSEG_data[5]_i_1 
       (.I0(\SSEG_data[5]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(data_read[5]),
        .I4(temp_data[15]),
        .I5(temp_data[12]),
        .O(\SSEG_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SSEG_data[5]_i_2 
       (.I0(temp_data[11]),
        .I1(temp_data[10]),
        .I2(\SSEG_data[2]_i_2_n_0 ),
        .I3(temp_data[9]),
        .O(\SSEG_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1310333023200300)) 
    \SSEG_data[6]_i_1 
       (.I0(\SSEG_data[6]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(data_read[6]),
        .I4(temp_data[15]),
        .I5(temp_data[13]),
        .O(\SSEG_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \SSEG_data[6]_i_2 
       (.I0(temp_data[9]),
        .I1(\SSEG_data[2]_i_2_n_0 ),
        .I2(temp_data[10]),
        .I3(temp_data[11]),
        .I4(temp_data[12]),
        .O(\SSEG_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1310333023200300)) 
    \SSEG_data[7]_i_1 
       (.I0(\SSEG_data[8]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(data_read[7]),
        .I4(temp_data[15]),
        .I5(temp_data[14]),
        .O(\SSEG_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \SSEG_data[8]_i_1 
       (.I0(\SSEG_data[8]_i_2_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(temp_data[15]),
        .I3(temp_data[14]),
        .I4(\state_reg_n_0_[3] ),
        .O(\SSEG_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \SSEG_data[8]_i_2 
       (.I0(temp_data[12]),
        .I1(temp_data[11]),
        .I2(temp_data[10]),
        .I3(\SSEG_data[2]_i_2_n_0 ),
        .I4(temp_data[9]),
        .I5(temp_data[13]),
        .O(\SSEG_data[8]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[0]_i_1_n_0 ),
        .Q(SSEG_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[11]_i_1_n_0 ),
        .Q(SSEG_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[14]_i_1_n_0 ),
        .Q(SSEG_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[15]_i_1_n_0 ),
        .Q(SSEG_data[15]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[19]_i_2_n_0 ),
        .Q(SSEG_data[19]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[1]_i_1_n_0 ),
        .Q(SSEG_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[2]_i_1_n_0 ),
        .Q(SSEG_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[3]_i_1_n_0 ),
        .Q(SSEG_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[4]_i_1_n_0 ),
        .Q(SSEG_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[5]_i_1_n_0 ),
        .Q(SSEG_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[6]_i_1_n_0 ),
        .Q(SSEG_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[7]_i_1_n_0 ),
        .Q(SSEG_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \SSEG_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\SSEG_data[19]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\SSEG_data[8]_i_1_n_0 ),
        .Q(SSEG_data[8]));
  OBUF \_7LED_OBUF[0]_inst 
       (.I(1'b0),
        .O(_7LED[0]));
  OBUF \_7LED_OBUF[1]_inst 
       (.I(_7LED_OBUF[1]),
        .O(_7LED[1]));
  OBUF \_7LED_OBUF[2]_inst 
       (.I(_7LED_OBUF[2]),
        .O(_7LED[2]));
  OBUF \_7LED_OBUF[3]_inst 
       (.I(_7LED_OBUF[3]),
        .O(_7LED[3]));
  OBUF \_7LED_OBUF[4]_inst 
       (.I(_7LED_OBUF[4]),
        .O(_7LED[4]));
  OBUF \_7LED_OBUF[5]_inst 
       (.I(_7LED_OBUF[5]),
        .O(_7LED[5]));
  OBUF \_7LED_OBUF[6]_inst 
       (.I(_7LED_OBUF[6]),
        .O(_7LED[6]));
  OBUF \_7LED_OBUF[7]_inst 
       (.I(_7LED_OBUF[7]),
        .O(_7LED[7]));
  OBUF \anode_OBUF[0]_inst 
       (.I(anode_OBUF[0]),
        .O(anode[0]));
  OBUF \anode_OBUF[1]_inst 
       (.I(anode_OBUF[1]),
        .O(anode[1]));
  OBUF \anode_OBUF[2]_inst 
       (.I(anode_OBUF[2]),
        .O(anode[2]));
  OBUF \anode_OBUF[3]_inst 
       (.I(anode_OBUF[3]),
        .O(anode[3]));
  OBUF \anode_OBUF[4]_inst 
       (.I(anode_OBUF[4]),
        .O(anode[4]));
  OBUF \anode_OBUF[5]_inst 
       (.I(1'b1),
        .O(anode[5]));
  OBUF \anode_OBUF[6]_inst 
       (.I(1'b1),
        .O(anode[6]));
  OBUF \anode_OBUF[7]_inst 
       (.I(1'b1),
        .O(anode[7]));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[0]_i_2 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[7]),
        .O(\cntr[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[0]_i_3 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[6]),
        .O(\cntr[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[0]_i_4 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[5]),
        .O(\cntr[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[0]_i_5 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[4]),
        .O(\cntr[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[0]_i_6 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[3]),
        .O(\cntr[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[0]_i_7 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[2]),
        .O(\cntr[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[0]_i_8 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[1]),
        .O(\cntr[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \cntr[0]_i_9 
       (.I0(cntr_reg[0]),
        .I1(en_cntr_reg_n_0),
        .O(\cntr[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[16]_i_2 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[23]),
        .O(\cntr[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[16]_i_3 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[22]),
        .O(\cntr[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[16]_i_4 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[21]),
        .O(\cntr[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[16]_i_5 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[20]),
        .O(\cntr[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[16]_i_6 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[19]),
        .O(\cntr[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[16]_i_7 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[18]),
        .O(\cntr[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[16]_i_8 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[17]),
        .O(\cntr[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[16]_i_9 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[16]),
        .O(\cntr[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[24]_i_2 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[26]),
        .O(\cntr[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[24]_i_3 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[25]),
        .O(\cntr[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[24]_i_4 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[24]),
        .O(\cntr[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[8]_i_2 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[15]),
        .O(\cntr[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[8]_i_3 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[14]),
        .O(\cntr[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[8]_i_4 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[13]),
        .O(\cntr[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[8]_i_5 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[12]),
        .O(\cntr[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[8]_i_6 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[11]),
        .O(\cntr[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[8]_i_7 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[10]),
        .O(\cntr[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[8]_i_8 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[9]),
        .O(\cntr[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cntr[8]_i_9 
       (.I0(en_cntr_reg_n_0),
        .I1(cntr_reg[8]),
        .O(\cntr[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[0]_i_1_n_15 ),
        .Q(cntr_reg[0]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \cntr_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\cntr_reg[0]_i_1_n_0 ,\cntr_reg[0]_i_1_n_1 ,\cntr_reg[0]_i_1_n_2 ,\cntr_reg[0]_i_1_n_3 ,\cntr_reg[0]_i_1_n_4 ,\cntr_reg[0]_i_1_n_5 ,\cntr_reg[0]_i_1_n_6 ,\cntr_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_cntr_reg_n_0}),
        .O({\cntr_reg[0]_i_1_n_8 ,\cntr_reg[0]_i_1_n_9 ,\cntr_reg[0]_i_1_n_10 ,\cntr_reg[0]_i_1_n_11 ,\cntr_reg[0]_i_1_n_12 ,\cntr_reg[0]_i_1_n_13 ,\cntr_reg[0]_i_1_n_14 ,\cntr_reg[0]_i_1_n_15 }),
        .S({\cntr[0]_i_2_n_0 ,\cntr[0]_i_3_n_0 ,\cntr[0]_i_4_n_0 ,\cntr[0]_i_5_n_0 ,\cntr[0]_i_6_n_0 ,\cntr[0]_i_7_n_0 ,\cntr[0]_i_8_n_0 ,\cntr[0]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[8]_i_1_n_13 ),
        .Q(cntr_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[8]_i_1_n_12 ),
        .Q(cntr_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[8]_i_1_n_11 ),
        .Q(cntr_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[8]_i_1_n_10 ),
        .Q(cntr_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[8]_i_1_n_9 ),
        .Q(cntr_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[8]_i_1_n_8 ),
        .Q(cntr_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[16]_i_1_n_15 ),
        .Q(cntr_reg[16]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \cntr_reg[16]_i_1 
       (.CI(\cntr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cntr_reg[16]_i_1_n_0 ,\cntr_reg[16]_i_1_n_1 ,\cntr_reg[16]_i_1_n_2 ,\cntr_reg[16]_i_1_n_3 ,\cntr_reg[16]_i_1_n_4 ,\cntr_reg[16]_i_1_n_5 ,\cntr_reg[16]_i_1_n_6 ,\cntr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[16]_i_1_n_8 ,\cntr_reg[16]_i_1_n_9 ,\cntr_reg[16]_i_1_n_10 ,\cntr_reg[16]_i_1_n_11 ,\cntr_reg[16]_i_1_n_12 ,\cntr_reg[16]_i_1_n_13 ,\cntr_reg[16]_i_1_n_14 ,\cntr_reg[16]_i_1_n_15 }),
        .S({\cntr[16]_i_2_n_0 ,\cntr[16]_i_3_n_0 ,\cntr[16]_i_4_n_0 ,\cntr[16]_i_5_n_0 ,\cntr[16]_i_6_n_0 ,\cntr[16]_i_7_n_0 ,\cntr[16]_i_8_n_0 ,\cntr[16]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[16]_i_1_n_14 ),
        .Q(cntr_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[16]_i_1_n_13 ),
        .Q(cntr_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[16]_i_1_n_12 ),
        .Q(cntr_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[0]_i_1_n_14 ),
        .Q(cntr_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[16]_i_1_n_11 ),
        .Q(cntr_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[16]_i_1_n_10 ),
        .Q(cntr_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[16]_i_1_n_9 ),
        .Q(cntr_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[16]_i_1_n_8 ),
        .Q(cntr_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[24]_i_1_n_15 ),
        .Q(cntr_reg[24]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \cntr_reg[24]_i_1 
       (.CI(\cntr_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_cntr_reg[24]_i_1_CO_UNCONNECTED [7:2],\cntr_reg[24]_i_1_n_6 ,\cntr_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cntr_reg[24]_i_1_O_UNCONNECTED [7:3],\cntr_reg[24]_i_1_n_13 ,\cntr_reg[24]_i_1_n_14 ,\cntr_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\cntr[24]_i_2_n_0 ,\cntr[24]_i_3_n_0 ,\cntr[24]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[24]_i_1_n_14 ),
        .Q(cntr_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[24]_i_1_n_13 ),
        .Q(cntr_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[0]_i_1_n_13 ),
        .Q(cntr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[0]_i_1_n_12 ),
        .Q(cntr_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[0]_i_1_n_11 ),
        .Q(cntr_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[0]_i_1_n_10 ),
        .Q(cntr_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[0]_i_1_n_9 ),
        .Q(cntr_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[0]_i_1_n_8 ),
        .Q(cntr_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[8]_i_1_n_15 ),
        .Q(cntr_reg[8]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \cntr_reg[8]_i_1 
       (.CI(\cntr_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cntr_reg[8]_i_1_n_0 ,\cntr_reg[8]_i_1_n_1 ,\cntr_reg[8]_i_1_n_2 ,\cntr_reg[8]_i_1_n_3 ,\cntr_reg[8]_i_1_n_4 ,\cntr_reg[8]_i_1_n_5 ,\cntr_reg[8]_i_1_n_6 ,\cntr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[8]_i_1_n_8 ,\cntr_reg[8]_i_1_n_9 ,\cntr_reg[8]_i_1_n_10 ,\cntr_reg[8]_i_1_n_11 ,\cntr_reg[8]_i_1_n_12 ,\cntr_reg[8]_i_1_n_13 ,\cntr_reg[8]_i_1_n_14 ,\cntr_reg[8]_i_1_n_15 }),
        .S({\cntr[8]_i_2_n_0 ,\cntr[8]_i_3_n_0 ,\cntr[8]_i_4_n_0 ,\cntr[8]_i_5_n_0 ,\cntr[8]_i_6_n_0 ,\cntr[8]_i_7_n_0 ,\cntr[8]_i_8_n_0 ,\cntr[8]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(\cntr_reg[8]_i_1_n_14 ),
        .Q(cntr_reg[9]));
  FDCE #(
    .INIT(1'b0)) 
    \data_read_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_9),
        .CLR(i_i2c_master_n_0),
        .D(data_out[0]),
        .Q(data_read[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_read_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_9),
        .CLR(i_i2c_master_n_0),
        .D(data_out[1]),
        .Q(data_read[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_read_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_9),
        .CLR(i_i2c_master_n_0),
        .D(data_out[2]),
        .Q(data_read[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_read_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_9),
        .CLR(i_i2c_master_n_0),
        .D(data_out[3]),
        .Q(data_read[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_read_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_9),
        .CLR(i_i2c_master_n_0),
        .D(data_out[4]),
        .Q(data_read[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_read_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_9),
        .CLR(i_i2c_master_n_0),
        .D(data_out[5]),
        .Q(data_read[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_read_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_9),
        .CLR(i_i2c_master_n_0),
        .D(data_out[6]),
        .Q(data_read[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_read_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_9),
        .CLR(i_i2c_master_n_0),
        .D(data_out[7]),
        .Q(data_read[7]));
  FDCE #(
    .INIT(1'b0)) 
    en_cntr_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(i_i2c_master_n_10),
        .Q(en_cntr_reg_n_0));
  SSEG i_SSEG
       (.Q({SSEG_data[19],SSEG_data[15:14],SSEG_data[11],SSEG_data[8:0]}),
        ._7LED_OBUF(_7LED_OBUF),
        .anode_OBUF(anode_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\refresh_reg[0]_0 (i_i2c_master_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_byte_len[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .O(i_byte_len));
  FDCE #(
    .INIT(1'b0)) 
    \i_byte_len_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .CLR(i_i2c_master_n_0),
        .D(i_byte_len),
        .Q(\i_byte_len_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_byte_len_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .CLR(i_i2c_master_n_0),
        .D(\state_reg_n_0_[2] ),
        .Q(\i_byte_len_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_data_write_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .CLR(i_i2c_master_n_0),
        .D(\state_reg_n_0_[1] ),
        .Q(i_data_write));
  i2c_master i_i2c_master
       (.CO(\read_bytes_reg[23]_i_3_n_5 ),
        .D({i_i2c_master_n_5,i_i2c_master_n_6,i_i2c_master_n_7,i_i2c_master_n_8}),
        .E(i_i2c_master_n_4),
        .Q({\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .\byte_len_reg[0]_0 (\i_byte_len_reg_n_0_[0] ),
        .\byte_len_reg[1]_0 (\i_byte_len_reg_n_0_[1] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data_out_reg[7]_0 (data_out),
        .en_cntr_reg(en_cntr_reg_n_0),
        .i_data_write(i_data_write),
        .next_state(next_state),
        .request_transmit(request_transmit),
        .rst(i_i2c_master_n_0),
        .rst_IBUF(rst_IBUF),
        .rw_reg_0(\slave_addr_reg_n_0_[0] ),
        .scl_OBUF(scl_OBUF),
        .scl_TRI(scl_TRI),
        .sda_IOBUF_inst_i_1(sda_IOBUF_inst_i_5_n_0),
        .sda_IOBUF_inst_i_3_0(i_i2c_master_n_12),
        .sda_OBUF(sda_OBUF),
        .\sda_curr_reg[0]_0 (sda_IBUF),
        .slave_addr(slave_addr),
        .state(state),
        .\state_reg[0]_0 (i_i2c_master_n_9),
        .\state_reg[0]_1 (i_i2c_master_n_11),
        .\state_reg[0]_2 (\state[3]_i_5__0_n_0 ),
        .\state_reg[0]_3 (\state[0]_i_2_n_0 ),
        .\state_reg[1]_0 (\state[1]_i_3_n_0 ),
        .\state_reg[1]_1 (\state[1]_i_4_n_0 ),
        .\state_reg[1]_2 (\state[1]_i_5_n_0 ),
        .\state_reg[1]_3 (\state[1]_i_6_n_0 ),
        .\state_reg[3]_0 (i_i2c_master_n_10),
        .\sub_addr_reg[11]_0 (\next_state_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \next_state[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\next_state[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .CLR(i_i2c_master_n_0),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \read_bytes[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes[0]),
        .O(\read_bytes[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[10]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[10]),
        .O(\read_bytes[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[11]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[11]),
        .O(\read_bytes[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[12]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[12]),
        .O(\read_bytes[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[13]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[13]),
        .O(\read_bytes[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[14]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[14]),
        .O(\read_bytes[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[15]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[15]),
        .O(\read_bytes[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[16]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[16]),
        .O(\read_bytes[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[17]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[17]),
        .O(\read_bytes[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[18]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[18]),
        .O(\read_bytes[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[19]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[19]),
        .O(\read_bytes[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[1]),
        .O(\read_bytes[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[20]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[20]),
        .O(\read_bytes[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[21]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[21]),
        .O(\read_bytes[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[22]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[22]),
        .O(\read_bytes[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000240004)) 
    \read_bytes[23]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(slave_addr),
        .I5(\read_bytes_reg[23]_i_3_n_5 ),
        .O(\read_bytes[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00081110)) 
    \read_bytes[23]_i_10 
       (.I0(read_bytes[19]),
        .I1(read_bytes[20]),
        .I2(\i_byte_len_reg_n_0_[0] ),
        .I3(\i_byte_len_reg_n_0_[1] ),
        .I4(read_bytes[18]),
        .O(\read_bytes[23]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00081110)) 
    \read_bytes[23]_i_11 
       (.I0(read_bytes[16]),
        .I1(read_bytes[17]),
        .I2(\i_byte_len_reg_n_0_[0] ),
        .I3(\i_byte_len_reg_n_0_[1] ),
        .I4(read_bytes[15]),
        .O(\read_bytes[23]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00081110)) 
    \read_bytes[23]_i_12 
       (.I0(read_bytes[13]),
        .I1(read_bytes[14]),
        .I2(\i_byte_len_reg_n_0_[0] ),
        .I3(\i_byte_len_reg_n_0_[1] ),
        .I4(read_bytes[12]),
        .O(\read_bytes[23]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00081110)) 
    \read_bytes[23]_i_13 
       (.I0(read_bytes[10]),
        .I1(read_bytes[11]),
        .I2(\i_byte_len_reg_n_0_[0] ),
        .I3(\i_byte_len_reg_n_0_[1] ),
        .I4(read_bytes[9]),
        .O(\read_bytes[23]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00081110)) 
    \read_bytes[23]_i_14 
       (.I0(read_bytes[7]),
        .I1(read_bytes[8]),
        .I2(\i_byte_len_reg_n_0_[0] ),
        .I3(\i_byte_len_reg_n_0_[1] ),
        .I4(read_bytes[6]),
        .O(\read_bytes[23]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00081110)) 
    \read_bytes[23]_i_15 
       (.I0(read_bytes[4]),
        .I1(read_bytes[5]),
        .I2(\i_byte_len_reg_n_0_[0] ),
        .I3(\i_byte_len_reg_n_0_[1] ),
        .I4(read_bytes[3]),
        .O(\read_bytes[23]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h04010280)) 
    \read_bytes[23]_i_16 
       (.I0(read_bytes[0]),
        .I1(read_bytes[1]),
        .I2(read_bytes[2]),
        .I3(\i_byte_len_reg_n_0_[1] ),
        .I4(\i_byte_len_reg_n_0_[0] ),
        .O(\read_bytes[23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[23]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[23]),
        .O(\read_bytes[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_bytes[23]_i_6 
       (.I0(\i_byte_len_reg_n_0_[1] ),
        .I1(\i_byte_len_reg_n_0_[0] ),
        .O(\read_bytes[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_bytes[23]_i_7 
       (.I0(\i_byte_len_reg_n_0_[1] ),
        .I1(\i_byte_len_reg_n_0_[0] ),
        .O(\read_bytes[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_bytes[23]_i_8 
       (.I0(\i_byte_len_reg_n_0_[1] ),
        .I1(\i_byte_len_reg_n_0_[0] ),
        .O(\read_bytes[23]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00081110)) 
    \read_bytes[23]_i_9 
       (.I0(read_bytes[22]),
        .I1(read_bytes[23]),
        .I2(\i_byte_len_reg_n_0_[0] ),
        .I3(\i_byte_len_reg_n_0_[1] ),
        .I4(read_bytes[21]),
        .O(\read_bytes[23]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[2]),
        .O(\read_bytes[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[3]),
        .O(\read_bytes[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[4]),
        .O(\read_bytes[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[5]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[5]),
        .O(\read_bytes[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[6]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[6]),
        .O(\read_bytes[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[7]),
        .O(\read_bytes[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[8]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[8]),
        .O(\read_bytes[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bytes[9]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(read_bytes0[9]),
        .O(\read_bytes[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[0]_i_1_n_0 ),
        .Q(read_bytes[0]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[10]_i_1_n_0 ),
        .Q(read_bytes[10]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[11]_i_1_n_0 ),
        .Q(read_bytes[11]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[12]_i_1_n_0 ),
        .Q(read_bytes[12]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[13]_i_1_n_0 ),
        .Q(read_bytes[13]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[14]_i_1_n_0 ),
        .Q(read_bytes[14]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[15]_i_1_n_0 ),
        .Q(read_bytes[15]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[16]_i_1_n_0 ),
        .Q(read_bytes[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \read_bytes_reg[16]_i_2 
       (.CI(\read_bytes_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\read_bytes_reg[16]_i_2_n_0 ,\read_bytes_reg[16]_i_2_n_1 ,\read_bytes_reg[16]_i_2_n_2 ,\read_bytes_reg[16]_i_2_n_3 ,\read_bytes_reg[16]_i_2_n_4 ,\read_bytes_reg[16]_i_2_n_5 ,\read_bytes_reg[16]_i_2_n_6 ,\read_bytes_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(read_bytes0[16:9]),
        .S(read_bytes[16:9]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[17]_i_1_n_0 ),
        .Q(read_bytes[17]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[18]_i_1_n_0 ),
        .Q(read_bytes[18]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[19]_i_1_n_0 ),
        .Q(read_bytes[19]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[1]_i_1_n_0 ),
        .Q(read_bytes[1]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[20]_i_1_n_0 ),
        .Q(read_bytes[20]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[21]_i_1_n_0 ),
        .Q(read_bytes[21]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[22]_i_1_n_0 ),
        .Q(read_bytes[22]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[23]_i_2_n_0 ),
        .Q(read_bytes[23]));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \read_bytes_reg[23]_i_3 
       (.CI(\read_bytes_reg[23]_i_5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_read_bytes_reg[23]_i_3_CO_UNCONNECTED [7:3],\read_bytes_reg[23]_i_3_n_5 ,\read_bytes_reg[23]_i_3_n_6 ,\read_bytes_reg[23]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_read_bytes_reg[23]_i_3_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\read_bytes[23]_i_6_n_0 ,\read_bytes[23]_i_7_n_0 ,\read_bytes[23]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \read_bytes_reg[23]_i_4 
       (.CI(\read_bytes_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_read_bytes_reg[23]_i_4_CO_UNCONNECTED [7:6],\read_bytes_reg[23]_i_4_n_2 ,\read_bytes_reg[23]_i_4_n_3 ,\read_bytes_reg[23]_i_4_n_4 ,\read_bytes_reg[23]_i_4_n_5 ,\read_bytes_reg[23]_i_4_n_6 ,\read_bytes_reg[23]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_read_bytes_reg[23]_i_4_O_UNCONNECTED [7],read_bytes0[23:17]}),
        .S({1'b0,read_bytes[23:17]}));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \read_bytes_reg[23]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\read_bytes_reg[23]_i_5_n_0 ,\read_bytes_reg[23]_i_5_n_1 ,\read_bytes_reg[23]_i_5_n_2 ,\read_bytes_reg[23]_i_5_n_3 ,\read_bytes_reg[23]_i_5_n_4 ,\read_bytes_reg[23]_i_5_n_5 ,\read_bytes_reg[23]_i_5_n_6 ,\read_bytes_reg[23]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_read_bytes_reg[23]_i_5_O_UNCONNECTED [7:0]),
        .S({\read_bytes[23]_i_9_n_0 ,\read_bytes[23]_i_10_n_0 ,\read_bytes[23]_i_11_n_0 ,\read_bytes[23]_i_12_n_0 ,\read_bytes[23]_i_13_n_0 ,\read_bytes[23]_i_14_n_0 ,\read_bytes[23]_i_15_n_0 ,\read_bytes[23]_i_16_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[2]_i_1_n_0 ),
        .Q(read_bytes[2]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[3]_i_1_n_0 ),
        .Q(read_bytes[3]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[4]_i_1_n_0 ),
        .Q(read_bytes[4]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[5]_i_1_n_0 ),
        .Q(read_bytes[5]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[6]_i_1_n_0 ),
        .Q(read_bytes[6]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[7]_i_1_n_0 ),
        .Q(read_bytes[7]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[8]_i_1_n_0 ),
        .Q(read_bytes[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \read_bytes_reg[8]_i_2 
       (.CI(read_bytes[0]),
        .CI_TOP(1'b0),
        .CO({\read_bytes_reg[8]_i_2_n_0 ,\read_bytes_reg[8]_i_2_n_1 ,\read_bytes_reg[8]_i_2_n_2 ,\read_bytes_reg[8]_i_2_n_3 ,\read_bytes_reg[8]_i_2_n_4 ,\read_bytes_reg[8]_i_2_n_5 ,\read_bytes_reg[8]_i_2_n_6 ,\read_bytes_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(read_bytes0[8:1]),
        .S(read_bytes[8:1]));
  FDCE #(
    .INIT(1'b0)) 
    \read_bytes_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\read_bytes[23]_i_1_n_0 ),
        .CLR(i_i2c_master_n_0),
        .D(\read_bytes[9]_i_1_n_0 ),
        .Q(read_bytes[9]));
  FDCE #(
    .INIT(1'b0)) 
    request_transmit_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_i2c_master_n_0),
        .D(i_i2c_master_n_11),
        .Q(request_transmit));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUFT scl_OBUFT_inst
       (.I(scl_OBUF),
        .O(scl),
        .T(scl_TRI));
  IOBUF sda_IOBUF_inst
       (.I(sda_OBUF),
        .IO(sda),
        .O(sda_IBUF),
        .T(sda_TRI));
  FDPE #(
    .INIT(1'b0)) 
    sda_IOBUF_inst_i_1
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(i_i2c_master_n_12),
        .PRE(i_i2c_master_n_0),
        .Q(sda_TRI));
  LUT1 #(
    .INIT(2'h1)) 
    sda_IOBUF_inst_i_5
       (.I0(sda_TRI),
        .O(sda_IOBUF_inst_i_5_n_0));
  LUT5 #(
    .INIT(32'h0000200F)) 
    \slave_addr[0]_i_1 
       (.I0(slave_addr),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .O(next_state));
  LUT4 #(
    .INIT(16'h0004)) 
    \slave_addr[0]_i_10 
       (.I0(cntr_reg[7]),
        .I1(cntr_reg[8]),
        .I2(cntr_reg[5]),
        .I3(cntr_reg[4]),
        .O(\slave_addr[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slave_addr[0]_i_11 
       (.I0(cntr_reg[10]),
        .I1(cntr_reg[11]),
        .I2(cntr_reg[13]),
        .I3(cntr_reg[14]),
        .I4(cntr_reg[17]),
        .I5(cntr_reg[16]),
        .O(\slave_addr[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \slave_addr[0]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .O(\slave_addr[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slave_addr[0]_i_3 
       (.I0(\slave_addr[0]_i_4_n_0 ),
        .I1(\slave_addr[0]_i_5_n_0 ),
        .I2(\slave_addr[0]_i_6_n_0 ),
        .I3(\slave_addr[0]_i_7_n_0 ),
        .O(slave_addr));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slave_addr[0]_i_4 
       (.I0(cntr_reg[23]),
        .I1(cntr_reg[24]),
        .I2(cntr_reg[26]),
        .I3(cntr_reg[25]),
        .I4(\slave_addr[0]_i_8_n_0 ),
        .O(\slave_addr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D5D005D005D00)) 
    \slave_addr[0]_i_5 
       (.I0(cntr_reg[20]),
        .I1(cntr_reg[18]),
        .I2(cntr_reg[19]),
        .I3(cntr_reg[17]),
        .I4(cntr_reg[15]),
        .I5(cntr_reg[16]),
        .O(\slave_addr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00002A0000002A2A)) 
    \slave_addr[0]_i_6 
       (.I0(cntr_reg[14]),
        .I1(cntr_reg[13]),
        .I2(cntr_reg[12]),
        .I3(cntr_reg[10]),
        .I4(cntr_reg[11]),
        .I5(cntr_reg[9]),
        .O(\slave_addr[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slave_addr[0]_i_7 
       (.I0(\slave_addr[0]_i_9_n_0 ),
        .I1(cntr_reg[0]),
        .I2(cntr_reg[1]),
        .I3(cntr_reg[2]),
        .I4(\slave_addr[0]_i_10_n_0 ),
        .I5(\slave_addr[0]_i_11_n_0 ),
        .O(\slave_addr[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slave_addr[0]_i_8 
       (.I0(cntr_reg[19]),
        .I1(cntr_reg[20]),
        .I2(cntr_reg[22]),
        .I3(cntr_reg[21]),
        .O(\slave_addr[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00008A0000008A8A)) 
    \slave_addr[0]_i_9 
       (.I0(cntr_reg[8]),
        .I1(cntr_reg[7]),
        .I2(cntr_reg[6]),
        .I3(cntr_reg[4]),
        .I4(cntr_reg[5]),
        .I5(cntr_reg[3]),
        .O(\slave_addr[0]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \slave_addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(next_state),
        .D(\slave_addr[0]_i_2_n_0 ),
        .PRE(i_i2c_master_n_0),
        .Q(\slave_addr_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'h444400000000F000)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(state),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \state[1]_i_3 
       (.I0(data_read[0]),
        .I1(data_read[1]),
        .I2(data_read[3]),
        .I3(data_read[4]),
        .I4(data_read[5]),
        .I5(\state[1]_i_7_n_0 ),
        .O(\state[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[1]_i_5 
       (.I0(data_read[2]),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_6 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_7 
       (.I0(data_read[6]),
        .I1(data_read[7]),
        .O(\state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFCFC0800)) 
    \state[3]_i_5__0 
       (.I0(slave_addr),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[3]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \state[3]_i_7__0 
       (.I0(data_read[5]),
        .I1(data_read[3]),
        .I2(data_read[4]),
        .I3(data_read[2]),
        .I4(\state[3]_i_8__0_n_0 ),
        .O(state));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[3]_i_8__0 
       (.I0(data_read[0]),
        .I1(data_read[1]),
        .I2(data_read[7]),
        .I3(data_read[6]),
        .O(\state[3]_i_8__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_4),
        .CLR(i_i2c_master_n_0),
        .D(i_i2c_master_n_8),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_4),
        .CLR(i_i2c_master_n_0),
        .D(i_i2c_master_n_7),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_4),
        .CLR(i_i2c_master_n_0),
        .D(i_i2c_master_n_6),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(i_i2c_master_n_4),
        .CLR(i_i2c_master_n_0),
        .D(i_i2c_master_n_5),
        .Q(\state_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \temp_data[15]_i_1 
       (.I0(rst_IBUF),
        .I1(\temp_data[15]_i_2_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\temp_data[15]_i_3_n_0 ),
        .I5(temp_data1[3]),
        .O(\temp_data[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_data[15]_i_10 
       (.I0(temp_data1[7]),
        .I1(temp_data1[6]),
        .I2(temp_data1[5]),
        .I3(temp_data1[4]),
        .O(\temp_data[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_11 
       (.I0(read_bytes[1]),
        .O(\temp_data[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_12 
       (.I0(read_bytes[7]),
        .O(\temp_data[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_13 
       (.I0(read_bytes[6]),
        .O(\temp_data[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_14 
       (.I0(read_bytes[5]),
        .O(\temp_data[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_15 
       (.I0(read_bytes[4]),
        .O(\temp_data[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_16 
       (.I0(read_bytes[3]),
        .O(\temp_data[15]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_17 
       (.I0(read_bytes[2]),
        .O(\temp_data[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_18 
       (.I0(read_bytes[0]),
        .O(\temp_data[15]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \temp_data[15]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\temp_data[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_22 
       (.I0(read_bytes[15]),
        .O(\temp_data[15]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_23 
       (.I0(read_bytes[14]),
        .O(\temp_data[15]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_24 
       (.I0(read_bytes[13]),
        .O(\temp_data[15]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_25 
       (.I0(read_bytes[12]),
        .O(\temp_data[15]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_26 
       (.I0(read_bytes[11]),
        .O(\temp_data[15]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_27 
       (.I0(read_bytes[10]),
        .O(\temp_data[15]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_28 
       (.I0(read_bytes[9]),
        .O(\temp_data[15]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_29 
       (.I0(read_bytes[8]),
        .O(\temp_data[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \temp_data[15]_i_3 
       (.I0(\temp_data[15]_i_5_n_0 ),
        .I1(\temp_data[15]_i_6_n_0 ),
        .I2(\temp_data[15]_i_7_n_0 ),
        .I3(\temp_data[15]_i_8_n_0 ),
        .I4(\temp_data[15]_i_9_n_0 ),
        .I5(\temp_data[15]_i_10_n_0 ),
        .O(\temp_data[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_30 
       (.I0(read_bytes[23]),
        .O(\temp_data[15]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_31 
       (.I0(read_bytes[22]),
        .O(\temp_data[15]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_32 
       (.I0(read_bytes[21]),
        .O(\temp_data[15]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_33 
       (.I0(read_bytes[20]),
        .O(\temp_data[15]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_34 
       (.I0(read_bytes[19]),
        .O(\temp_data[15]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_35 
       (.I0(read_bytes[18]),
        .O(\temp_data[15]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_36 
       (.I0(read_bytes[17]),
        .O(\temp_data[15]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_data[15]_i_37 
       (.I0(read_bytes[16]),
        .O(\temp_data[15]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \temp_data[15]_i_5 
       (.I0(temp_data1[17]),
        .I1(temp_data1[16]),
        .I2(temp_data1[19]),
        .I3(temp_data1[18]),
        .O(\temp_data[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \temp_data[15]_i_6 
       (.I0(temp_data1[26]),
        .I1(\temp_data_reg[15]_i_21_n_7 ),
        .I2(temp_data1[25]),
        .I3(temp_data1[24]),
        .O(\temp_data[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \temp_data[15]_i_7 
       (.I0(temp_data1[23]),
        .I1(temp_data1[22]),
        .I2(temp_data1[21]),
        .I3(temp_data1[20]),
        .O(\temp_data[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_data[15]_i_8 
       (.I0(temp_data1[15]),
        .I1(temp_data1[14]),
        .I2(temp_data1[13]),
        .I3(temp_data1[12]),
        .O(\temp_data[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_data[15]_i_9 
       (.I0(temp_data1[11]),
        .I1(temp_data1[10]),
        .I2(temp_data1[9]),
        .I3(temp_data1[8]),
        .O(\temp_data[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \temp_data[7]_i_1 
       (.I0(rst_IBUF),
        .I1(\temp_data[15]_i_2_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(temp_data1[3]),
        .I5(\temp_data[15]_i_3_n_0 ),
        .O(\temp_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(data_read[0]),
        .Q(temp_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(data_read[2]),
        .Q(temp_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(data_read[3]),
        .Q(temp_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(data_read[4]),
        .Q(temp_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(data_read[5]),
        .Q(temp_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(data_read[6]),
        .Q(temp_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(data_read[7]),
        .Q(temp_data[15]),
        .R(1'b0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \temp_data_reg[15]_i_19 
       (.CI(\temp_data_reg[15]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\temp_data_reg[15]_i_19_n_0 ,\temp_data_reg[15]_i_19_n_1 ,\temp_data_reg[15]_i_19_n_2 ,\temp_data_reg[15]_i_19_n_3 ,\temp_data_reg[15]_i_19_n_4 ,\temp_data_reg[15]_i_19_n_5 ,\temp_data_reg[15]_i_19_n_6 ,\temp_data_reg[15]_i_19_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(temp_data1[18:11]),
        .S({\temp_data[15]_i_22_n_0 ,\temp_data[15]_i_23_n_0 ,\temp_data[15]_i_24_n_0 ,\temp_data[15]_i_25_n_0 ,\temp_data[15]_i_26_n_0 ,\temp_data[15]_i_27_n_0 ,\temp_data[15]_i_28_n_0 ,\temp_data[15]_i_29_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \temp_data_reg[15]_i_20 
       (.CI(\temp_data_reg[15]_i_19_n_0 ),
        .CI_TOP(1'b0),
        .CO({\temp_data_reg[15]_i_20_n_0 ,\temp_data_reg[15]_i_20_n_1 ,\temp_data_reg[15]_i_20_n_2 ,\temp_data_reg[15]_i_20_n_3 ,\temp_data_reg[15]_i_20_n_4 ,\temp_data_reg[15]_i_20_n_5 ,\temp_data_reg[15]_i_20_n_6 ,\temp_data_reg[15]_i_20_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(temp_data1[26:19]),
        .S({\temp_data[15]_i_30_n_0 ,\temp_data[15]_i_31_n_0 ,\temp_data[15]_i_32_n_0 ,\temp_data[15]_i_33_n_0 ,\temp_data[15]_i_34_n_0 ,\temp_data[15]_i_35_n_0 ,\temp_data[15]_i_36_n_0 ,\temp_data[15]_i_37_n_0 }));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \temp_data_reg[15]_i_21 
       (.CI(\temp_data_reg[15]_i_20_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_temp_data_reg[15]_i_21_CO_UNCONNECTED [7:1],\temp_data_reg[15]_i_21_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_temp_data_reg[15]_i_21_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \temp_data_reg[15]_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\temp_data_reg[15]_i_4_n_0 ,\temp_data_reg[15]_i_4_n_1 ,\temp_data_reg[15]_i_4_n_2 ,\temp_data_reg[15]_i_4_n_3 ,\temp_data_reg[15]_i_4_n_4 ,\temp_data_reg[15]_i_4_n_5 ,\temp_data_reg[15]_i_4_n_6 ,\temp_data_reg[15]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\temp_data[15]_i_11_n_0 ,1'b0}),
        .O(temp_data1[10:3]),
        .S({\temp_data[15]_i_12_n_0 ,\temp_data[15]_i_13_n_0 ,\temp_data[15]_i_14_n_0 ,\temp_data[15]_i_15_n_0 ,\temp_data[15]_i_16_n_0 ,\temp_data[15]_i_17_n_0 ,read_bytes[1],\temp_data[15]_i_18_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(data_read[1]),
        .Q(temp_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(data_read[2]),
        .Q(temp_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(data_read[3]),
        .Q(temp_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(data_read[4]),
        .Q(temp_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(data_read[5]),
        .Q(temp_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(data_read[6]),
        .Q(temp_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(data_read[7]),
        .Q(temp_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(data_read[0]),
        .Q(temp_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(data_read[1]),
        .Q(temp_data[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
