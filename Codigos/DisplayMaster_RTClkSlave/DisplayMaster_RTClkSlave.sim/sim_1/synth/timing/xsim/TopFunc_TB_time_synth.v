// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Nov 28 20:25:21 2023
// Host        : Notebook-GMD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/BOLSAIC_eldorado/Codigos/DisplayMaster_RTClkSlave/DisplayMaster_RTClkSlave.sim/sim_1/synth/timing/xsim/TopFunc_TB_time_synth.v
// Design      : TopFunc
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD2
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module Counter_slave
   (SDA_S_TRI,
    SDA_S_IBUF,
    CLK,
    RST_confirm_OBUF,
    SCL_S_IBUF);
  output SDA_S_TRI;
  input SDA_S_IBUF;
  input CLK;
  input RST_confirm_OBUF;
  input SCL_S_IBUF;

  wire CLK;
  wire RST_confirm_OBUF;
  wire SCL_S_IBUF;
  wire SDA_S_IBUF;
  wire SDA_S_TRI;
  wire [5:0]seconds_counter_reg;

  I2CSLAVE I_I2CITF
       (.CLK(CLK),
        .Q(seconds_counter_reg),
        .RST_confirm_OBUF(RST_confirm_OBUF),
        .SCL_S_IBUF(SCL_S_IBUF),
        .SDA_S_IBUF(SDA_S_IBUF),
        .SDA_S_TRI(SDA_S_TRI));
  RealTimeClock RTClk
       (.CLK(CLK),
        .Q(seconds_counter_reg),
        .RST_confirm_OBUF(RST_confirm_OBUF));
endmodule

