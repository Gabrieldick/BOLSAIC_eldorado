// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Oct 31 11:37:33 2023
// Host        : Notebook-GMD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/BOLSAIC_eldorado/Codigos/Master_and_slave/Master_and_slave.sim/sim_1/impl/timing/xsim/Top_func_tb_time_impl.v
// Design      : Top_func
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module I2CMASTER
   (NACK_OBUF,
    QUEUED_OBUF,
    DATA_VALID_OBUF,
    STOP_OBUF,
    SDA_OUT,
    SCL_OUT,
    Q,
    \STATUS_reg[2]_0 ,
    sda_in_q_reg_0,
    MCLK_M_IBUF_BUFG,
    SRST_IBUF,
    WE_M_IBUF,
    RD_M_IBUF,
    TIC_IBUF,
    nRST_M_IBUF,
    DIN_M_IBUF);
  output NACK_OBUF;
  output QUEUED_OBUF;
  output DATA_VALID_OBUF;
  output STOP_OBUF;
  output SDA_OUT;
  output SCL_OUT;
  output [7:0]Q;
  output [2:0]\STATUS_reg[2]_0 ;
  input sda_in_q_reg_0;
  input MCLK_M_IBUF_BUFG;
  input SRST_IBUF;
  input WE_M_IBUF;
  input RD_M_IBUF;
  input TIC_IBUF;
  input nRST_M_IBUF;
  input [7:0]DIN_M_IBUF;

  wire DATA_VALID_OBUF;
  wire DATA_VALID_i_1_n_0;
  wire DATA_VALID_i_2_n_0;
  wire DATA_VALID_i_3_n_0;
  wire DATA_VALID_i_4_n_0;
  wire [7:0]DIN_M_IBUF;
  wire \DOUT[0]_i_1_n_0 ;
  wire \DOUT[1]_i_1_n_0 ;
  wire \DOUT[2]_i_1_n_0 ;
  wire \DOUT[3]_i_1_n_0 ;
  wire \DOUT[4]_i_1_n_0 ;
  wire \DOUT[5]_i_1_n_0 ;
  wire \DOUT[6]_i_1_n_0 ;
  wire \DOUT[7]_i_1_n_0 ;
  wire \DOUT[7]_i_2_n_0 ;
  wire \DOUT[7]_i_3_n_0 ;
  wire MCLK_M_IBUF_BUFG;
  wire NACK_OBUF;
  wire NACK_i_1_n_0;
  wire NACK_i_2_n_0;
  wire NACK_i_3_n_0;
  wire NACK_i_4_n_0;
  wire [7:0]Q;
  wire QUEUED_OBUF;
  wire QUEUED_i_1_n_0;
  wire QUEUED_i_2_n_0;
  wire QUEUED_i_3_n_0;
  wire QUEUED_i_4_n_0;
  wire RD_M_IBUF;
  wire SCL_OUT;
  wire SCL_OUT_i_1_n_0;
  wire SCL_OUT_i_2_n_0;
  wire SCL_OUT_i_3_n_0;
  wire SCL_OUT_i_4_n_0;
  wire SCL_OUT_i_5_n_0;
  wire SDA_OUT;
  wire SDA_OUT_i_1__0_n_0;
  wire SDA_OUT_i_2_n_0;
  wire SDA_OUT_i_3_n_0;
  wire SDA_OUT_i_4_n_0;
  wire SDA_OUT_i_5_n_0;
  wire SDA_OUT_i_6_n_0;
  wire SDA_OUT_i_7_n_0;
  wire SRST_IBUF;
  wire \STATUS[0]_i_1_n_0 ;
  wire \STATUS[1]_i_1_n_0 ;
  wire \STATUS[2]_i_1_n_0 ;
  wire \STATUS[2]_i_2_n_0 ;
  wire \STATUS[2]_i_3_n_0 ;
  wire [2:0]\STATUS_reg[2]_0 ;
  wire STOP_OBUF;
  wire STOP_i_1_n_0;
  wire STOP_i_2_n_0;
  wire STOP_i_3_n_0;
  wire TIC_IBUF;
  wire WE_M_IBUF;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter[3]_i_5_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire data50;
  wire nRST_M_IBUF;
  wire nackdet_i_1_n_0;
  wire nackdet_i_2_n_0;
  wire nackdet_i_3_n_0;
  wire nackdet_reg_n_0;
  wire [3:0]next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[0]_i_2_n_0 ;
  wire \next_state[0]_i_3_n_0 ;
  wire \next_state[3]_i_1_n_0 ;
  wire \next_state[3]_i_2_n_0 ;
  wire [7:7]p_1_in;
  wire [7:1]p_2_in;
  wire sda_in_q;
  wire sda_in_q_reg_0;
  wire sda_in_qq;
  wire [7:0]shift;
  wire \shift[0]_i_1_n_0 ;
  wire \shift[0]_i_3_n_0 ;
  wire \shift[0]_i_4_n_0 ;
  wire \shift[0]_i_5_n_0 ;
  wire \shift[7]_i_3_n_0 ;
  wire \shift[7]_i_4_n_0 ;
  wire \shift_reg[0]_i_2_n_0 ;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4__0_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state[4]_i_8_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;

  LUT6 #(
    .INIT(64'h0000000004FF0400)) 
    DATA_VALID_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(NACK_i_3_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(DATA_VALID_i_3_n_0),
        .I5(SRST_IBUF),
        .O(DATA_VALID_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    DATA_VALID_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(TIC_IBUF),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[4] ),
        .O(DATA_VALID_i_2_n_0));
  LUT6 #(
    .INIT(64'hFC330000FF3B003B)) 
    DATA_VALID_i_3
       (.I0(DATA_VALID_i_4_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(TIC_IBUF),
        .I5(\state_reg_n_0_[1] ),
        .O(DATA_VALID_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    DATA_VALID_i_4
       (.I0(WE_M_IBUF),
        .I1(nackdet_reg_n_0),
        .O(DATA_VALID_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    DATA_VALID_reg
       (.C(MCLK_M_IBUF_BUFG),
        .CE(DATA_VALID_i_1_n_0),
        .CLR(\state[4]_i_3_n_0 ),
        .D(DATA_VALID_i_2_n_0),
        .Q(DATA_VALID_OBUF));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \DOUT[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(shift[0]),
        .I4(\state_reg_n_0_[1] ),
        .O(\DOUT[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \DOUT[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(shift[1]),
        .I4(\state_reg_n_0_[1] ),
        .O(\DOUT[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \DOUT[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(shift[2]),
        .I4(\state_reg_n_0_[1] ),
        .O(\DOUT[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \DOUT[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(shift[3]),
        .I4(\state_reg_n_0_[1] ),
        .O(\DOUT[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \DOUT[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(shift[4]),
        .I4(\state_reg_n_0_[1] ),
        .O(\DOUT[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \DOUT[5]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(shift[5]),
        .I4(\state_reg_n_0_[1] ),
        .O(\DOUT[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \DOUT[6]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(shift[6]),
        .I4(\state_reg_n_0_[1] ),
        .O(\DOUT[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040554000)) 
    \DOUT[7]_i_1 
       (.I0(SRST_IBUF),
        .I1(\DOUT[7]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state[4]_i_6_n_0 ),
        .I5(\state_reg_n_0_[4] ),
        .O(\DOUT[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \DOUT[7]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(shift[7]),
        .I4(\state_reg_n_0_[1] ),
        .O(\DOUT[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \DOUT[7]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[0] ),
        .O(\DOUT[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\DOUT[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\DOUT[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\DOUT[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\DOUT[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\DOUT[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\DOUT[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\DOUT[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\DOUT[7]_i_2_n_0 ),
        .Q(Q[7]));
  LUT6 #(
    .INIT(64'h0000000004FF0400)) 
    NACK_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(NACK_i_3_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(NACK_i_4_n_0),
        .I5(SRST_IBUF),
        .O(NACK_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008020)) 
    NACK_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(nackdet_reg_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[4] ),
        .O(NACK_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    NACK_i_3
       (.I0(TIC_IBUF),
        .I1(\state_reg_n_0_[1] ),
        .O(NACK_i_3_n_0));
  LUT6 #(
    .INIT(64'hFF8F0080FFEF004F)) 
    NACK_i_4
       (.I0(\state_reg_n_0_[0] ),
        .I1(nackdet_reg_n_0),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(TIC_IBUF),
        .I5(\state_reg_n_0_[1] ),
        .O(NACK_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    NACK_reg
       (.C(MCLK_M_IBUF_BUFG),
        .CE(NACK_i_1_n_0),
        .CLR(\state[4]_i_3_n_0 ),
        .D(NACK_i_2_n_0),
        .Q(NACK_OBUF));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    QUEUED_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(NACK_i_3_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(SRST_IBUF),
        .I4(\state_reg_n_0_[4] ),
        .I5(QUEUED_i_3_n_0),
        .O(QUEUED_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    QUEUED_i_2
       (.I0(QUEUED_i_4_n_0),
        .I1(\state_reg_n_0_[4] ),
        .O(QUEUED_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000CFCDC0CD)) 
    QUEUED_i_3
       (.I0(\state_reg_n_0_[1] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\counter[3]_i_5_n_0 ),
        .I5(SRST_IBUF),
        .O(QUEUED_i_3_n_0));
  LUT6 #(
    .INIT(64'h4040050000000000)) 
    QUEUED_i_4
       (.I0(\state_reg_n_0_[2] ),
        .I1(RD_M_IBUF),
        .I2(\state_reg_n_0_[0] ),
        .I3(WE_M_IBUF),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(QUEUED_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    QUEUED_reg
       (.C(MCLK_M_IBUF_BUFG),
        .CE(QUEUED_i_1_n_0),
        .CLR(\state[4]_i_3_n_0 ),
        .D(QUEUED_i_2_n_0),
        .Q(QUEUED_OBUF));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    SCL_OUT_i_1
       (.I0(SCL_OUT_i_2_n_0),
        .I1(SCL_OUT_i_3_n_0),
        .I2(\state_reg_n_0_[4] ),
        .I3(SCL_OUT_i_4_n_0),
        .I4(SCL_OUT),
        .O(SCL_OUT_i_1_n_0));
  LUT6 #(
    .INIT(64'hAB00BE00EC01AB01)) 
    SCL_OUT_i_2
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(TIC_IBUF),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(SCL_OUT_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    SCL_OUT_i_3
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(TIC_IBUF),
        .I3(\state_reg_n_0_[2] ),
        .I4(SRST_IBUF),
        .O(SCL_OUT_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000CFCDC0CD)) 
    SCL_OUT_i_4
       (.I0(\state_reg_n_0_[1] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(SCL_OUT_i_5_n_0),
        .I5(SRST_IBUF),
        .O(SCL_OUT_i_4_n_0));
  LUT6 #(
    .INIT(64'hFCF374C0FCF374F3)) 
    SCL_OUT_i_5
       (.I0(RD_M_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(TIC_IBUF),
        .I3(\state_reg_n_0_[1] ),
        .I4(nackdet_reg_n_0),
        .I5(WE_M_IBUF),
        .O(SCL_OUT_i_5_n_0));
  FDPE #(
    .INIT(1'b1)) 
    SCL_OUT_reg
       (.C(MCLK_M_IBUF_BUFG),
        .CE(1'b1),
        .D(SCL_OUT_i_1_n_0),
        .PRE(\state[4]_i_3_n_0 ),
        .Q(SCL_OUT));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    SDA_OUT_i_1__0
       (.I0(SDA_OUT_i_2_n_0),
        .I1(SRST_IBUF),
        .I2(SDA_OUT_i_3_n_0),
        .I3(\state_reg_n_0_[4] ),
        .I4(SDA_OUT),
        .O(SDA_OUT_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    SDA_OUT_i_2
       (.I0(SDA_OUT_i_4_n_0),
        .I1(\state_reg_n_0_[2] ),
        .I2(SDA_OUT_i_5_n_0),
        .I3(\state_reg_n_0_[3] ),
        .I4(SDA_OUT_i_6_n_0),
        .O(SDA_OUT_i_2_n_0));
  LUT6 #(
    .INIT(64'hC80B08083BCB0B0B)) 
    SDA_OUT_i_3
       (.I0(SDA_OUT_i_7_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(TIC_IBUF),
        .I5(\state_reg_n_0_[1] ),
        .O(SDA_OUT_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    SDA_OUT_i_4
       (.I0(RD_M_IBUF),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(TIC_IBUF),
        .O(SDA_OUT_i_4_n_0));
  LUT6 #(
    .INIT(64'h30003000B833B800)) 
    SDA_OUT_i_5
       (.I0(WE_M_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(TIC_IBUF),
        .I3(\state_reg_n_0_[1] ),
        .I4(RD_M_IBUF),
        .I5(nackdet_reg_n_0),
        .O(SDA_OUT_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCDC88D8D)) 
    SDA_OUT_i_6
       (.I0(\state_reg_n_0_[2] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[0] ),
        .I3(shift[7]),
        .I4(\state_reg_n_0_[1] ),
        .O(SDA_OUT_i_6_n_0));
  LUT6 #(
    .INIT(64'hF6FE0008F7FF0100)) 
    SDA_OUT_i_7
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(nackdet_reg_n_0),
        .I3(RD_M_IBUF),
        .I4(TIC_IBUF),
        .I5(WE_M_IBUF),
        .O(SDA_OUT_i_7_n_0));
  FDPE #(
    .INIT(1'b1)) 
    SDA_OUT_reg
       (.C(MCLK_M_IBUF_BUFG),
        .CE(1'b1),
        .D(SDA_OUT_i_1__0_n_0),
        .PRE(\state[4]_i_3_n_0 ),
        .Q(SDA_OUT));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7F05EE08)) 
    \STATUS[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(TIC_IBUF),
        .I4(\state_reg_n_0_[0] ),
        .O(\STATUS[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF8F1E460)) 
    \STATUS[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(TIC_IBUF),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\STATUS[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \STATUS[2]_i_1 
       (.I0(\STATUS[2]_i_3_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .O(\STATUS[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFA80EE08)) 
    \STATUS[2]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(TIC_IBUF),
        .I4(\state_reg_n_0_[0] ),
        .O(\STATUS[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008440405D)) 
    \STATUS[2]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(SRST_IBUF),
        .O(\STATUS[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \STATUS_reg[0] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\STATUS[2]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\STATUS[0]_i_1_n_0 ),
        .Q(\STATUS_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \STATUS_reg[1] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\STATUS[2]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\STATUS[1]_i_1_n_0 ),
        .Q(\STATUS_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \STATUS_reg[2] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\STATUS[2]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\STATUS[2]_i_2_n_0 ),
        .Q(\STATUS_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    STOP_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(NACK_i_3_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(SRST_IBUF),
        .I4(\state_reg_n_0_[4] ),
        .I5(STOP_i_3_n_0),
        .O(STOP_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA00AA00FE00CC00)) 
    STOP_i_2
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(TIC_IBUF),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(STOP_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000CC40CC5D)) 
    STOP_i_3
       (.I0(\state_reg_n_0_[1] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(SRST_IBUF),
        .O(STOP_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    STOP_reg
       (.C(MCLK_M_IBUF_BUFG),
        .CE(STOP_i_1_n_0),
        .CLR(\state[4]_i_3_n_0 ),
        .D(STOP_i_2_n_0),
        .Q(STOP_OBUF));
  LUT5 #(
    .INIT(32'h0000F7F8)) 
    \counter[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666066666666000)) 
    \counter[1]_i_1__0 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\counter[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF700F800)) 
    \counter[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\counter[2]_i_2_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_2 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(\counter[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \counter[3]_i_1 
       (.I0(SRST_IBUF),
        .I1(\counter[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[4] ),
        .O(counter));
  LUT5 #(
    .INIT(32'hF700F800)) 
    \counter[3]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\counter[3]_i_4_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000C008B88BB8B)) 
    \counter[3]_i_3 
       (.I0(\counter[3]_i_5_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(TIC_IBUF),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\counter[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_4 
       (.I0(data50),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(\counter[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08080300)) 
    \counter[3]_i_5 
       (.I0(RD_M_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(nackdet_reg_n_0),
        .I3(WE_M_IBUF),
        .I4(\state_reg_n_0_[1] ),
        .O(\counter[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(counter),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(counter),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(counter),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(counter),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\counter[3]_i_2_n_0 ),
        .Q(data50));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    nackdet_i_1
       (.I0(nackdet_i_2_n_0),
        .I1(SRST_IBUF),
        .I2(nackdet_i_3_n_0),
        .I3(\state_reg_n_0_[4] ),
        .I4(nackdet_reg_n_0),
        .O(nackdet_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    nackdet_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(sda_in_qq),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[4] ),
        .O(nackdet_i_2_n_0));
  LUT6 #(
    .INIT(64'h0300000080000800)) 
    nackdet_i_3
       (.I0(nackdet_reg_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(TIC_IBUF),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(nackdet_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    nackdet_reg
       (.C(MCLK_M_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state[4]_i_3_n_0 ),
        .D(nackdet_i_1_n_0),
        .Q(nackdet_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFB5551FFFB0000)) 
    \next_state[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(nRST_M_IBUF),
        .I2(\next_state[0]_i_2_n_0 ),
        .I3(SRST_IBUF),
        .I4(next_state[0]),
        .I5(\next_state[0]_i_3_n_0 ),
        .O(\next_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \next_state[0]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(WE_M_IBUF),
        .I3(TIC_IBUF),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\next_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \next_state[0]_i_3 
       (.I0(SRST_IBUF),
        .I1(\state_reg_n_0_[2] ),
        .I2(NACK_i_3_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(nRST_M_IBUF),
        .O(\next_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000400)) 
    \next_state[3]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(nRST_M_IBUF),
        .I2(\state_reg_n_0_[3] ),
        .I3(\next_state[3]_i_2_n_0 ),
        .I4(SRST_IBUF),
        .I5(next_state[3]),
        .O(\next_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \next_state[3]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\next_state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(1'b1),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(next_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[3] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(1'b1),
        .D(\next_state[3]_i_1_n_0 ),
        .Q(next_state[3]),
        .R(1'b0));
  FDPE #(
    .INIT(1'b1)) 
    sda_in_q_reg
       (.C(MCLK_M_IBUF_BUFG),
        .CE(1'b1),
        .D(sda_in_q_reg_0),
        .PRE(\state[4]_i_3_n_0 ),
        .Q(sda_in_q));
  FDPE #(
    .INIT(1'b1)) 
    sda_in_qq_reg
       (.C(MCLK_M_IBUF_BUFG),
        .CE(1'b1),
        .D(sda_in_q),
        .PRE(\state[4]_i_3_n_0 ),
        .Q(sda_in_qq));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \shift[0]_i_1 
       (.I0(\shift_reg[0]_i_2_n_0 ),
        .I1(SRST_IBUF),
        .I2(\shift[0]_i_3_n_0 ),
        .I3(\state_reg_n_0_[4] ),
        .I4(shift[0]),
        .O(\shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0008888B888)) 
    \shift[0]_i_3 
       (.I0(\counter[3]_i_5_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(TIC_IBUF),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\shift[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF0100)) 
    \shift[0]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(WE_M_IBUF),
        .I3(\state_reg_n_0_[0] ),
        .I4(sda_in_qq),
        .O(\shift[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB0F1B0E0)) 
    \shift[0]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(sda_in_qq),
        .I3(\state_reg_n_0_[1] ),
        .I4(DIN_M_IBUF[0]),
        .O(\shift[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF3FCFFFB00000008)) 
    \shift[1]_i_1 
       (.I0(DIN_M_IBUF[1]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shift[0]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hF3FCFFFB00000008)) 
    \shift[2]_i_1 
       (.I0(DIN_M_IBUF[2]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shift[1]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hF3FCFFFB00000008)) 
    \shift[3]_i_1 
       (.I0(DIN_M_IBUF[3]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shift[2]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hF3FFFFFB00030008)) 
    \shift[4]_i_1 
       (.I0(DIN_M_IBUF[4]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shift[3]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hF3FFFFFB00030008)) 
    \shift[5]_i_1 
       (.I0(DIN_M_IBUF[5]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shift[4]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hF3FFFFFB00030008)) 
    \shift[6]_i_1 
       (.I0(DIN_M_IBUF[6]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shift[5]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'h0000000040404540)) 
    \shift[7]_i_1 
       (.I0(SRST_IBUF),
        .I1(\shift[7]_i_3_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\shift[7]_i_4_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[4] ),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hF3FCFFFB00000008)) 
    \shift[7]_i_2 
       (.I0(DIN_M_IBUF[7]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shift[6]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \shift[7]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\counter[3]_i_5_n_0 ),
        .O(\shift[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \shift[7]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[1] ),
        .O(\shift[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\shift[0]_i_1_n_0 ),
        .Q(shift[0]));
  MUXF7 \shift_reg[0]_i_2 
       (.I0(\shift[0]_i_4_n_0 ),
        .I1(\shift[0]_i_5_n_0 ),
        .O(\shift_reg[0]_i_2_n_0 ),
        .S(\state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(p_1_in),
        .CLR(\state[4]_i_3_n_0 ),
        .D(p_2_in[1]),
        .Q(shift[1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(p_1_in),
        .CLR(\state[4]_i_3_n_0 ),
        .D(p_2_in[2]),
        .Q(shift[2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(p_1_in),
        .CLR(\state[4]_i_3_n_0 ),
        .D(p_2_in[3]),
        .Q(shift[3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(p_1_in),
        .CLR(\state[4]_i_3_n_0 ),
        .D(p_2_in[4]),
        .Q(shift[4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(p_1_in),
        .CLR(\state[4]_i_3_n_0 ),
        .D(p_2_in[5]),
        .Q(shift[5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(p_1_in),
        .CLR(\state[4]_i_3_n_0 ),
        .D(p_2_in[6]),
        .Q(shift[6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(p_1_in),
        .CLR(\state[4]_i_3_n_0 ),
        .D(p_2_in[7]),
        .Q(shift[7]));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state[0]_i_3_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state[0]_i_4_n_0 ),
        .I5(SRST_IBUF),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(SRST_IBUF),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB30FFFFBB300000)) 
    \state[0]_i_3 
       (.I0(next_state[0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(data50),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[0]_i_5_n_0 ),
        .O(\state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h38080F0C)) 
    \state[0]_i_4 
       (.I0(data50),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[0]_i_6_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000FAEA)) 
    \state[0]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(RD_M_IBUF),
        .I2(TIC_IBUF),
        .I3(WE_M_IBUF),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \state[0]_i_6 
       (.I0(RD_M_IBUF),
        .I1(WE_M_IBUF),
        .I2(nackdet_reg_n_0),
        .O(\state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \state[1]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state[1]_i_3_n_0 ),
        .I5(SRST_IBUF),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0FFFF30)) 
    \state[1]_i_2 
       (.I0(next_state[0]),
        .I1(data50),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08080808F0F0F0F3)) 
    \state[1]_i_3 
       (.I0(data50),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(nackdet_reg_n_0),
        .I4(\state[1]_i_4__0_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_4__0 
       (.I0(WE_M_IBUF),
        .I1(RD_M_IBUF),
        .O(\state[1]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \state[2]_i_1 
       (.I0(SRST_IBUF),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[4] ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00BBFF00FF00FC00)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(data50),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_3 
       (.I0(RD_M_IBUF),
        .I1(nackdet_reg_n_0),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state[3]_i_3_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state[3]_i_4_n_0 ),
        .I5(SRST_IBUF),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(SRST_IBUF),
        .O(\state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[3]_i_3 
       (.I0(next_state[3]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h66666266FEFEFEFF)) 
    \state[3]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(nackdet_reg_n_0),
        .I3(WE_M_IBUF),
        .I4(RD_M_IBUF),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_4_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state[4]_i_5_n_0 ),
        .I3(SRST_IBUF),
        .O(\state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00003808)) 
    \state[4]_i_2 
       (.I0(\state[4]_i_6_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state[4]_i_7_n_0 ),
        .I4(SRST_IBUF),
        .O(\state[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[4]_i_3 
       (.I0(nRST_M_IBUF),
        .O(\state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000444)) 
    \state[4]_i_4 
       (.I0(\state_reg_n_0_[3] ),
        .I1(TIC_IBUF),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(SRST_IBUF),
        .O(\state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFB0808FBFB080B)) 
    \state[4]_i_5 
       (.I0(\state[4]_i_8_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(TIC_IBUF),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[4]_i_6 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888888800000100)) 
    \state[4]_i_7 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(WE_M_IBUF),
        .I3(RD_M_IBUF),
        .I4(nackdet_reg_n_0),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0083FFFF0080)) 
    \state[4]_i_8 
       (.I0(RD_M_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(nackdet_reg_n_0),
        .I4(TIC_IBUF),
        .I5(WE_M_IBUF),
        .O(\state[4]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(MCLK_M_IBUF_BUFG),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(\state[4]_i_3_n_0 ),
        .D(\state[4]_i_2_n_0 ),
        .Q(\state_reg_n_0_[4] ));
endmodule

module I2CSLAVE
   (WR_S_OBUF,
    RD_S_OBUF,
    SDA_OUT_reg_0,
    Q,
    \DATA_OUT_reg[7]_0 ,
    SDA_OUT,
    CLK,
    SCL_OUT,
    nRST_S_IBUF,
    DATA_IN_S_IBUF);
  output WR_S_OBUF;
  output RD_S_OBUF;
  output SDA_OUT_reg_0;
  output [7:0]Q;
  output [7:0]\DATA_OUT_reg[7]_0 ;
  input SDA_OUT;
  input CLK;
  input SCL_OUT;
  input nRST_S_IBUF;
  input [7:0]DATA_IN_S_IBUF;

  wire CLK;
  wire [7:0]DATA_IN_S_IBUF;
  wire \DATA_OUT[7]_i_1_n_0 ;
  wire [7:0]\DATA_OUT_reg[7]_0 ;
  wire [7:0]Q;
  wire RD_S_OBUF;
  wire SCL_OUT;
  wire SDA_OUT;
  wire SDA_OUT_i_1_n_0;
  wire SDA_OUT_i_2__0_n_0;
  wire SDA_OUT_i_3__0_n_0;
  wire SDA_OUT_i_4__0_n_0;
  wire SDA_OUT_i_5__0_n_0;
  wire SDA_OUT_reg_0;
  wire WR10_out;
  wire WR_S_OBUF;
  wire WR_i_1_n_0;
  wire \address_i[0]_i_1_n_0 ;
  wire \address_i[1]_i_1_n_0 ;
  wire \address_i[2]_i_1_n_0 ;
  wire \address_i[3]_i_1_n_0 ;
  wire \address_i[4]_i_1_n_0 ;
  wire \address_i[4]_i_2_n_0 ;
  wire \address_i[5]_i_1_n_0 ;
  wire \address_i[6]_i_1_n_0 ;
  wire \address_i[7]_i_1_n_0 ;
  wire \address_i[7]_i_2_n_0 ;
  wire \address_i[7]_i_3_n_0 ;
  wire \address_i[7]_i_4_n_0 ;
  wire \address_i[7]_i_5_n_0 ;
  wire \address_i[7]_i_6_n_0 ;
  wire address_incr_i_1_n_0;
  wire address_incr_i_2_n_0;
  wire address_incr_i_3_n_0;
  wire address_incr_i_4_n_0;
  wire address_incr_i_5_n_0;
  wire address_incr_reg_n_0;
  wire [2:0]counter;
  wire counter0;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[2]_i_3_n_0 ;
  wire \counter[2]_i_4_n_0 ;
  wire \counter[2]_i_5_n_0 ;
  wire \counter[2]_i_6_n_0 ;
  wire nRST_S_IBUF;
  wire next_state0;
  wire \next_state[0]_i_1__0_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state[3]_i_2__0_n_0 ;
  wire \next_state[3]_i_3_n_0 ;
  wire \next_state[3]_i_4_n_0 ;
  wire \next_state[3]_i_5_n_0 ;
  wire \next_state[3]_i_6_n_0 ;
  wire \next_state[3]_i_7_n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire \next_state_reg_n_0_[3] ;
  wire operation_i_1_n_0;
  wire operation_i_2_n_0;
  wire operation_i_3_n_0;
  wire operation_i_4_n_0;
  wire operation_i_5_n_0;
  wire operation_reg_n_0;
  wire rd_d;
  wire rd_d_1;
  wire rd_d_i_1_n_0;
  wire rd_d_i_3_n_0;
  wire rd_d_i_4_n_0;
  wire rd_d_i_5_n_0;
  wire rd_d_i_6_n_0;
  wire rd_d_i_7_n_0;
  wire scl_q;
  wire scl_qq;
  wire scl_qqq;
  wire sda;
  wire sda_q;
  wire sda_q_i_1_n_0;
  wire sda_qqq;
  wire [6:0]shiftreg;
  wire \shiftreg[0]_i_1_n_0 ;
  wire \shiftreg[1]_i_1_n_0 ;
  wire \shiftreg[2]_i_1_n_0 ;
  wire \shiftreg[3]_i_1_n_0 ;
  wire \shiftreg[4]_i_1_n_0 ;
  wire \shiftreg[5]_i_1_n_0 ;
  wire \shiftreg[6]_i_1_n_0 ;
  wire \shiftreg[7]_i_2_n_0 ;
  wire \shiftreg[7]_i_3_n_0 ;
  wire \shiftreg[7]_i_4_n_0 ;
  wire \shiftreg[7]_i_5_n_0 ;
  wire shiftreg_0;
  wire \shiftreg_reg_n_0_[7] ;
  wire start_cond;
  wire start_cond_i_1_n_0;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[0]_i_2__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[1]_i_2__0_n_0 ;
  wire \state[1]_i_3__0_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state[2]_i_2__0_n_0 ;
  wire \state[3]_i_10_n_0 ;
  wire \state[3]_i_1__0_n_0 ;
  wire \state[3]_i_2__0_n_0 ;
  wire \state[3]_i_3__0_n_0 ;
  wire \state[3]_i_4__0_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[3]_i_8_n_0 ;
  wire \state[3]_i_9_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire stop_cond;
  wire stop_cond0;

  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \DATA_OUT[7]_i_1 
       (.I0(stop_cond),
        .I1(start_cond),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\DATA_OUT[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[0] 
       (.C(CLK),
        .CE(\DATA_OUT[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(shiftreg[0]),
        .Q(\DATA_OUT_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[1] 
       (.C(CLK),
        .CE(\DATA_OUT[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(shiftreg[1]),
        .Q(\DATA_OUT_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[2] 
       (.C(CLK),
        .CE(\DATA_OUT[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(shiftreg[2]),
        .Q(\DATA_OUT_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[3] 
       (.C(CLK),
        .CE(\DATA_OUT[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(shiftreg[3]),
        .Q(\DATA_OUT_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[4] 
       (.C(CLK),
        .CE(\DATA_OUT[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(shiftreg[4]),
        .Q(\DATA_OUT_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[5] 
       (.C(CLK),
        .CE(\DATA_OUT[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(shiftreg[5]),
        .Q(\DATA_OUT_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[6] 
       (.C(CLK),
        .CE(\DATA_OUT[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(shiftreg[6]),
        .Q(\DATA_OUT_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_OUT_reg[7] 
       (.C(CLK),
        .CE(\DATA_OUT[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\shiftreg_reg_n_0_[7] ),
        .Q(\DATA_OUT_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    RD_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sda_q_i_1_n_0),
        .D(rd_d),
        .Q(RD_S_OBUF));
  LUT6 #(
    .INIT(64'hBBF3FFFFBBF30000)) 
    SDA_OUT_i_1
       (.I0(SDA_OUT_i_2__0_n_0),
        .I1(\state[3]_i_6_n_0 ),
        .I2(SDA_OUT_i_3__0_n_0),
        .I3(SDA_OUT_i_4__0_n_0),
        .I4(SDA_OUT_i_5__0_n_0),
        .I5(SDA_OUT_reg_0),
        .O(SDA_OUT_i_1_n_0));
  LUT6 #(
    .INIT(64'h22222F2222222022)) 
    SDA_OUT_i_2__0
       (.I0(scl_qqq),
        .I1(scl_qq),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\shiftreg_reg_n_0_[7] ),
        .O(SDA_OUT_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    SDA_OUT_i_3__0
       (.I0(\state_reg_n_0_[2] ),
        .I1(scl_qqq),
        .I2(scl_qq),
        .I3(\state_reg_n_0_[3] ),
        .O(SDA_OUT_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFEFC)) 
    SDA_OUT_i_4__0
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .O(SDA_OUT_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h5575755555D5F577)) 
    SDA_OUT_i_5__0
       (.I0(\state[3]_i_6_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\address_i[7]_i_6_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[1] ),
        .O(SDA_OUT_i_5__0_n_0));
  FDPE #(
    .INIT(1'b1)) 
    SDA_OUT_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SDA_OUT_i_1_n_0),
        .PRE(sda_q_i_1_n_0),
        .Q(SDA_OUT_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0007)) 
    WR_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(start_cond),
        .I5(stop_cond),
        .O(WR_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    WR_i_2
       (.I0(stop_cond),
        .I1(start_cond),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[3] ),
        .O(WR10_out));
  FDCE #(
    .INIT(1'b0)) 
    WR_reg
       (.C(CLK),
        .CE(WR_i_1_n_0),
        .CLR(sda_q_i_1_n_0),
        .D(WR10_out),
        .Q(WR_S_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h75554555)) 
    \address_i[0]_i_1 
       (.I0(Q[0]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(shiftreg[0]),
        .O(\address_i[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \address_i[1]_i_1 
       (.I0(shiftreg[1]),
        .I1(\address_i[7]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\address_i[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \address_i[2]_i_1 
       (.I0(shiftreg[2]),
        .I1(\address_i[7]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\address_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \address_i[3]_i_1 
       (.I0(shiftreg[3]),
        .I1(\address_i[7]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\address_i[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC3)) 
    \address_i[4]_i_1 
       (.I0(shiftreg[4]),
        .I1(Q[4]),
        .I2(\address_i[4]_i_2_n_0 ),
        .I3(\address_i[7]_i_4_n_0 ),
        .O(\address_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \address_i[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\address_i[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \address_i[5]_i_1 
       (.I0(shiftreg[5]),
        .I1(\address_i[7]_i_4_n_0 ),
        .I2(Q[5]),
        .I3(\address_i[7]_i_5_n_0 ),
        .O(\address_i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA3CCC)) 
    \address_i[6]_i_1 
       (.I0(shiftreg[6]),
        .I1(Q[6]),
        .I2(\address_i[7]_i_5_n_0 ),
        .I3(Q[5]),
        .I4(\address_i[7]_i_4_n_0 ),
        .O(\address_i[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \address_i[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(start_cond),
        .I2(stop_cond),
        .I3(\address_i[7]_i_3_n_0 ),
        .O(\address_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \address_i[7]_i_2 
       (.I0(\shiftreg_reg_n_0_[7] ),
        .I1(\address_i[7]_i_4_n_0 ),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(\address_i[7]_i_5_n_0 ),
        .I5(Q[6]),
        .O(\address_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF3F5FFF)) 
    \address_i[7]_i_3 
       (.I0(\state[3]_i_5_n_0 ),
        .I1(address_incr_reg_n_0),
        .I2(\address_i[7]_i_6_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\address_i[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \address_i[7]_i_4 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\address_i[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \address_i[7]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\address_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_i[7]_i_6 
       (.I0(scl_qqq),
        .I1(scl_qq),
        .O(\address_i[7]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \address_i_reg[0] 
       (.C(CLK),
        .CE(\address_i[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\address_i[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \address_i_reg[1] 
       (.C(CLK),
        .CE(\address_i[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\address_i[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \address_i_reg[2] 
       (.C(CLK),
        .CE(\address_i[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\address_i[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \address_i_reg[3] 
       (.C(CLK),
        .CE(\address_i[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\address_i[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \address_i_reg[4] 
       (.C(CLK),
        .CE(\address_i[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\address_i[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \address_i_reg[5] 
       (.C(CLK),
        .CE(\address_i[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\address_i[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \address_i_reg[6] 
       (.C(CLK),
        .CE(\address_i[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\address_i[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \address_i_reg[7] 
       (.C(CLK),
        .CE(\address_i[7]_i_1_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\address_i[7]_i_2_n_0 ),
        .Q(Q[7]));
  LUT6 #(
    .INIT(64'hB0B0B000AAAAAAAA)) 
    address_incr_i_1
       (.I0(address_incr_reg_n_0),
        .I1(address_incr_i_2_n_0),
        .I2(\state[3]_i_6_n_0 ),
        .I3(address_incr_i_3_n_0),
        .I4(\state_reg_n_0_[3] ),
        .I5(nRST_S_IBUF),
        .O(address_incr_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    address_incr_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .O(address_incr_i_2_n_0));
  LUT6 #(
    .INIT(64'h7E7E7E7E7E7E3E7E)) 
    address_incr_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\next_state[3]_i_5_n_0 ),
        .I4(address_incr_i_4_n_0),
        .I5(address_incr_i_5_n_0),
        .O(address_incr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    address_incr_i_4
       (.I0(shiftreg[4]),
        .I1(shiftreg[3]),
        .I2(scl_qq),
        .I3(scl_qqq),
        .O(address_incr_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    address_incr_i_5
       (.I0(sda),
        .I1(\shiftreg_reg_n_0_[7] ),
        .I2(shiftreg[6]),
        .O(address_incr_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    address_incr_reg
       (.C(CLK),
        .CE(1'b1),
        .D(address_incr_i_1_n_0),
        .Q(address_incr_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDEDEDE00DEDEDEDE)) 
    \counter[0]_i_1__0 
       (.I0(counter[0]),
        .I1(\counter[0]_i_2_n_0 ),
        .I2(counter0),
        .I3(\counter[0]_i_3_n_0 ),
        .I4(\state[3]_i_4__0_n_0 ),
        .I5(\next_state[3]_i_3_n_0 ),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0070070000000000)) 
    \counter[0]_i_2 
       (.I0(\counter[2]_i_6_n_0 ),
        .I1(\shiftreg[7]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\next_state[3]_i_3_n_0 ),
        .O(\counter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[0]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFA6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter0),
        .I2(counter[0]),
        .I3(\counter[2]_i_3_n_0 ),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA6)) 
    \counter[2]_i_1__0 
       (.I0(counter[2]),
        .I1(counter0),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(\counter[2]_i_3_n_0 ),
        .O(\counter[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00200A0000000000)) 
    \counter[2]_i_2__0 
       (.I0(\counter[2]_i_4_n_0 ),
        .I1(\state[3]_i_5_n_0 ),
        .I2(scl_qqq),
        .I3(scl_qq),
        .I4(\state_reg_n_0_[3] ),
        .I5(\next_state[3]_i_3_n_0 ),
        .O(counter0));
  LUT6 #(
    .INIT(64'h8088000080880A0A)) 
    \counter[2]_i_3 
       (.I0(\next_state[3]_i_3_n_0 ),
        .I1(\counter[2]_i_5_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\counter[2]_i_6_n_0 ),
        .O(\counter[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0410)) 
    \counter[2]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\counter[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000555500005D55)) 
    \counter[2]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(scl_qq),
        .I2(scl_qqq),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(sda),
        .O(\counter[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \counter[2]_i_6 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(scl_qq),
        .I3(scl_qqq),
        .O(\counter[2]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(counter[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \next_state[0]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\next_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8CDC)) 
    \next_state[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \next_state[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\next_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000AA08A0000)) 
    \next_state[3]_i_1__0 
       (.I0(\next_state[3]_i_3_n_0 ),
        .I1(\next_state[3]_i_4_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(next_state0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \next_state[3]_i_2__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\next_state[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \next_state[3]_i_3 
       (.I0(stop_cond),
        .I1(start_cond),
        .I2(nRST_S_IBUF),
        .O(\next_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \next_state[3]_i_4 
       (.I0(\next_state[3]_i_5_n_0 ),
        .I1(shiftreg[4]),
        .I2(shiftreg[3]),
        .I3(\next_state[3]_i_6_n_0 ),
        .I4(\next_state[3]_i_7_n_0 ),
        .I5(sda),
        .O(\next_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \next_state[3]_i_5 
       (.I0(shiftreg[0]),
        .I1(shiftreg[1]),
        .I2(shiftreg[5]),
        .I3(shiftreg[2]),
        .O(\next_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \next_state[3]_i_6 
       (.I0(scl_qqq),
        .I1(scl_qq),
        .O(\next_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_state[3]_i_7 
       (.I0(shiftreg[6]),
        .I1(\shiftreg_reg_n_0_[7] ),
        .O(\next_state[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(CLK),
        .CE(next_state0),
        .D(\next_state[0]_i_1__0_n_0 ),
        .Q(\next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(CLK),
        .CE(next_state0),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.C(CLK),
        .CE(next_state0),
        .D(\next_state[2]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[3] 
       (.C(CLK),
        .CE(next_state0),
        .D(\next_state[3]_i_2__0_n_0 ),
        .Q(\next_state_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88808080AAAAAAAA)) 
    operation_i_1
       (.I0(operation_i_2_n_0),
        .I1(\state[3]_i_6_n_0 ),
        .I2(operation_i_3_n_0),
        .I3(\state_reg_n_0_[1] ),
        .I4(operation_i_4_n_0),
        .I5(nRST_S_IBUF),
        .O(operation_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    operation_i_2
       (.I0(\state[1]_i_4_n_0 ),
        .I1(\next_state[3]_i_6_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[1]_i_3__0_n_0 ),
        .I4(operation_i_5_n_0),
        .I5(operation_reg_n_0),
        .O(operation_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEFFE)) 
    operation_i_3
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(operation_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    operation_i_4
       (.I0(\next_state[3]_i_5_n_0 ),
        .I1(shiftreg[4]),
        .I2(shiftreg[3]),
        .I3(\next_state[3]_i_6_n_0 ),
        .I4(sda),
        .I5(\next_state[3]_i_7_n_0 ),
        .O(operation_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    operation_i_5
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(nRST_S_IBUF),
        .O(operation_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    operation_reg
       (.C(CLK),
        .CE(1'b1),
        .D(operation_i_1_n_0),
        .Q(operation_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAEFFAAAAA200)) 
    rd_d_i_1
       (.I0(rd_d_1),
        .I1(rd_d_i_3_n_0),
        .I2(rd_d_i_4_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(rd_d_i_5_n_0),
        .I5(rd_d),
        .O(rd_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h000008A000000800)) 
    rd_d_i_2
       (.I0(rd_d_i_6_n_0),
        .I1(sda),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\address_i[7]_i_6_n_0 ),
        .O(rd_d_1));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    rd_d_i_3
       (.I0(scl_qqq),
        .I1(scl_qq),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[3]_i_5_n_0 ),
        .O(rd_d_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    rd_d_i_4
       (.I0(rd_d_i_7_n_0),
        .I1(\shiftreg_reg_n_0_[7] ),
        .I2(shiftreg[6]),
        .I3(sda),
        .I4(address_incr_i_4_n_0),
        .I5(\next_state[3]_i_5_n_0 ),
        .O(rd_d_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0411)) 
    rd_d_i_5
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(stop_cond),
        .I5(start_cond),
        .O(rd_d_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h10)) 
    rd_d_i_6
       (.I0(stop_cond),
        .I1(start_cond),
        .I2(\state_reg_n_0_[0] ),
        .O(rd_d_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    rd_d_i_7
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .O(rd_d_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rd_d_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sda_q_i_1_n_0),
        .D(rd_d_i_1_n_0),
        .Q(rd_d));
  FDPE #(
    .INIT(1'b1)) 
    scl_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SCL_OUT),
        .PRE(sda_q_i_1_n_0),
        .Q(scl_q));
  FDPE #(
    .INIT(1'b1)) 
    scl_qq_reg
       (.C(CLK),
        .CE(1'b1),
        .D(scl_q),
        .PRE(sda_q_i_1_n_0),
        .Q(scl_qq));
  FDPE #(
    .INIT(1'b1)) 
    scl_qqq_reg
       (.C(CLK),
        .CE(1'b1),
        .D(scl_qq),
        .PRE(sda_q_i_1_n_0),
        .Q(scl_qqq));
  LUT1 #(
    .INIT(2'h1)) 
    sda_q_i_1
       (.I0(nRST_S_IBUF),
        .O(sda_q_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sda_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SDA_OUT),
        .PRE(sda_q_i_1_n_0),
        .Q(sda_q));
  FDPE #(
    .INIT(1'b1)) 
    sda_qq_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda_q),
        .PRE(sda_q_i_1_n_0),
        .Q(sda));
  FDPE #(
    .INIT(1'b1)) 
    sda_qqq_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda),
        .PRE(sda_q_i_1_n_0),
        .Q(sda_qqq));
  LUT6 #(
    .INIT(64'hFFF0FEFF00300200)) 
    \shiftreg[0]_i_1 
       (.I0(sda),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(DATA_IN_S_IBUF[0]),
        .O(\shiftreg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FEFF00200200)) 
    \shiftreg[1]_i_1 
       (.I0(shiftreg[0]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(DATA_IN_S_IBUF[1]),
        .O(\shiftreg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FEFF00200200)) 
    \shiftreg[2]_i_1 
       (.I0(shiftreg[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(DATA_IN_S_IBUF[2]),
        .O(\shiftreg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FEFF00200200)) 
    \shiftreg[3]_i_1 
       (.I0(shiftreg[2]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(DATA_IN_S_IBUF[3]),
        .O(\shiftreg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FEFF00200200)) 
    \shiftreg[4]_i_1 
       (.I0(shiftreg[3]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(DATA_IN_S_IBUF[4]),
        .O(\shiftreg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FEFF00200200)) 
    \shiftreg[5]_i_1 
       (.I0(shiftreg[4]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(DATA_IN_S_IBUF[5]),
        .O(\shiftreg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FEFF00200200)) 
    \shiftreg[6]_i_1 
       (.I0(shiftreg[5]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(DATA_IN_S_IBUF[6]),
        .O(\shiftreg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2000AAAA20AA)) 
    \shiftreg[7]_i_1 
       (.I0(\state[3]_i_6_n_0 ),
        .I1(\shiftreg[7]_i_3_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\shiftreg[7]_i_4_n_0 ),
        .I5(\shiftreg[7]_i_5_n_0 ),
        .O(shiftreg_0));
  LUT6 #(
    .INIT(64'hFFE0FEFF00200200)) 
    \shiftreg[7]_i_2 
       (.I0(shiftreg[6]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(DATA_IN_S_IBUF[7]),
        .O(\shiftreg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \shiftreg[7]_i_3 
       (.I0(sda),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(scl_qqq),
        .I4(scl_qq),
        .O(\shiftreg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000022F00000000)) 
    \shiftreg[7]_i_4 
       (.I0(scl_qqq),
        .I1(scl_qq),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\shiftreg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFCFFFFF)) 
    \shiftreg[7]_i_5 
       (.I0(operation_reg_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(scl_qq),
        .I3(scl_qqq),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\shiftreg[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[0] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(sda_q_i_1_n_0),
        .D(\shiftreg[0]_i_1_n_0 ),
        .Q(shiftreg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[1] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(sda_q_i_1_n_0),
        .D(\shiftreg[1]_i_1_n_0 ),
        .Q(shiftreg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[2] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(sda_q_i_1_n_0),
        .D(\shiftreg[2]_i_1_n_0 ),
        .Q(shiftreg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[3] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(sda_q_i_1_n_0),
        .D(\shiftreg[3]_i_1_n_0 ),
        .Q(shiftreg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[4] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(sda_q_i_1_n_0),
        .D(\shiftreg[4]_i_1_n_0 ),
        .Q(shiftreg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[5] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(sda_q_i_1_n_0),
        .D(\shiftreg[5]_i_1_n_0 ),
        .Q(shiftreg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[6] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(sda_q_i_1_n_0),
        .D(\shiftreg[6]_i_1_n_0 ),
        .Q(shiftreg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[7] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(sda_q_i_1_n_0),
        .D(\shiftreg[7]_i_2_n_0 ),
        .Q(\shiftreg_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    start_cond_i_1
       (.I0(sda),
        .I1(sda_qqq),
        .I2(scl_qq),
        .O(start_cond_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    start_cond_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sda_q_i_1_n_0),
        .D(start_cond_i_1_n_0),
        .Q(start_cond));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0000DFDD)) 
    \state[0]_i_1__0 
       (.I0(\state[0]_i_2__0_n_0 ),
        .I1(start_cond),
        .I2(\state[3]_i_10_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(stop_cond),
        .O(\state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFAFBFF)) 
    \state[0]_i_2__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00202A0002222A02)) 
    \state[1]_i_1__0 
       (.I0(\state[3]_i_6_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[1]_i_2__0_n_0 ),
        .O(\state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0CFF55FF)) 
    \state[1]_i_2__0 
       (.I0(\next_state_reg_n_0_[1] ),
        .I1(\state[1]_i_3__0_n_0 ),
        .I2(\state[1]_i_4_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \state[1]_i_3__0 
       (.I0(\shiftreg_reg_n_0_[7] ),
        .I1(shiftreg[2]),
        .I2(shiftreg[4]),
        .I3(shiftreg[3]),
        .O(\state[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \state[1]_i_4 
       (.I0(shiftreg[0]),
        .I1(shiftreg[1]),
        .I2(shiftreg[5]),
        .I3(shiftreg[6]),
        .O(\state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h01FF000001000000)) 
    \state[2]_i_1__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state[3]_i_6_n_0 ),
        .I5(\state[2]_i_2__0_n_0 ),
        .O(\state[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hCC22FC00)) 
    \state[2]_i_2__0 
       (.I0(operation_reg_n_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\state[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFD11)) 
    \state[3]_i_10 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(sda),
        .O(\state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h54FF54FFFFFF54FF)) 
    \state[3]_i_1__0 
       (.I0(\state[3]_i_3__0_n_0 ),
        .I1(\state[3]_i_4__0_n_0 ),
        .I2(\state[3]_i_5_n_0 ),
        .I3(\state[3]_i_6_n_0 ),
        .I4(\state[3]_i_7_n_0 ),
        .I5(\state[3]_i_8_n_0 ),
        .O(\state[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0888088808888888)) 
    \state[3]_i_2__0 
       (.I0(\state[3]_i_9_n_0 ),
        .I1(\state[3]_i_6_n_0 ),
        .I2(\state[3]_i_10_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[3]_i_4__0_n_0 ),
        .O(\state[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBFFBFBBBFFFB)) 
    \state[3]_i_3__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(scl_qqq),
        .I5(scl_qq),
        .O(\state[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[3]_i_4__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state[3]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \state[3]_i_5 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(\state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[3]_i_6 
       (.I0(start_cond),
        .I1(stop_cond),
        .O(\state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3F3FFFBF3F3)) 
    \state[3]_i_7 
       (.I0(\state[3]_i_5_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(scl_qq),
        .I5(scl_qqq),
        .O(\state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFAABFAAAAAABFAA)) 
    \state[3]_i_8 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(scl_qqq),
        .I5(scl_qq),
        .O(\state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAFAEAA)) 
    \state[3]_i_9 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\next_state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(operation_reg_n_0),
        .O(\state[3]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(\state[3]_i_1__0_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(\state[3]_i_1__0_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(\state[3]_i_1__0_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(\state[3]_i_1__0_n_0 ),
        .CLR(sda_q_i_1_n_0),
        .D(\state[3]_i_2__0_n_0 ),
        .Q(\state_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    stop_cond_i_1
       (.I0(sda),
        .I1(scl_qq),
        .I2(sda_qqq),
        .O(stop_cond0));
  FDCE #(
    .INIT(1'b0)) 
    stop_cond_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sda_q_i_1_n_0),
        .D(stop_cond0),
        .Q(stop_cond));
endmodule

(* ECO_CHECKSUM = "f86e558b" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Top_func
   (MCLK_M,
    nRST_M,
    SRST,
    TIC,
    DIN_M,
    RD_M,
    WE_M,
    DOUT_M,
    NACK,
    QUEUED,
    DATA_VALID,
    STOP,
    STATUS,
    MCLK_S,
    nRST_S,
    DATA_IN_S,
    ADDRESS,
    DATA_OUT_S,
    WR_S,
    RD_S,
    READ_DONE);
  input MCLK_M;
  input nRST_M;
  input SRST;
  input TIC;
  input [7:0]DIN_M;
  input RD_M;
  input WE_M;
  output [7:0]DOUT_M;
  output NACK;
  output QUEUED;
  output DATA_VALID;
  output STOP;
  output [2:0]STATUS;
  input MCLK_S;
  input nRST_S;
  input [7:0]DATA_IN_S;
  output [7:0]ADDRESS;
  output [7:0]DATA_OUT_S;
  output WR_S;
  output RD_S;
  output READ_DONE;

  wire [7:0]ADDRESS;
  wire [7:0]ADDRESS_OBUF;
  wire [7:0]DATA_IN_S;
  wire [7:0]DATA_IN_S_IBUF;
  wire [7:0]DATA_OUT_S;
  wire [7:0]DATA_OUT_S_OBUF;
  wire DATA_VALID;
  wire DATA_VALID_OBUF;
  wire [7:0]DIN_M;
  wire [7:0]DIN_M_IBUF;
  wire [7:0]DOUT_M;
  wire [7:0]DOUT_M_OBUF;
  wire I2CSLAVE_module_n_2;
  wire MCLK_M;
  wire MCLK_M_IBUF;
  wire MCLK_M_IBUF_BUFG;
  wire MCLK_S;
  wire MCLK_S_IBUF;
  wire MCLK_S_IBUF_BUFG;
  wire NACK;
  wire NACK_OBUF;
  wire QUEUED;
  wire QUEUED_OBUF;
  wire RD_M;
  wire RD_M_IBUF;
  wire RD_S;
  wire RD_S_OBUF;
  wire READ_DONE;
  wire SCL_OUT;
  wire SDA_OUT;
  wire SRST;
  wire SRST_IBUF;
  wire [2:0]STATUS;
  wire [2:0]STATUS_OBUF;
  wire STOP;
  wire STOP_OBUF;
  wire TIC;
  wire TIC_IBUF;
  wire WE_M;
  wire WE_M_IBUF;
  wire WR_S;
  wire WR_S_OBUF;
  wire nRST_M;
  wire nRST_M_IBUF;
  wire nRST_S;
  wire nRST_S_IBUF;

initial begin
 $sdf_annotate("Top_func_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \ADDRESS_OBUF[0]_inst 
       (.I(ADDRESS_OBUF[0]),
        .O(ADDRESS[0]));
  OBUF \ADDRESS_OBUF[1]_inst 
       (.I(ADDRESS_OBUF[1]),
        .O(ADDRESS[1]));
  OBUF \ADDRESS_OBUF[2]_inst 
       (.I(ADDRESS_OBUF[2]),
        .O(ADDRESS[2]));
  OBUF \ADDRESS_OBUF[3]_inst 
       (.I(ADDRESS_OBUF[3]),
        .O(ADDRESS[3]));
  OBUF \ADDRESS_OBUF[4]_inst 
       (.I(ADDRESS_OBUF[4]),
        .O(ADDRESS[4]));
  OBUF \ADDRESS_OBUF[5]_inst 
       (.I(ADDRESS_OBUF[5]),
        .O(ADDRESS[5]));
  OBUF \ADDRESS_OBUF[6]_inst 
       (.I(ADDRESS_OBUF[6]),
        .O(ADDRESS[6]));
  OBUF \ADDRESS_OBUF[7]_inst 
       (.I(ADDRESS_OBUF[7]),
        .O(ADDRESS[7]));
  IBUF \DATA_IN_S_IBUF[0]_inst 
       (.I(DATA_IN_S[0]),
        .O(DATA_IN_S_IBUF[0]));
  IBUF \DATA_IN_S_IBUF[1]_inst 
       (.I(DATA_IN_S[1]),
        .O(DATA_IN_S_IBUF[1]));
  IBUF \DATA_IN_S_IBUF[2]_inst 
       (.I(DATA_IN_S[2]),
        .O(DATA_IN_S_IBUF[2]));
  IBUF \DATA_IN_S_IBUF[3]_inst 
       (.I(DATA_IN_S[3]),
        .O(DATA_IN_S_IBUF[3]));
  IBUF \DATA_IN_S_IBUF[4]_inst 
       (.I(DATA_IN_S[4]),
        .O(DATA_IN_S_IBUF[4]));
  IBUF \DATA_IN_S_IBUF[5]_inst 
       (.I(DATA_IN_S[5]),
        .O(DATA_IN_S_IBUF[5]));
  IBUF \DATA_IN_S_IBUF[6]_inst 
       (.I(DATA_IN_S[6]),
        .O(DATA_IN_S_IBUF[6]));
  IBUF \DATA_IN_S_IBUF[7]_inst 
       (.I(DATA_IN_S[7]),
        .O(DATA_IN_S_IBUF[7]));
  OBUF \DATA_OUT_S_OBUF[0]_inst 
       (.I(DATA_OUT_S_OBUF[0]),
        .O(DATA_OUT_S[0]));
  OBUF \DATA_OUT_S_OBUF[1]_inst 
       (.I(DATA_OUT_S_OBUF[1]),
        .O(DATA_OUT_S[1]));
  OBUF \DATA_OUT_S_OBUF[2]_inst 
       (.I(DATA_OUT_S_OBUF[2]),
        .O(DATA_OUT_S[2]));
  OBUF \DATA_OUT_S_OBUF[3]_inst 
       (.I(DATA_OUT_S_OBUF[3]),
        .O(DATA_OUT_S[3]));
  OBUF \DATA_OUT_S_OBUF[4]_inst 
       (.I(DATA_OUT_S_OBUF[4]),
        .O(DATA_OUT_S[4]));
  OBUF \DATA_OUT_S_OBUF[5]_inst 
       (.I(DATA_OUT_S_OBUF[5]),
        .O(DATA_OUT_S[5]));
  OBUF \DATA_OUT_S_OBUF[6]_inst 
       (.I(DATA_OUT_S_OBUF[6]),
        .O(DATA_OUT_S[6]));
  OBUF \DATA_OUT_S_OBUF[7]_inst 
       (.I(DATA_OUT_S_OBUF[7]),
        .O(DATA_OUT_S[7]));
  OBUF DATA_VALID_OBUF_inst
       (.I(DATA_VALID_OBUF),
        .O(DATA_VALID));
  IBUF \DIN_M_IBUF[0]_inst 
       (.I(DIN_M[0]),
        .O(DIN_M_IBUF[0]));
  IBUF \DIN_M_IBUF[1]_inst 
       (.I(DIN_M[1]),
        .O(DIN_M_IBUF[1]));
  IBUF \DIN_M_IBUF[2]_inst 
       (.I(DIN_M[2]),
        .O(DIN_M_IBUF[2]));
  IBUF \DIN_M_IBUF[3]_inst 
       (.I(DIN_M[3]),
        .O(DIN_M_IBUF[3]));
  IBUF \DIN_M_IBUF[4]_inst 
       (.I(DIN_M[4]),
        .O(DIN_M_IBUF[4]));
  IBUF \DIN_M_IBUF[5]_inst 
       (.I(DIN_M[5]),
        .O(DIN_M_IBUF[5]));
  IBUF \DIN_M_IBUF[6]_inst 
       (.I(DIN_M[6]),
        .O(DIN_M_IBUF[6]));
  IBUF \DIN_M_IBUF[7]_inst 
       (.I(DIN_M[7]),
        .O(DIN_M_IBUF[7]));
  OBUF \DOUT_M_OBUF[0]_inst 
       (.I(DOUT_M_OBUF[0]),
        .O(DOUT_M[0]));
  OBUF \DOUT_M_OBUF[1]_inst 
       (.I(DOUT_M_OBUF[1]),
        .O(DOUT_M[1]));
  OBUF \DOUT_M_OBUF[2]_inst 
       (.I(DOUT_M_OBUF[2]),
        .O(DOUT_M[2]));
  OBUF \DOUT_M_OBUF[3]_inst 
       (.I(DOUT_M_OBUF[3]),
        .O(DOUT_M[3]));
  OBUF \DOUT_M_OBUF[4]_inst 
       (.I(DOUT_M_OBUF[4]),
        .O(DOUT_M[4]));
  OBUF \DOUT_M_OBUF[5]_inst 
       (.I(DOUT_M_OBUF[5]),
        .O(DOUT_M[5]));
  OBUF \DOUT_M_OBUF[6]_inst 
       (.I(DOUT_M_OBUF[6]),
        .O(DOUT_M[6]));
  OBUF \DOUT_M_OBUF[7]_inst 
       (.I(DOUT_M_OBUF[7]),
        .O(DOUT_M[7]));
  I2CMASTER I2CMASTER_module
       (.DATA_VALID_OBUF(DATA_VALID_OBUF),
        .DIN_M_IBUF(DIN_M_IBUF),
        .MCLK_M_IBUF_BUFG(MCLK_M_IBUF_BUFG),
        .NACK_OBUF(NACK_OBUF),
        .Q(DOUT_M_OBUF),
        .QUEUED_OBUF(QUEUED_OBUF),
        .RD_M_IBUF(RD_M_IBUF),
        .SCL_OUT(SCL_OUT),
        .SDA_OUT(SDA_OUT),
        .SRST_IBUF(SRST_IBUF),
        .\STATUS_reg[2]_0 (STATUS_OBUF),
        .STOP_OBUF(STOP_OBUF),
        .TIC_IBUF(TIC_IBUF),
        .WE_M_IBUF(WE_M_IBUF),
        .nRST_M_IBUF(nRST_M_IBUF),
        .sda_in_q_reg_0(I2CSLAVE_module_n_2));
  I2CSLAVE I2CSLAVE_module
       (.CLK(MCLK_S_IBUF_BUFG),
        .DATA_IN_S_IBUF(DATA_IN_S_IBUF),
        .\DATA_OUT_reg[7]_0 (DATA_OUT_S_OBUF),
        .Q(ADDRESS_OBUF),
        .RD_S_OBUF(RD_S_OBUF),
        .SCL_OUT(SCL_OUT),
        .SDA_OUT(SDA_OUT),
        .SDA_OUT_reg_0(I2CSLAVE_module_n_2),
        .WR_S_OBUF(WR_S_OBUF),
        .nRST_S_IBUF(nRST_S_IBUF));
  BUFG MCLK_M_IBUF_BUFG_inst
       (.I(MCLK_M_IBUF),
        .O(MCLK_M_IBUF_BUFG));
  IBUF MCLK_M_IBUF_inst
       (.I(MCLK_M),
        .O(MCLK_M_IBUF));
  BUFG MCLK_S_IBUF_BUFG_inst
       (.I(MCLK_S_IBUF),
        .O(MCLK_S_IBUF_BUFG));
  IBUF MCLK_S_IBUF_inst
       (.I(MCLK_S),
        .O(MCLK_S_IBUF));
  OBUF NACK_OBUF_inst
       (.I(NACK_OBUF),
        .O(NACK));
  OBUF QUEUED_OBUF_inst
       (.I(QUEUED_OBUF),
        .O(QUEUED));
  IBUF RD_M_IBUF_inst
       (.I(RD_M),
        .O(RD_M_IBUF));
  OBUF RD_S_OBUF_inst
       (.I(RD_S_OBUF),
        .O(RD_S));
  OBUFT READ_DONE_OBUF_inst
       (.I(1'b0),
        .O(READ_DONE),
        .T(1'b1));
  IBUF SRST_IBUF_inst
       (.I(SRST),
        .O(SRST_IBUF));
  OBUF \STATUS_OBUF[0]_inst 
       (.I(STATUS_OBUF[0]),
        .O(STATUS[0]));
  OBUF \STATUS_OBUF[1]_inst 
       (.I(STATUS_OBUF[1]),
        .O(STATUS[1]));
  OBUF \STATUS_OBUF[2]_inst 
       (.I(STATUS_OBUF[2]),
        .O(STATUS[2]));
  OBUF STOP_OBUF_inst
       (.I(STOP_OBUF),
        .O(STOP));
  IBUF TIC_IBUF_inst
       (.I(TIC),
        .O(TIC_IBUF));
  IBUF WE_M_IBUF_inst
       (.I(WE_M),
        .O(WE_M_IBUF));
  OBUF WR_S_OBUF_inst
       (.I(WR_S_OBUF),
        .O(WR_S));
  IBUF nRST_M_IBUF_inst
       (.I(nRST_M),
        .O(nRST_M_IBUF));
  IBUF nRST_S_IBUF_inst
       (.I(nRST_S),
        .O(nRST_S_IBUF));
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