module Display_master
   (QUEUED_OBUF,
    E,
    SDA_M_TRI,
    SCL_M_TRI,
    Anode_Activate_OBUF,
    LED_out_OBUF,
    SDA_M_IBUF,
    CLK,
    RST_confirm_OBUF,
    RD_IBUF,
    WE_IBUF,
    DIN_IBUF);
  output QUEUED_OBUF;
  output [0:0]E;
  output SDA_M_TRI;
  output SCL_M_TRI;
  output [3:0]Anode_Activate_OBUF;
  output [6:0]LED_out_OBUF;
  input SDA_M_IBUF;
  input CLK;
  input RST_confirm_OBUF;
  input RD_IBUF;
  input WE_IBUF;
  input [7:0]DIN_IBUF;

  wire [3:0]Anode_Activate_OBUF;
  wire CLK;
  wire [7:0]DIN_IBUF;
  wire [7:0]DOUT;
  wire [7:0]Data_OUT;
  wire [0:0]E;
  wire I_I2CMASTER_0_n_4;
  wire [1:0]LED_activating_counter;
  wire [6:0]LED_out_OBUF;
  wire \LED_out_OBUF[6]_inst_i_2_n_0 ;
  wire \LED_out_OBUF[6]_inst_i_3_n_0 ;
  wire \LED_out_OBUF[6]_inst_i_4_n_0 ;
  wire QUEUED_OBUF;
  wire RD_IBUF;
  wire RST_confirm_OBUF;
  wire SCL_M_TRI;
  wire SDA_M_IBUF;
  wire SDA_M_TRI;
  wire WE_IBUF;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[3]_i_1__0_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire [7:5]counter_reg;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[6] ;
  wire [1:0]p_0_in;
  wire \refresh_counter[0]_i_2_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_1 ;
  wire \refresh_counter_reg[0]_i_1_n_2 ;
  wire \refresh_counter_reg[0]_i_1_n_3 ;
  wire \refresh_counter_reg[0]_i_1_n_4 ;
  wire \refresh_counter_reg[0]_i_1_n_5 ;
  wire \refresh_counter_reg[0]_i_1_n_6 ;
  wire \refresh_counter_reg[0]_i_1_n_7 ;
  wire \refresh_counter_reg[12]_i_1_n_0 ;
  wire \refresh_counter_reg[12]_i_1_n_1 ;
  wire \refresh_counter_reg[12]_i_1_n_2 ;
  wire \refresh_counter_reg[12]_i_1_n_3 ;
  wire \refresh_counter_reg[12]_i_1_n_4 ;
  wire \refresh_counter_reg[12]_i_1_n_5 ;
  wire \refresh_counter_reg[12]_i_1_n_6 ;
  wire \refresh_counter_reg[12]_i_1_n_7 ;
  wire \refresh_counter_reg[16]_i_1_n_1 ;
  wire \refresh_counter_reg[16]_i_1_n_2 ;
  wire \refresh_counter_reg[16]_i_1_n_3 ;
  wire \refresh_counter_reg[16]_i_1_n_4 ;
  wire \refresh_counter_reg[16]_i_1_n_5 ;
  wire \refresh_counter_reg[16]_i_1_n_6 ;
  wire \refresh_counter_reg[16]_i_1_n_7 ;
  wire \refresh_counter_reg[4]_i_1_n_0 ;
  wire \refresh_counter_reg[4]_i_1_n_1 ;
  wire \refresh_counter_reg[4]_i_1_n_2 ;
  wire \refresh_counter_reg[4]_i_1_n_3 ;
  wire \refresh_counter_reg[4]_i_1_n_4 ;
  wire \refresh_counter_reg[4]_i_1_n_5 ;
  wire \refresh_counter_reg[4]_i_1_n_6 ;
  wire \refresh_counter_reg[4]_i_1_n_7 ;
  wire \refresh_counter_reg[8]_i_1_n_0 ;
  wire \refresh_counter_reg[8]_i_1_n_1 ;
  wire \refresh_counter_reg[8]_i_1_n_2 ;
  wire \refresh_counter_reg[8]_i_1_n_3 ;
  wire \refresh_counter_reg[8]_i_1_n_4 ;
  wire \refresh_counter_reg[8]_i_1_n_5 ;
  wire \refresh_counter_reg[8]_i_1_n_6 ;
  wire \refresh_counter_reg[8]_i_1_n_7 ;
  wire \refresh_counter_reg_n_0_[0] ;
  wire \refresh_counter_reg_n_0_[10] ;
  wire \refresh_counter_reg_n_0_[11] ;
  wire \refresh_counter_reg_n_0_[12] ;
  wire \refresh_counter_reg_n_0_[13] ;
  wire \refresh_counter_reg_n_0_[14] ;
  wire \refresh_counter_reg_n_0_[15] ;
  wire \refresh_counter_reg_n_0_[16] ;
  wire \refresh_counter_reg_n_0_[17] ;
  wire \refresh_counter_reg_n_0_[1] ;
  wire \refresh_counter_reg_n_0_[2] ;
  wire \refresh_counter_reg_n_0_[3] ;
  wire \refresh_counter_reg_n_0_[4] ;
  wire \refresh_counter_reg_n_0_[5] ;
  wire \refresh_counter_reg_n_0_[6] ;
  wire \refresh_counter_reg_n_0_[7] ;
  wire \refresh_counter_reg_n_0_[8] ;
  wire \refresh_counter_reg_n_0_[9] ;
  wire [3:3]\NLW_refresh_counter_reg[16]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h7)) 
    \Anode_Activate_OBUF[0]_inst_i_1 
       (.I0(LED_activating_counter[1]),
        .I1(LED_activating_counter[0]),
        .O(Anode_Activate_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Anode_Activate_OBUF[1]_inst_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .O(Anode_Activate_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Anode_Activate_OBUF[2]_inst_i_1 
       (.I0(LED_activating_counter[1]),
        .I1(LED_activating_counter[0]),
        .O(Anode_Activate_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Anode_Activate_OBUF[3]_inst_i_1 
       (.I0(LED_activating_counter[1]),
        .I1(LED_activating_counter[0]),
        .O(Anode_Activate_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_OUT_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(RST_confirm_OBUF),
        .D(DOUT[0]),
        .Q(Data_OUT[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_OUT_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(RST_confirm_OBUF),
        .D(DOUT[1]),
        .Q(Data_OUT[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_OUT_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(RST_confirm_OBUF),
        .D(DOUT[2]),
        .Q(Data_OUT[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_OUT_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(RST_confirm_OBUF),
        .D(DOUT[3]),
        .Q(Data_OUT[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_OUT_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(RST_confirm_OBUF),
        .D(DOUT[4]),
        .Q(Data_OUT[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_OUT_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(RST_confirm_OBUF),
        .D(DOUT[5]),
        .Q(Data_OUT[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_OUT_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(RST_confirm_OBUF),
        .D(DOUT[6]),
        .Q(Data_OUT[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_OUT_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(RST_confirm_OBUF),
        .D(DOUT[7]),
        .Q(Data_OUT[7]));
  I2CMASTER I_I2CMASTER_0
       (.CLK(CLK),
        .DIN_IBUF(DIN_IBUF),
        .\DOUT_reg[7]_0 (DOUT),
        .E(E),
        .Q({counter_reg[7],counter_reg[5]}),
        .QUEUED_OBUF(QUEUED_OBUF),
        .RD_IBUF(RD_IBUF),
        .RST_confirm_OBUF(RST_confirm_OBUF),
        .SCL_M_TRI(SCL_M_TRI),
        .SDA_M_IBUF(SDA_M_IBUF),
        .SDA_M_TRI(SDA_M_TRI),
        .WE_IBUF(WE_IBUF),
        .\counter_reg[5] (I_I2CMASTER_0_n_4));
  LUT6 #(
    .INIT(64'h540402A200005555)) 
    \LED_out_OBUF[0]_inst_i_1 
       (.I0(\LED_out_OBUF[6]_inst_i_2_n_0 ),
        .I1(Data_OUT[4]),
        .I2(LED_activating_counter[0]),
        .I3(Data_OUT[0]),
        .I4(\LED_out_OBUF[6]_inst_i_4_n_0 ),
        .I5(\LED_out_OBUF[6]_inst_i_3_n_0 ),
        .O(LED_out_OBUF[0]));
  LUT6 #(
    .INIT(64'h5404A80857F75404)) 
    \LED_out_OBUF[1]_inst_i_1 
       (.I0(\LED_out_OBUF[6]_inst_i_2_n_0 ),
        .I1(Data_OUT[4]),
        .I2(LED_activating_counter[0]),
        .I3(Data_OUT[0]),
        .I4(\LED_out_OBUF[6]_inst_i_4_n_0 ),
        .I5(\LED_out_OBUF[6]_inst_i_3_n_0 ),
        .O(LED_out_OBUF[1]));
  LUT6 #(
    .INIT(64'h000000B8B8B8FFB8)) 
    \LED_out_OBUF[2]_inst_i_1 
       (.I0(Data_OUT[0]),
        .I1(LED_activating_counter[0]),
        .I2(Data_OUT[4]),
        .I3(\LED_out_OBUF[6]_inst_i_3_n_0 ),
        .I4(\LED_out_OBUF[6]_inst_i_4_n_0 ),
        .I5(\LED_out_OBUF[6]_inst_i_2_n_0 ),
        .O(LED_out_OBUF[2]));
  LUT6 #(
    .INIT(64'hFC0C015100005404)) 
    \LED_out_OBUF[3]_inst_i_1 
       (.I0(\LED_out_OBUF[6]_inst_i_2_n_0 ),
        .I1(Data_OUT[4]),
        .I2(LED_activating_counter[0]),
        .I3(Data_OUT[0]),
        .I4(\LED_out_OBUF[6]_inst_i_4_n_0 ),
        .I5(\LED_out_OBUF[6]_inst_i_3_n_0 ),
        .O(LED_out_OBUF[3]));
  LUT6 #(
    .INIT(64'hAAAA202A10150000)) 
    \LED_out_OBUF[4]_inst_i_1 
       (.I0(\LED_out_OBUF[6]_inst_i_2_n_0 ),
        .I1(Data_OUT[0]),
        .I2(LED_activating_counter[0]),
        .I3(Data_OUT[4]),
        .I4(\LED_out_OBUF[6]_inst_i_4_n_0 ),
        .I5(\LED_out_OBUF[6]_inst_i_3_n_0 ),
        .O(LED_out_OBUF[4]));
  LUT6 #(
    .INIT(64'hA4C8A4A4A4C8C8C8)) 
    \LED_out_OBUF[5]_inst_i_1 
       (.I0(\LED_out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_out_OBUF[6]_inst_i_3_n_0 ),
        .I2(\LED_out_OBUF[6]_inst_i_4_n_0 ),
        .I3(Data_OUT[0]),
        .I4(LED_activating_counter[0]),
        .I5(Data_OUT[4]),
        .O(LED_out_OBUF[5]));
  LUT6 #(
    .INIT(64'h2220002099944494)) 
    \LED_out_OBUF[6]_inst_i_1 
       (.I0(\LED_out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_out_OBUF[6]_inst_i_3_n_0 ),
        .I2(Data_OUT[4]),
        .I3(LED_activating_counter[0]),
        .I4(Data_OUT[0]),
        .I5(\LED_out_OBUF[6]_inst_i_4_n_0 ),
        .O(LED_out_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED_out_OBUF[6]_inst_i_2 
       (.I0(Data_OUT[3]),
        .I1(LED_activating_counter[0]),
        .I2(Data_OUT[7]),
        .O(\LED_out_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED_out_OBUF[6]_inst_i_3 
       (.I0(Data_OUT[2]),
        .I1(LED_activating_counter[0]),
        .I2(Data_OUT[6]),
        .O(\LED_out_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \LED_out_OBUF[6]_inst_i_4 
       (.I0(Data_OUT[1]),
        .I1(LED_activating_counter[0]),
        .I2(Data_OUT[5]),
        .O(\LED_out_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(counter_reg[7]),
        .I2(counter_reg[5]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0666)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(counter_reg[7]),
        .I3(counter_reg[5]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h07777000)) 
    \counter[2]_i_1__0 
       (.I0(counter_reg[7]),
        .I1(counter_reg[5]),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[2] ),
        .O(\counter[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0777777770000000)) 
    \counter[3]_i_1__0 
       (.I0(counter_reg[7]),
        .I1(counter_reg[5]),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\counter[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \counter[4]_i_1 
       (.I0(I_I2CMASTER_0_n_4),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[4] ),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h43)) 
    \counter[5]_i_1 
       (.I0(counter_reg[7]),
        .I1(\counter[5]_i_2_n_0 ),
        .I2(counter_reg[5]),
        .O(\counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter[5]_i_2 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .O(\counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \counter[6]_i_1 
       (.I0(counter_reg[7]),
        .I1(counter_reg[5]),
        .I2(\counter[7]_i_2_n_0 ),
        .I3(\counter_reg_n_0_[6] ),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h55C0)) 
    \counter[7]_i_1 
       (.I0(counter_reg[5]),
        .I1(\counter[7]_i_2_n_0 ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(counter_reg[7]),
        .O(\counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[7]_i_2 
       (.I0(counter_reg[5]),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\counter[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(p_0_in[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(p_0_in[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\counter[3]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter_reg[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \refresh_counter[0]_i_2 
       (.I0(\refresh_counter_reg_n_0_[0] ),
        .O(\refresh_counter[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[0]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\refresh_counter_reg[0]_i_1_n_0 ,\refresh_counter_reg[0]_i_1_n_1 ,\refresh_counter_reg[0]_i_1_n_2 ,\refresh_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refresh_counter_reg[0]_i_1_n_4 ,\refresh_counter_reg[0]_i_1_n_5 ,\refresh_counter_reg[0]_i_1_n_6 ,\refresh_counter_reg[0]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[3] ,\refresh_counter_reg_n_0_[2] ,\refresh_counter_reg_n_0_[1] ,\refresh_counter[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[8]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[8]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[12]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_counter_reg[12]_i_1 
       (.CI(\refresh_counter_reg[8]_i_1_n_0 ),
        .CO({\refresh_counter_reg[12]_i_1_n_0 ,\refresh_counter_reg[12]_i_1_n_1 ,\refresh_counter_reg[12]_i_1_n_2 ,\refresh_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[12]_i_1_n_4 ,\refresh_counter_reg[12]_i_1_n_5 ,\refresh_counter_reg[12]_i_1_n_6 ,\refresh_counter_reg[12]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[15] ,\refresh_counter_reg_n_0_[14] ,\refresh_counter_reg_n_0_[13] ,\refresh_counter_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[12]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[12]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[12]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[16]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_counter_reg[16]_i_1 
       (.CI(\refresh_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_refresh_counter_reg[16]_i_1_CO_UNCONNECTED [3],\refresh_counter_reg[16]_i_1_n_1 ,\refresh_counter_reg[16]_i_1_n_2 ,\refresh_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[16]_i_1_n_4 ,\refresh_counter_reg[16]_i_1_n_5 ,\refresh_counter_reg[16]_i_1_n_6 ,\refresh_counter_reg[16]_i_1_n_7 }),
        .S({LED_activating_counter,\refresh_counter_reg_n_0_[17] ,\refresh_counter_reg_n_0_[16] }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[16]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[16]_i_1_n_5 ),
        .Q(LED_activating_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[16]_i_1_n_4 ),
        .Q(LED_activating_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[0]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[0]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[0]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[4]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_counter_reg[4]_i_1 
       (.CI(\refresh_counter_reg[0]_i_1_n_0 ),
        .CO({\refresh_counter_reg[4]_i_1_n_0 ,\refresh_counter_reg[4]_i_1_n_1 ,\refresh_counter_reg[4]_i_1_n_2 ,\refresh_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[4]_i_1_n_4 ,\refresh_counter_reg[4]_i_1_n_5 ,\refresh_counter_reg[4]_i_1_n_6 ,\refresh_counter_reg[4]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[7] ,\refresh_counter_reg_n_0_[6] ,\refresh_counter_reg_n_0_[5] ,\refresh_counter_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[4]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[4]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[4]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[8]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_counter_reg[8]_i_1 
       (.CI(\refresh_counter_reg[4]_i_1_n_0 ),
        .CO({\refresh_counter_reg[8]_i_1_n_0 ,\refresh_counter_reg[8]_i_1_n_1 ,\refresh_counter_reg[8]_i_1_n_2 ,\refresh_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[8]_i_1_n_4 ,\refresh_counter_reg[8]_i_1_n_5 ,\refresh_counter_reg[8]_i_1_n_6 ,\refresh_counter_reg[8]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[11] ,\refresh_counter_reg_n_0_[10] ,\refresh_counter_reg_n_0_[9] ,\refresh_counter_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\refresh_counter_reg[8]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[9] ));
endmodule

module I2CMASTER
   (QUEUED_OBUF,
    E,
    SDA_M_TRI,
    SCL_M_TRI,
    \counter_reg[5] ,
    \DOUT_reg[7]_0 ,
    SDA_M_IBUF,
    CLK,
    RST_confirm_OBUF,
    RD_IBUF,
    WE_IBUF,
    DIN_IBUF,
    Q);
  output QUEUED_OBUF;
  output [0:0]E;
  output SDA_M_TRI;
  output SCL_M_TRI;
  output \counter_reg[5] ;
  output [7:0]\DOUT_reg[7]_0 ;
  input SDA_M_IBUF;
  input CLK;
  input RST_confirm_OBUF;
  input RD_IBUF;
  input WE_IBUF;
  input [7:0]DIN_IBUF;
  input [1:0]Q;

  wire CLK;
  wire DATA_VALID_i_1_n_0;
  wire DATA_VALID_i_3_n_0;
  wire DATA_VALID_i_4_n_0;
  wire [7:0]DIN_IBUF;
  wire \DOUT[0]_i_1_n_0 ;
  wire \DOUT[1]_i_1_n_0 ;
  wire \DOUT[2]_i_1_n_0 ;
  wire \DOUT[3]_i_1_n_0 ;
  wire \DOUT[4]_i_1_n_0 ;
  wire \DOUT[5]_i_1_n_0 ;
  wire \DOUT[6]_i_1_n_0 ;
  wire \DOUT[7]_i_1_n_0 ;
  wire \DOUT[7]_i_2_n_0 ;
  wire [7:0]\DOUT_reg[7]_0 ;
  wire [0:0]E;
  wire [1:0]Q;
  wire QUEUED_OBUF;
  wire QUEUED_i_2_n_0;
  wire QUEUED_i_3_n_0;
  wire RD_IBUF;
  wire RST_confirm_OBUF;
  wire SCL_M_TRI;
  wire SCL_OUT_i_1_n_0;
  wire SCL_OUT_i_2_n_0;
  wire SCL_OUT_i_3_n_0;
  wire SCL_OUT_i_4_n_0;
  wire SDA_M_IBUF;
  wire SDA_M_TRI;
  wire SDA_OUT_i_1_n_0;
  wire SDA_OUT_i_2_n_0;
  wire SDA_OUT_i_3_n_0;
  wire SDA_OUT_i_4_n_0;
  wire SDA_OUT_i_5_n_0;
  wire SDA_OUT_i_6_n_0;
  wire SDA_OUT_i_7_n_0;
  wire SDA_OUT_i_8_n_0;
  wire WE_IBUF;
  wire \counter[0]_i_1__1_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter[3]_i_5_n_0 ;
  wire \counter_reg[5] ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire data50;
  wire nackdet_i_1_n_0;
  wire nackdet_i_2_n_0;
  wire nackdet_i_3_n_0;
  wire nackdet_reg_n_0;
  wire [3:1]next_state;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[3]_i_1_n_0 ;
  wire \next_state[3]_i_2_n_0 ;
  wire [7:7]p_0_out;
  wire p_10_in;
  wire p_11_in;
  wire [7:1]p_2_in;
  wire sda_in_q;
  wire sda_in_qq;
  wire [7:0]shift;
  wire \shift[0]_i_1_n_0 ;
  wire \shift[0]_i_2_n_0 ;
  wire \shift[0]_i_3_n_0 ;
  wire \shift[0]_i_4_n_0 ;
  wire \shift[1]_i_2_n_0 ;
  wire \shift[2]_i_2_n_0 ;
  wire \shift[3]_i_2_n_0 ;
  wire \shift[4]_i_2_n_0 ;
  wire \shift[5]_i_2_n_0 ;
  wire \shift[6]_i_2_n_0 ;
  wire \shift[7]_i_3_n_0 ;
  wire \shift[7]_i_4_n_0 ;
  wire \shift[7]_i_5_n_0 ;
  wire \shift[7]_i_6_n_0 ;
  wire \shift[7]_i_7_n_0 ;
  wire \shift[7]_i_8_n_0 ;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2__0_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4__0_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;

  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    DATA_VALID_i_1
       (.I0(\shift[7]_i_4_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state[4]_i_3_n_0 ),
        .I4(p_10_in),
        .I5(E),
        .O(DATA_VALID_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBABBBAAAAAAAA)) 
    DATA_VALID_i_2
       (.I0(DATA_VALID_i_3_n_0),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(DATA_VALID_i_4_n_0),
        .O(p_10_in));
  LUT6 #(
    .INIT(64'h0A10000000000000)) 
    DATA_VALID_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(DATA_VALID_i_3_n_0));
  LUT6 #(
    .INIT(64'h0002FFFF0002000F)) 
    DATA_VALID_i_4
       (.I0(\state[0]_i_5_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\counter_reg[5] ),
        .O(DATA_VALID_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    DATA_VALID_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(DATA_VALID_i_1_n_0),
        .Q(E));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \DOUT[0]_i_1 
       (.I0(shift[0]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\DOUT[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \DOUT[1]_i_1 
       (.I0(shift[1]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\DOUT[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \DOUT[2]_i_1 
       (.I0(shift[2]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\DOUT[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \DOUT[3]_i_1 
       (.I0(shift[3]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\DOUT[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \DOUT[4]_i_1 
       (.I0(shift[4]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\DOUT[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \DOUT[5]_i_1 
       (.I0(shift[5]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\DOUT[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \DOUT[6]_i_1 
       (.I0(shift[6]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\DOUT[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800100000001)) 
    \DOUT[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\counter_reg[5] ),
        .O(\DOUT[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \DOUT[7]_i_2 
       (.I0(shift[7]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\DOUT[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(CLK),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\DOUT[0]_i_1_n_0 ),
        .Q(\DOUT_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(CLK),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\DOUT[1]_i_1_n_0 ),
        .Q(\DOUT_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(CLK),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\DOUT[2]_i_1_n_0 ),
        .Q(\DOUT_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(CLK),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\DOUT[3]_i_1_n_0 ),
        .Q(\DOUT_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(CLK),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\DOUT[4]_i_1_n_0 ),
        .Q(\DOUT_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(CLK),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\DOUT[5]_i_1_n_0 ),
        .Q(\DOUT_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(CLK),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\DOUT[6]_i_1_n_0 ),
        .Q(\DOUT_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(CLK),
        .CE(\DOUT[7]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\DOUT[7]_i_2_n_0 ),
        .Q(\DOUT_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'h00DD00DD005D0C5D)) 
    QUEUED_i_1
       (.I0(QUEUED_i_3_n_0),
        .I1(\counter_reg[5] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(p_11_in));
  LUT6 #(
    .INIT(64'h0A00000C00000000)) 
    QUEUED_i_2
       (.I0(RD_IBUF),
        .I1(WE_IBUF),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[2]_i_3_n_0 ),
        .O(QUEUED_i_2_n_0));
  LUT6 #(
    .INIT(64'hDFFCDFFCFCFCFFFC)) 
    QUEUED_i_3
       (.I0(\state[2]_i_4_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state[0]_i_5_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(QUEUED_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    QUEUED_reg
       (.C(CLK),
        .CE(p_11_in),
        .CLR(RST_confirm_OBUF),
        .D(QUEUED_i_2_n_0),
        .Q(QUEUED_OBUF));
  LUT6 #(
    .INIT(64'hFFFEAAAA0002AAAA)) 
    SCL_OUT_i_1
       (.I0(SCL_OUT_i_2_n_0),
        .I1(SCL_OUT_i_3_n_0),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(SCL_OUT_i_4_n_0),
        .I5(SCL_M_TRI),
        .O(SCL_OUT_i_1_n_0));
  LUT6 #(
    .INIT(64'h888AA8A88AA8881B)) 
    SCL_OUT_i_2
       (.I0(\counter_reg[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(SCL_OUT_i_2_n_0));
  LUT6 #(
    .INIT(64'h3CBF3CBCF0F0F0F0)) 
    SCL_OUT_i_3
       (.I0(RD_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(nackdet_reg_n_0),
        .I4(WE_IBUF),
        .I5(\state_reg_n_0_[3] ),
        .O(SCL_OUT_i_3_n_0));
  LUT6 #(
    .INIT(64'hCFCFEFDFCFCFCF0F)) 
    SCL_OUT_i_4
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\counter_reg[5] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(SCL_OUT_i_4_n_0));
  FDPE #(
    .INIT(1'b1)) 
    SCL_OUT_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SCL_OUT_i_1_n_0),
        .PRE(RST_confirm_OBUF),
        .Q(SCL_M_TRI));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    SDA_OUT_i_1
       (.I0(\counter_reg[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(SDA_OUT_i_2_n_0),
        .I3(SDA_OUT_i_3_n_0),
        .I4(SDA_OUT_i_4_n_0),
        .I5(SDA_M_TRI),
        .O(SDA_OUT_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBF3FBF388000800)) 
    SDA_OUT_i_2
       (.I0(SDA_OUT_i_5_n_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(SDA_OUT_i_6_n_0),
        .O(SDA_OUT_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF1B180000)) 
    SDA_OUT_i_3
       (.I0(SDA_OUT_i_7_n_0),
        .I1(\state[0]_i_5_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(\counter_reg[5] ),
        .I4(\counter[3]_i_5_n_0 ),
        .I5(SDA_OUT_i_8_n_0),
        .O(SDA_OUT_i_3_n_0));
  LUT6 #(
    .INIT(64'h0003030373F1D070)) 
    SDA_OUT_i_4
       (.I0(\counter_reg[5] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[4] ),
        .O(SDA_OUT_i_4_n_0));
  LUT6 #(
    .INIT(64'h0F2FFF2F0020F020)) 
    SDA_OUT_i_5
       (.I0(WE_IBUF),
        .I1(nackdet_reg_n_0),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(RD_IBUF),
        .I5(\counter_reg[5] ),
        .O(SDA_OUT_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFACF00000ACF)) 
    SDA_OUT_i_6
       (.I0(\state[2]_i_4_n_0 ),
        .I1(shift[7]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\counter_reg[5] ),
        .O(SDA_OUT_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h01036B8D)) 
    SDA_OUT_i_7
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[4] ),
        .O(SDA_OUT_i_7_n_0));
  LUT6 #(
    .INIT(64'h3333022033333FFF)) 
    SDA_OUT_i_8
       (.I0(\counter_reg[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(SDA_OUT_i_8_n_0));
  FDPE #(
    .INIT(1'b1)) 
    SDA_OUT_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SDA_OUT_i_1_n_0),
        .PRE(RST_confirm_OBUF),
        .Q(SDA_M_TRI));
  LUT6 #(
    .INIT(64'h5555551455555550)) 
    \counter[0]_i_1__1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\counter[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \counter[1]_i_1__0 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter[3]_i_5_n_0 ),
        .O(\counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter[3]_i_5_n_0 ),
        .O(\counter[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[3]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\counter[3]_i_4_n_0 ),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \counter[3]_i_2 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(data50),
        .I4(\counter[3]_i_5_n_0 ),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00800080000C0000)) 
    \counter[3]_i_3 
       (.I0(\state[2]_i_4_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state[0]_i_5_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\counter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200200203)) 
    \counter[3]_i_4 
       (.I0(\counter_reg[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\counter[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h02010003)) 
    \counter[3]_i_5 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\counter[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\counter[0]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\counter[3]_i_2_n_0 ),
        .Q(data50));
  LUT6 #(
    .INIT(64'hFFFF0000AAEF0020)) 
    nackdet_i_1
       (.I0(nackdet_i_2_n_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(nackdet_reg_n_0),
        .I5(nackdet_i_3_n_0),
        .O(nackdet_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    nackdet_i_2
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(sda_in_qq),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[0] ),
        .O(nackdet_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFDDFDDFFDDFFD)) 
    nackdet_i_3
       (.I0(\counter_reg[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[2] ),
        .O(nackdet_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    nackdet_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(nackdet_i_1_n_0),
        .Q(nackdet_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \next_state[1]_i_1 
       (.I0(next_state[1]),
        .I1(WE_IBUF),
        .I2(\next_state[3]_i_2_n_0 ),
        .O(\next_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_state[3]_i_1 
       (.I0(next_state[3]),
        .I1(\next_state[3]_i_2_n_0 ),
        .O(\next_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \next_state[3]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\counter_reg[5] ),
        .I2(RST_confirm_OBUF),
        .I3(\state[1]_i_6_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\next_state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(next_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\next_state[3]_i_1_n_0 ),
        .Q(next_state[3]),
        .R(1'b0));
  FDPE #(
    .INIT(1'b1)) 
    sda_in_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SDA_M_IBUF),
        .PRE(RST_confirm_OBUF),
        .Q(sda_in_q));
  FDPE #(
    .INIT(1'b1)) 
    sda_in_qq_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda_in_q),
        .PRE(RST_confirm_OBUF),
        .Q(sda_in_qq));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    \shift[0]_i_1 
       (.I0(sda_in_qq),
        .I1(\state_reg_n_0_[4] ),
        .I2(\shift[0]_i_2_n_0 ),
        .I3(\counter[3]_i_3_n_0 ),
        .I4(\shift[0]_i_3_n_0 ),
        .I5(shift[0]),
        .O(\shift[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2AFF00002A00)) 
    \shift[0]_i_2 
       (.I0(sda_in_qq),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\shift[0]_i_4_n_0 ),
        .O(\shift[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000090000000000)) 
    \shift[0]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\counter_reg[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\shift[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F3F074F0C0F074)) 
    \shift[0]_i_4 
       (.I0(WE_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(sda_in_qq),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(DIN_IBUF[0]),
        .O(\shift[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0100)) 
    \shift[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(shift[0]),
        .I5(\shift[1]_i_2_n_0 ),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'h0500000100000500)) 
    \shift[1]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(DIN_IBUF[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\shift[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0100)) 
    \shift[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(shift[1]),
        .I5(\shift[2]_i_2_n_0 ),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h0500000100000500)) 
    \shift[2]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(DIN_IBUF[2]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\shift[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0100)) 
    \shift[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(shift[2]),
        .I5(\shift[3]_i_2_n_0 ),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h0500000100000500)) 
    \shift[3]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(DIN_IBUF[3]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\shift[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF11FF01)) 
    \shift[4]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\shift[7]_i_5_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\shift[4]_i_2_n_0 ),
        .I4(shift[3]),
        .I5(\state_reg_n_0_[4] ),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hA0AAA0ACAAAAA0AA)) 
    \shift[4]_i_2 
       (.I0(shift[3]),
        .I1(DIN_IBUF[4]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\shift[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0100)) 
    \shift[5]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(shift[4]),
        .I5(\shift[5]_i_2_n_0 ),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'h0500000100000500)) 
    \shift[5]_i_2 
       (.I0(\state_reg_n_0_[4] ),
        .I1(DIN_IBUF[5]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\shift[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift[6]_i_1 
       (.I0(shift[5]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\shift[6]_i_2_n_0 ),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hFF7FFF7D00120010)) 
    \shift[6]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(DIN_IBUF[6]),
        .I5(shift[5]),
        .O(\shift[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAEB)) 
    \shift[7]_i_1 
       (.I0(\shift[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\shift[7]_i_4_n_0 ),
        .I4(\shift[7]_i_5_n_0 ),
        .I5(\shift[7]_i_6_n_0 ),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift[7]_i_2 
       (.I0(shift[6]),
        .I1(\state_reg_n_0_[4] ),
        .I2(\shift[7]_i_7_n_0 ),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h00000000000C0A00)) 
    \shift[7]_i_3 
       (.I0(\state[0]_i_5_n_0 ),
        .I1(\counter_reg[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\shift[7]_i_8_n_0 ),
        .O(\shift[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \shift[7]_i_4 
       (.I0(\state_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\shift[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \shift[7]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\shift[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \shift[7]_i_6 
       (.I0(\state[2]_i_3_n_0 ),
        .I1(RD_IBUF),
        .I2(nackdet_reg_n_0),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\shift[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFF7D00120010)) 
    \shift[7]_i_7 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(DIN_IBUF[7]),
        .I5(shift[6]),
        .O(\shift[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \shift[7]_i_8 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\shift[7]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\shift[0]_i_1_n_0 ),
        .Q(shift[0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[1] 
       (.C(CLK),
        .CE(p_0_out),
        .CLR(RST_confirm_OBUF),
        .D(p_2_in[1]),
        .Q(shift[1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[2] 
       (.C(CLK),
        .CE(p_0_out),
        .CLR(RST_confirm_OBUF),
        .D(p_2_in[2]),
        .Q(shift[2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[3] 
       (.C(CLK),
        .CE(p_0_out),
        .CLR(RST_confirm_OBUF),
        .D(p_2_in[3]),
        .Q(shift[3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[4] 
       (.C(CLK),
        .CE(p_0_out),
        .CLR(RST_confirm_OBUF),
        .D(p_2_in[4]),
        .Q(shift[4]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[5] 
       (.C(CLK),
        .CE(p_0_out),
        .CLR(RST_confirm_OBUF),
        .D(p_2_in[5]),
        .Q(shift[5]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[6] 
       (.C(CLK),
        .CE(p_0_out),
        .CLR(RST_confirm_OBUF),
        .D(p_2_in[6]),
        .Q(shift[6]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg[7] 
       (.C(CLK),
        .CE(p_0_out),
        .CLR(RST_confirm_OBUF),
        .D(p_2_in[7]),
        .Q(shift[7]));
  LUT6 #(
    .INIT(64'h03050305030503F5)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080888AA8888AAAA)) 
    \state[0]_i_2 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(next_state[1]),
        .I3(data50),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEF00F0FEFE)) 
    \state[0]_i_3 
       (.I0(\state[2]_i_4_n_0 ),
        .I1(\state[0]_i_5_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(data50),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1FFF)) 
    \state[0]_i_4 
       (.I0(WE_IBUF),
        .I1(RD_IBUF),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_i_5 
       (.I0(WE_IBUF),
        .I1(nackdet_reg_n_0),
        .O(\state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFEEEEEEE)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\state[1]_i_4_n_0 ),
        .I4(\state[1]_i_5_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0FFFF50)) 
    \state[1]_i_2 
       (.I0(data50),
        .I1(next_state[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[1]_i_6_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h004A000000000A00)) 
    \state[1]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(data50),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \state[1]_i_5 
       (.I0(RD_IBUF),
        .I1(nackdet_reg_n_0),
        .I2(WE_IBUF),
        .O(\state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[1]_i_6 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAEAEAAAEAEAEA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2__0_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[2]_i_4_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0011110011001000)) 
    \state[2]_i_2__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(data50),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_4 
       (.I0(RD_IBUF),
        .I1(nackdet_reg_n_0),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCECECCCCFCCC)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(\state[3]_i_3_n_0 ),
        .I2(\state[3]_i_4__0_n_0 ),
        .I3(next_state[3]),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFAFAFBFBF2FB)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(WE_IBUF),
        .I4(nackdet_reg_n_0),
        .I5(RD_IBUF),
        .O(\state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \state[3]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \state[3]_i_4__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h5557555755570000)) 
    \state[4]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state[4]_i_3_n_0 ),
        .I4(\state[4]_i_4_n_0 ),
        .I5(\counter_reg[5] ),
        .O(\state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010100FF0000)) 
    \state[4]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state[4]_i_6_n_0 ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[4]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2200000000300033)) 
    \state[4]_i_4 
       (.I0(RD_IBUF),
        .I1(\state[4]_i_7_n_0 ),
        .I2(WE_IBUF),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[4]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\counter_reg[5] ));
  LUT6 #(
    .INIT(64'h00FFFFFFFFFFFFEF)) 
    \state[4]_i_6 
       (.I0(WE_IBUF),
        .I1(nackdet_reg_n_0),
        .I2(RD_IBUF),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \state[4]_i_7 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(nackdet_reg_n_0),
        .O(\state[4]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(CLK),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\state[4]_i_2_n_0 ),
        .Q(\state_reg_n_0_[4] ));
endmodule

module I2CSLAVE
   (SDA_S_TRI,
    SDA_S_IBUF,
    CLK,
    RST_confirm_OBUF,
    SCL_S_IBUF,
    Q);
  output SDA_S_TRI;
  input SDA_S_IBUF;
  input CLK;
  input RST_confirm_OBUF;
  input SCL_S_IBUF;
  input [5:0]Q;

  wire CLK;
  wire [5:0]Q;
  wire RST_confirm_OBUF;
  wire SCL_S_IBUF;
  wire SDA_OUT_i_1__0_n_0;
  wire SDA_OUT_i_2__0_n_0;
  wire SDA_OUT_i_3__0_n_0;
  wire SDA_OUT_i_4__0_n_0;
  wire SDA_OUT_i_5__0_n_0;
  wire SDA_S_IBUF;
  wire SDA_S_TRI;
  wire [2:0]counter;
  wire counter0;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[1]_i_1__1_n_0 ;
  wire \counter[2]_i_1__1_n_0 ;
  wire \counter[2]_i_3_n_0 ;
  wire \counter[2]_i_4_n_0 ;
  wire \counter[2]_i_5_n_0 ;
  wire next_state0;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[1]_i_1__0_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state[3]_i_2__0_n_0 ;
  wire \next_state[3]_i_3_n_0 ;
  wire \next_state[3]_i_4_n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire \next_state_reg_n_0_[3] ;
  wire operation_i_1_n_0;
  wire operation_i_2_n_0;
  wire operation_i_3_n_0;
  wire operation_i_4_n_0;
  wire operation_i_5_n_0;
  wire operation_i_6_n_0;
  wire operation_reg_n_0;
  wire scl_q;
  wire scl_qq;
  wire scl_qqq;
  wire sda;
  wire sda_q;
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
  wire \shiftreg[7]_i_6_n_0 ;
  wire shiftreg_0;
  wire \shiftreg_reg_n_0_[7] ;
  wire start_cond;
  wire start_cond_i_1_n_0;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[0]_i_2__0_n_0 ;
  wire \state[0]_i_3__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[1]_i_2__0_n_0 ;
  wire \state[1]_i_3__0_n_0 ;
  wire \state[1]_i_4__0_n_0 ;
  wire \state[2]_i_1__0_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_1__0_n_0 ;
  wire \state[3]_i_2__0_n_0 ;
  wire \state[3]_i_3__0_n_0 ;
  wire \state[3]_i_4_n_0 ;
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
    .INIT(64'h77F3FFFF77F30000)) 
    SDA_OUT_i_1__0
       (.I0(SDA_OUT_i_2__0_n_0),
        .I1(\shiftreg[7]_i_3_n_0 ),
        .I2(SDA_OUT_i_3__0_n_0),
        .I3(SDA_OUT_i_4__0_n_0),
        .I4(SDA_OUT_i_5__0_n_0),
        .I5(SDA_S_TRI),
        .O(SDA_OUT_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDDDD0FDDDD)) 
    SDA_OUT_i_2__0
       (.I0(scl_qqq),
        .I1(scl_qq),
        .I2(\shiftreg_reg_n_0_[7] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[2] ),
        .O(SDA_OUT_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    SDA_OUT_i_3__0
       (.I0(\state_reg_n_0_[2] ),
        .I1(scl_qqq),
        .I2(scl_qq),
        .I3(\state_reg_n_0_[3] ),
        .O(SDA_OUT_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFEFA)) 
    SDA_OUT_i_4__0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .O(SDA_OUT_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h5575757555D5D577)) 
    SDA_OUT_i_5__0
       (.I0(\shiftreg[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state[3]_i_9_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(SDA_OUT_i_5__0_n_0));
  FDPE #(
    .INIT(1'b1)) 
    SDA_OUT_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SDA_OUT_i_1__0_n_0),
        .PRE(RST_confirm_OBUF),
        .Q(SDA_S_TRI));
  LUT6 #(
    .INIT(64'hDE00DEDEDEDEDEDE)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(\counter[0]_i_2_n_0 ),
        .I2(counter0),
        .I3(\counter[0]_i_3_n_0 ),
        .I4(\counter[0]_i_4_n_0 ),
        .I5(\next_state[3]_i_3_n_0 ),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E000000000E000)) 
    \counter[0]_i_2 
       (.I0(\shiftreg[7]_i_4_n_0 ),
        .I1(\counter[0]_i_5_n_0 ),
        .I2(\next_state[3]_i_3_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[0]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\counter[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \counter[0]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(scl_qqq),
        .I2(scl_qq),
        .I3(\state_reg_n_0_[3] ),
        .O(\counter[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFA6)) 
    \counter[1]_i_1__1 
       (.I0(counter[1]),
        .I1(counter0),
        .I2(counter[0]),
        .I3(\counter[2]_i_3_n_0 ),
        .O(\counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA6)) 
    \counter[2]_i_1__1 
       (.I0(counter[2]),
        .I1(counter0),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(\counter[2]_i_3_n_0 ),
        .O(\counter[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003400000)) 
    \counter[2]_i_2 
       (.I0(\state[3]_i_7_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(scl_qqq),
        .I3(scl_qq),
        .I4(\next_state[3]_i_3_n_0 ),
        .I5(\counter[2]_i_4_n_0 ),
        .O(counter0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[2]_i_3 
       (.I0(RST_confirm_OBUF),
        .I1(start_cond),
        .I2(stop_cond),
        .I3(\counter[2]_i_5_n_0 ),
        .O(\counter[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFBEF)) 
    \counter[2]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\counter[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h30FDFFFD30FFFCFF)) 
    \counter[2]_i_5 
       (.I0(\state[3]_i_9_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\shiftreg[7]_i_4_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(\counter[2]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[1]_i_1__1_n_0 ),
        .Q(counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[2]_i_1__1_n_0 ),
        .Q(counter[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF700)) 
    \next_state[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\next_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF704)) 
    \next_state[1]_i_1__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\next_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \next_state[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\next_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A80880000)) 
    \next_state[3]_i_1__0 
       (.I0(\next_state[3]_i_3_n_0 ),
        .I1(\next_state[3]_i_4_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[3] ),
        .O(next_state0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \next_state[3]_i_2__0 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\next_state[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \next_state[3]_i_3 
       (.I0(stop_cond),
        .I1(start_cond),
        .I2(RST_confirm_OBUF),
        .O(\next_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDFDDDDDDDDDD)) 
    \next_state[3]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(sda),
        .I3(scl_qq),
        .I4(scl_qqq),
        .I5(\state[1]_i_3__0_n_0 ),
        .O(\next_state[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(CLK),
        .CE(next_state0),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(CLK),
        .CE(next_state0),
        .D(\next_state[1]_i_1__0_n_0 ),
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
    .INIT(64'hFFFEFF0000000000)) 
    operation_i_1
       (.I0(operation_i_2_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(RST_confirm_OBUF),
        .I4(\shiftreg[7]_i_3_n_0 ),
        .I5(operation_i_3_n_0),
        .O(operation_i_1_n_0));
  LUT6 #(
    .INIT(64'hE6EEEEEEEEEEEEEE)) 
    operation_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(scl_qqq),
        .I3(scl_qq),
        .I4(sda),
        .I5(\state[1]_i_3__0_n_0 ),
        .O(operation_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    operation_i_3
       (.I0(operation_i_4_n_0),
        .I1(scl_qqq),
        .I2(scl_qq),
        .I3(operation_i_5_n_0),
        .I4(operation_i_6_n_0),
        .I5(operation_reg_n_0),
        .O(operation_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    operation_i_4
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(operation_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    operation_i_5
       (.I0(RST_confirm_OBUF),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\shiftreg_reg_n_0_[7] ),
        .I4(shiftreg[6]),
        .I5(shiftreg[0]),
        .O(operation_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000040)) 
    operation_i_6
       (.I0(shiftreg[1]),
        .I1(shiftreg[5]),
        .I2(shiftreg[3]),
        .I3(shiftreg[4]),
        .I4(shiftreg[2]),
        .O(operation_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    operation_reg
       (.C(CLK),
        .CE(1'b1),
        .D(operation_i_1_n_0),
        .Q(operation_reg_n_0),
        .R(1'b0));
  FDPE #(
    .INIT(1'b1)) 
    scl_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SCL_S_IBUF),
        .PRE(RST_confirm_OBUF),
        .Q(scl_q));
  FDPE #(
    .INIT(1'b1)) 
    scl_qq_reg
       (.C(CLK),
        .CE(1'b1),
        .D(scl_q),
        .PRE(RST_confirm_OBUF),
        .Q(scl_qq));
  FDPE #(
    .INIT(1'b1)) 
    scl_qqq_reg
       (.C(CLK),
        .CE(1'b1),
        .D(scl_qq),
        .PRE(RST_confirm_OBUF),
        .Q(scl_qqq));
  FDPE #(
    .INIT(1'b1)) 
    sda_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SDA_S_IBUF),
        .PRE(RST_confirm_OBUF),
        .Q(sda_q));
  FDPE #(
    .INIT(1'b1)) 
    sda_qq_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda_q),
        .PRE(RST_confirm_OBUF),
        .Q(sda));
  FDPE #(
    .INIT(1'b1)) 
    sda_qqq_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda),
        .PRE(RST_confirm_OBUF),
        .Q(sda_qqq));
  LUT6 #(
    .INIT(64'hAAB0ABAAAAB0A8AA)) 
    \shiftreg[0]_i_1 
       (.I0(Q[0]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(sda),
        .O(\shiftreg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAB0ABAAAA80A8AA)) 
    \shiftreg[1]_i_1 
       (.I0(Q[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shiftreg[0]),
        .O(\shiftreg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAB0ABAAAA80A8AA)) 
    \shiftreg[2]_i_1 
       (.I0(Q[2]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shiftreg[1]),
        .O(\shiftreg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAB0ABAAAA80A8AA)) 
    \shiftreg[3]_i_1 
       (.I0(Q[3]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shiftreg[2]),
        .O(\shiftreg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAB0ABAAAA80A8AA)) 
    \shiftreg[4]_i_1 
       (.I0(Q[4]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shiftreg[3]),
        .O(\shiftreg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAB0ABAAAA80A8AA)) 
    \shiftreg[5]_i_1 
       (.I0(Q[5]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(shiftreg[4]),
        .O(\shiftreg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000820)) 
    \shiftreg[6]_i_1 
       (.I0(shiftreg[5]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\shiftreg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8000AAAA8A0A)) 
    \shiftreg[7]_i_1 
       (.I0(\shiftreg[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\shiftreg[7]_i_4_n_0 ),
        .I4(\shiftreg[7]_i_5_n_0 ),
        .I5(\shiftreg[7]_i_6_n_0 ),
        .O(shiftreg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000820)) 
    \shiftreg[7]_i_2 
       (.I0(shiftreg[6]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\shiftreg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \shiftreg[7]_i_3 
       (.I0(start_cond),
        .I1(stop_cond),
        .O(\shiftreg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \shiftreg[7]_i_4 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(scl_qqq),
        .I3(scl_qq),
        .I4(sda),
        .O(\shiftreg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004044404)) 
    \shiftreg[7]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(scl_qqq),
        .I4(scl_qq),
        .I5(\state_reg_n_0_[3] ),
        .O(\shiftreg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF3EFFF)) 
    \shiftreg[7]_i_6 
       (.I0(operation_reg_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(scl_qqq),
        .I4(scl_qq),
        .I5(\state_reg_n_0_[3] ),
        .O(\shiftreg[7]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[0] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(RST_confirm_OBUF),
        .D(\shiftreg[0]_i_1_n_0 ),
        .Q(shiftreg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[1] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(RST_confirm_OBUF),
        .D(\shiftreg[1]_i_1_n_0 ),
        .Q(shiftreg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[2] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(RST_confirm_OBUF),
        .D(\shiftreg[2]_i_1_n_0 ),
        .Q(shiftreg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[3] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(RST_confirm_OBUF),
        .D(\shiftreg[3]_i_1_n_0 ),
        .Q(shiftreg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[4] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(RST_confirm_OBUF),
        .D(\shiftreg[4]_i_1_n_0 ),
        .Q(shiftreg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[5] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(RST_confirm_OBUF),
        .D(\shiftreg[5]_i_1_n_0 ),
        .Q(shiftreg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[6] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(RST_confirm_OBUF),
        .D(\shiftreg[6]_i_1_n_0 ),
        .Q(shiftreg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \shiftreg_reg[7] 
       (.C(CLK),
        .CE(shiftreg_0),
        .CLR(RST_confirm_OBUF),
        .D(\shiftreg[7]_i_2_n_0 ),
        .Q(\shiftreg_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
        .CLR(RST_confirm_OBUF),
        .D(start_cond_i_1_n_0),
        .Q(start_cond));
  LUT6 #(
    .INIT(64'h00000000FFFFFF20)) 
    \state[0]_i_1__0 
       (.I0(\state[0]_i_2__0_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\next_state_reg_n_0_[0] ),
        .I3(start_cond),
        .I4(\state[0]_i_3__0_n_0 ),
        .I5(stop_cond),
        .O(\state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \state[0]_i_2__0 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0024E0E4)) 
    \state[0]_i_3__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(sda),
        .O(\state[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[1]_i_1__0 
       (.I0(stop_cond),
        .I1(start_cond),
        .I2(\state[1]_i_2__0_n_0 ),
        .O(\state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCCFFCCFE0CFE0FF)) 
    \state[1]_i_2__0 
       (.I0(\state[1]_i_3__0_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\next_state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[1]_i_3__0 
       (.I0(shiftreg[1]),
        .I1(shiftreg[0]),
        .I2(shiftreg[2]),
        .I3(shiftreg[4]),
        .I4(\state[1]_i_4__0_n_0 ),
        .O(\state[1]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \state[1]_i_4__0 
       (.I0(shiftreg[5]),
        .I1(\shiftreg_reg_n_0_[7] ),
        .I2(shiftreg[6]),
        .I3(shiftreg[3]),
        .O(\state[1]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \state[2]_i_1__0 
       (.I0(stop_cond),
        .I1(start_cond),
        .I2(\state[2]_i_2_n_0 ),
        .O(\state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFCFC3C3F1F1F)) 
    \state[2]_i_2 
       (.I0(\next_state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(operation_reg_n_0),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF10)) 
    \state[3]_i_1__0 
       (.I0(\state[3]_i_3__0_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(start_cond),
        .I4(stop_cond),
        .I5(\state[3]_i_4_n_0 ),
        .O(\state[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1010101010101011)) 
    \state[3]_i_2__0 
       (.I0(stop_cond),
        .I1(start_cond),
        .I2(\state[3]_i_5_n_0 ),
        .I3(operation_reg_n_0),
        .I4(\state[3]_i_6_n_0 ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFCD03CFC)) 
    \state[3]_i_3__0 
       (.I0(\state[3]_i_7_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(scl_qq),
        .I4(scl_qqq),
        .O(\state[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFAFC0AF)) 
    \state[3]_i_4 
       (.I0(\state[3]_i_8_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state[3]_i_9_n_0 ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44444CF044444CC0)) 
    \state[3]_i_5 
       (.I0(sda),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\next_state_reg_n_0_[3] ),
        .O(\state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \state[3]_i_6 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\state[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \state[3]_i_7 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(\state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF010000)) 
    \state[3]_i_8 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(\state_reg_n_0_[0] ),
        .I4(scl_qq),
        .I5(scl_qqq),
        .O(\state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[3]_i_9 
       (.I0(scl_qqq),
        .I1(scl_qq),
        .O(\state[3]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(\state[3]_i_1__0_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(\state[3]_i_1__0_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(\state[3]_i_1__0_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\state[2]_i_1__0_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(\state[3]_i_1__0_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(\state[3]_i_2__0_n_0 ),
        .Q(\state_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
        .CLR(RST_confirm_OBUF),
        .D(stop_cond0),
        .Q(stop_cond));
endmodule

module RealTimeClock
   (Q,
    CLK,
    RST_confirm_OBUF);
  output [5:0]Q;
  input CLK;
  input RST_confirm_OBUF;

  wire CLK;
  wire [5:0]Q;
  wire RST_confirm_OBUF;
  wire [31:1]count2;
  wire count2_carry__0_n_0;
  wire count2_carry__0_n_1;
  wire count2_carry__0_n_2;
  wire count2_carry__0_n_3;
  wire count2_carry__1_n_0;
  wire count2_carry__1_n_1;
  wire count2_carry__1_n_2;
  wire count2_carry__1_n_3;
  wire count2_carry__2_n_0;
  wire count2_carry__2_n_1;
  wire count2_carry__2_n_2;
  wire count2_carry__2_n_3;
  wire count2_carry__3_n_0;
  wire count2_carry__3_n_1;
  wire count2_carry__3_n_2;
  wire count2_carry__3_n_3;
  wire count2_carry__4_n_0;
  wire count2_carry__4_n_1;
  wire count2_carry__4_n_2;
  wire count2_carry__4_n_3;
  wire count2_carry__5_n_0;
  wire count2_carry__5_n_1;
  wire count2_carry__5_n_2;
  wire count2_carry__5_n_3;
  wire count2_carry__6_n_2;
  wire count2_carry__6_n_3;
  wire count2_carry_n_0;
  wire count2_carry_n_1;
  wire count2_carry_n_2;
  wire count2_carry_n_3;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[20]_i_5_n_0 ;
  wire \count[24]_i_2_n_0 ;
  wire \count[24]_i_3_n_0 ;
  wire \count[24]_i_4_n_0 ;
  wire \count[24]_i_5_n_0 ;
  wire \count[28]_i_2_n_0 ;
  wire \count[28]_i_3_n_0 ;
  wire \count[28]_i_4_n_0 ;
  wire \count[28]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [5:0]p_0_in__0;
  wire \seconds_counter[5]_i_10_n_0 ;
  wire \seconds_counter[5]_i_1_n_0 ;
  wire \seconds_counter[5]_i_3_n_0 ;
  wire \seconds_counter[5]_i_4_n_0 ;
  wire \seconds_counter[5]_i_5_n_0 ;
  wire \seconds_counter[5]_i_6_n_0 ;
  wire \seconds_counter[5]_i_7_n_0 ;
  wire \seconds_counter[5]_i_8_n_0 ;
  wire \seconds_counter[5]_i_9_n_0 ;
  wire [3:2]NLW_count2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count2_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count2_carry
       (.CI(1'b0),
        .CO({count2_carry_n_0,count2_carry_n_1,count2_carry_n_2,count2_carry_n_3}),
        .CYINIT(count_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count2[4:1]),
        .S(count_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count2_carry__0
       (.CI(count2_carry_n_0),
        .CO({count2_carry__0_n_0,count2_carry__0_n_1,count2_carry__0_n_2,count2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count2[8:5]),
        .S(count_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count2_carry__1
       (.CI(count2_carry__0_n_0),
        .CO({count2_carry__1_n_0,count2_carry__1_n_1,count2_carry__1_n_2,count2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count2[12:9]),
        .S(count_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count2_carry__2
       (.CI(count2_carry__1_n_0),
        .CO({count2_carry__2_n_0,count2_carry__2_n_1,count2_carry__2_n_2,count2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count2[16:13]),
        .S(count_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count2_carry__3
       (.CI(count2_carry__2_n_0),
        .CO({count2_carry__3_n_0,count2_carry__3_n_1,count2_carry__3_n_2,count2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count2[20:17]),
        .S(count_reg[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count2_carry__4
       (.CI(count2_carry__3_n_0),
        .CO({count2_carry__4_n_0,count2_carry__4_n_1,count2_carry__4_n_2,count2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count2[24:21]),
        .S(count_reg[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count2_carry__5
       (.CI(count2_carry__4_n_0),
        .CO({count2_carry__5_n_0,count2_carry__5_n_1,count2_carry__5_n_2,count2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count2[28:25]),
        .S(count_reg[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count2_carry__6
       (.CI(count2_carry__5_n_0),
        .CO({NLW_count2_carry__6_CO_UNCONNECTED[3:2],count2_carry__6_n_2,count2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count2_carry__6_O_UNCONNECTED[3],count2[31:29]}),
        .S({1'b0,count_reg[31:29]}));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[0]_i_2 
       (.I0(count_reg[3]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[0]_i_3 
       (.I0(count_reg[2]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[0]_i_4 
       (.I0(count_reg[1]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555655)) 
    \count[0]_i_5 
       (.I0(count_reg[0]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[12]_i_2 
       (.I0(count_reg[15]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[12]_i_3 
       (.I0(count_reg[14]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[12]_i_4 
       (.I0(count_reg[13]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[12]_i_5 
       (.I0(count_reg[12]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[16]_i_2 
       (.I0(count_reg[19]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[16]_i_3 
       (.I0(count_reg[18]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[16]_i_4 
       (.I0(count_reg[17]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[16]_i_5 
       (.I0(count_reg[16]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[20]_i_2 
       (.I0(count_reg[23]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[20]_i_3 
       (.I0(count_reg[22]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[20]_i_4 
       (.I0(count_reg[21]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[20]_i_5 
       (.I0(count_reg[20]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[24]_i_2 
       (.I0(count_reg[27]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[24]_i_3 
       (.I0(count_reg[26]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[24]_i_4 
       (.I0(count_reg[25]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[24]_i_5 
       (.I0(count_reg[24]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[28]_i_2 
       (.I0(count_reg[31]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[28]_i_3 
       (.I0(count_reg[30]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[28]_i_4 
       (.I0(count_reg[29]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[28]_i_5 
       (.I0(count_reg[28]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[4]_i_2 
       (.I0(count_reg[7]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[4]_i_3 
       (.I0(count_reg[6]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[4]_i_4 
       (.I0(count_reg[5]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[4]_i_5 
       (.I0(count_reg[4]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[8]_i_2 
       (.I0(count_reg[11]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[8]_i_3 
       (.I0(count_reg[10]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[8]_i_4 
       (.I0(count_reg[9]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \count[8]_i_5 
       (.I0(count_reg[8]),
        .I1(\seconds_counter[5]_i_6_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_4_n_0 ),
        .I4(\seconds_counter[5]_i_3_n_0 ),
        .O(\count[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,count_reg[0]}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count[0]_i_2_n_0 ,\count[0]_i_3_n_0 ,\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 ,\count[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({\count[24]_i_2_n_0 ,\count[24]_i_3_n_0 ,\count[24]_i_4_n_0 ,\count[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S({\count[28]_i_2_n_0 ,\count[28]_i_3_n_0 ,\count[28]_i_4_n_0 ,\count[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST_confirm_OBUF),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \seconds_counter[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \seconds_counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h00FFFFFF7F000000)) 
    \seconds_counter[2]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h0FFF7FFFF0000000)) 
    \seconds_counter[3]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h1FFFFFFFC0000000)) 
    \seconds_counter[4]_i_1 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(p_0_in__0[4]));
  LUT4 #(
    .INIT(16'h0004)) 
    \seconds_counter[5]_i_1 
       (.I0(\seconds_counter[5]_i_3_n_0 ),
        .I1(\seconds_counter[5]_i_4_n_0 ),
        .I2(\seconds_counter[5]_i_5_n_0 ),
        .I3(\seconds_counter[5]_i_6_n_0 ),
        .O(\seconds_counter[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \seconds_counter[5]_i_10 
       (.I0(count2[4]),
        .I1(count2[9]),
        .I2(count2[10]),
        .I3(count2[12]),
        .O(\seconds_counter[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h77FFFFFF80000000)) 
    \seconds_counter[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[5]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \seconds_counter[5]_i_3 
       (.I0(count2[6]),
        .I1(count2[13]),
        .I2(count2[25]),
        .I3(count2[18]),
        .I4(\seconds_counter[5]_i_7_n_0 ),
        .O(\seconds_counter[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \seconds_counter[5]_i_4 
       (.I0(count2[28]),
        .I1(count2[22]),
        .I2(count2[26]),
        .I3(count_reg[0]),
        .I4(\seconds_counter[5]_i_8_n_0 ),
        .O(\seconds_counter[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \seconds_counter[5]_i_5 
       (.I0(count2[17]),
        .I1(count2[11]),
        .I2(count2[1]),
        .I3(count2[5]),
        .I4(\seconds_counter[5]_i_9_n_0 ),
        .O(\seconds_counter[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \seconds_counter[5]_i_6 
       (.I0(count2[2]),
        .I1(count2[7]),
        .I2(count2[21]),
        .I3(count2[24]),
        .I4(\seconds_counter[5]_i_10_n_0 ),
        .O(\seconds_counter[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \seconds_counter[5]_i_7 
       (.I0(count2[15]),
        .I1(count2[31]),
        .I2(count2[20]),
        .I3(count2[27]),
        .O(\seconds_counter[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \seconds_counter[5]_i_8 
       (.I0(count2[23]),
        .I1(count2[29]),
        .I2(count2[16]),
        .I3(count2[8]),
        .O(\seconds_counter[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \seconds_counter[5]_i_9 
       (.I0(count2[14]),
        .I1(count2[3]),
        .I2(count2[30]),
        .I3(count2[19]),
        .O(\seconds_counter[5]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \seconds_counter_reg[0] 
       (.C(CLK),
        .CE(\seconds_counter[5]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(p_0_in__0[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seconds_counter_reg[1] 
       (.C(CLK),
        .CE(\seconds_counter[5]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(p_0_in__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seconds_counter_reg[2] 
       (.C(CLK),
        .CE(\seconds_counter[5]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(p_0_in__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \seconds_counter_reg[3] 
       (.C(CLK),
        .CE(\seconds_counter[5]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(p_0_in__0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \seconds_counter_reg[4] 
       (.C(CLK),
        .CE(\seconds_counter[5]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(p_0_in__0[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \seconds_counter_reg[5] 
       (.C(CLK),
        .CE(\seconds_counter[5]_i_1_n_0 ),
        .CLR(RST_confirm_OBUF),
        .D(p_0_in__0[5]),
        .Q(Q[5]));
endmodule

(* NotValidForBitStream *)
module TopFunc
   (clk,
    MCLK,
    RST,
    RST_confirm,
    RD,
    WE,
    SDA_M,
    SCL_M,
    DATA_VALID,
    QUEUED,
    DIN,
    Anode_Activate,
    LED_out,
    SDA_S,
    SCL_S,
    SCLK);
  input clk;
  input MCLK;
  input RST;
  output RST_confirm;
  input RD;
  input WE;
  inout SDA_M;
  inout SCL_M;
  output DATA_VALID;
  output QUEUED;
  input [7:0]DIN;
  output [3:0]Anode_Activate;
  output [6:0]LED_out;
  inout SDA_S;
  inout SCL_S;
  input SCLK;

  wire [3:0]Anode_Activate;
  wire [3:0]Anode_Activate_OBUF;
  wire DATA_VALID;
  wire DATA_VALID_OBUF;
  wire [7:0]DIN;
  wire [7:0]DIN_IBUF;
  wire [6:0]LED_out;
  wire [6:0]LED_out_OBUF;
  wire QUEUED;
  wire QUEUED_OBUF;
  wire RD;
  wire RD_IBUF;
  wire RST;
  wire RST_confirm;
  wire RST_confirm_OBUF;
  wire SCL_M;
  wire SCL_M_TRI;
  wire SCL_S;
  wire SCL_S_IBUF;
  wire SDA_M;
  wire SDA_M_IBUF;
  wire SDA_M_TRI;
  wire SDA_S;
  wire SDA_S_IBUF;
  wire SDA_S_TRI;
  wire WE;
  wire WE_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
PULLUP pullup_SCL_M
       (.O(SCL_M));
PULLUP pullup_SCL_S
       (.O(SCL_S));
PULLUP pullup_SDA_M
       (.O(SDA_M));
PULLUP pullup_SDA_S
       (.O(SDA_S));

initial begin
 $sdf_annotate("TopFunc_TB_time_synth.sdf",,,,"tool_control");
end
  OBUF \Anode_Activate_OBUF[0]_inst 
       (.I(Anode_Activate_OBUF[0]),
        .O(Anode_Activate[0]));
  OBUF \Anode_Activate_OBUF[1]_inst 
       (.I(Anode_Activate_OBUF[1]),
        .O(Anode_Activate[1]));
  OBUF \Anode_Activate_OBUF[2]_inst 
       (.I(Anode_Activate_OBUF[2]),
        .O(Anode_Activate[2]));
  OBUF \Anode_Activate_OBUF[3]_inst 
       (.I(Anode_Activate_OBUF[3]),
        .O(Anode_Activate[3]));
  Counter_slave Counter_slave_1
       (.CLK(clk_IBUF_BUFG),
        .RST_confirm_OBUF(RST_confirm_OBUF),
        .SCL_S_IBUF(SCL_S_IBUF),
        .SDA_S_IBUF(SDA_S_IBUF),
        .SDA_S_TRI(SDA_S_TRI));
  OBUF DATA_VALID_OBUF_inst
       (.I(DATA_VALID_OBUF),
        .O(DATA_VALID));
  IBUF \DIN_IBUF[0]_inst 
       (.I(DIN[0]),
        .O(DIN_IBUF[0]));
  IBUF \DIN_IBUF[1]_inst 
       (.I(DIN[1]),
        .O(DIN_IBUF[1]));
  IBUF \DIN_IBUF[2]_inst 
       (.I(DIN[2]),
        .O(DIN_IBUF[2]));
  IBUF \DIN_IBUF[3]_inst 
       (.I(DIN[3]),
        .O(DIN_IBUF[3]));
  IBUF \DIN_IBUF[4]_inst 
       (.I(DIN[4]),
        .O(DIN_IBUF[4]));
  IBUF \DIN_IBUF[5]_inst 
       (.I(DIN[5]),
        .O(DIN_IBUF[5]));
  IBUF \DIN_IBUF[6]_inst 
       (.I(DIN[6]),
        .O(DIN_IBUF[6]));
  IBUF \DIN_IBUF[7]_inst 
       (.I(DIN[7]),
        .O(DIN_IBUF[7]));
  Display_master Display_master_1
       (.Anode_Activate_OBUF(Anode_Activate_OBUF),
        .CLK(clk_IBUF_BUFG),
        .DIN_IBUF(DIN_IBUF),
        .E(DATA_VALID_OBUF),
        .LED_out_OBUF(LED_out_OBUF),
        .QUEUED_OBUF(QUEUED_OBUF),
        .RD_IBUF(RD_IBUF),
        .RST_confirm_OBUF(RST_confirm_OBUF),
        .SCL_M_TRI(SCL_M_TRI),
        .SDA_M_IBUF(SDA_M_IBUF),
        .SDA_M_TRI(SDA_M_TRI),
        .WE_IBUF(WE_IBUF));
  OBUF \LED_out_OBUF[0]_inst 
       (.I(LED_out_OBUF[0]),
        .O(LED_out[0]));
  OBUF \LED_out_OBUF[1]_inst 
       (.I(LED_out_OBUF[1]),
        .O(LED_out[1]));
  OBUF \LED_out_OBUF[2]_inst 
       (.I(LED_out_OBUF[2]),
        .O(LED_out[2]));
  OBUF \LED_out_OBUF[3]_inst 
       (.I(LED_out_OBUF[3]),
        .O(LED_out[3]));
  OBUF \LED_out_OBUF[4]_inst 
       (.I(LED_out_OBUF[4]),
        .O(LED_out[4]));
  OBUF \LED_out_OBUF[5]_inst 
       (.I(LED_out_OBUF[5]),
        .O(LED_out[5]));
  OBUF \LED_out_OBUF[6]_inst 
       (.I(LED_out_OBUF[6]),
        .O(LED_out[6]));
  OBUF QUEUED_OBUF_inst
       (.I(QUEUED_OBUF),
        .O(QUEUED));
  IBUF RD_IBUF_inst
       (.I(RD),
        .O(RD_IBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_confirm_OBUF));
  OBUF RST_confirm_OBUF_inst
       (.I(RST_confirm_OBUF),
        .O(RST_confirm));
  OBUFT SCL_M_OBUFT_inst
       (.I(1'b0),
        .O(SCL_M),
        .T(SCL_M_TRI));
  IBUF SCL_S_IBUF_inst
       (.I(SCL_S),
        .O(SCL_S_IBUF));
  IOBUF_UNIQ_BASE_ SDA_M_IOBUF_inst
       (.I(1'b0),
        .IO(SDA_M),
        .O(SDA_M_IBUF),
        .T(SDA_M_TRI));
  IOBUF_HD2 SDA_S_IOBUF_inst
       (.I(1'b0),
        .IO(SDA_S),
        .O(SDA_S_IBUF),
        .T(SDA_S_TRI));
  IBUF WE_IBUF_inst
       (.I(WE),
        .O(WE_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
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
