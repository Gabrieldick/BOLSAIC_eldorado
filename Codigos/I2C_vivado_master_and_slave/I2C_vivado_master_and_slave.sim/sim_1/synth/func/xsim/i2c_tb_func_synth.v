// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Oct 25 14:58:13 2023
// Host        : pc8ce55rt running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/gmdick/Desktop/BOLSAIC_eldorado/Codigos/I2C_vivado_master_and_slave/I2C_vivado_master_and_slave.sim/sim_1/synth/func/xsim/i2c_tb_func_synth.v
// Design      : i2c_master
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_BYTES = "1" *) (* DATA_BYTES = "2" *) (* REG_ADDR_WIDTH = "8" *) 
(* SR_WIDTH = "32" *) (* ST_WIDTH = "4" *) (* s_idle = "0" *) 
(* s_rcv_ack = "8" *) (* s_send_ack = "6" *) (* s_send_nack = "7" *) 
(* s_shift_in = "5" *) (* s_shift_out = "4" *) (* s_start_read = "2" *) 
(* s_start_write = "1" *) (* s_stop = "3" *) 
(* NotValidForBitStream *)
module i2c_master
   (clk,
    reset,
    clk_div,
    open_drain,
    sda_in,
    sda_out,
    sda_oen,
    scl_in,
    scl_out,
    scl_oen,
    chip_addr,
    reg_addr,
    write_en,
    write_mode,
    read_en,
    data_out,
    data_in,
    status,
    done,
    busy);
  input clk;
  input reset;
  input [11:0]clk_div;
  input open_drain;
  input sda_in;
  output sda_out;
  output sda_oen;
  input scl_in;
  output scl_out;
  output scl_oen;
  input [6:0]chip_addr;
  input [7:0]reg_addr;
  input write_en;
  input write_mode;
  input read_en;
  output [15:0]data_out;
  input [15:0]data_in;
  output [3:0]status;
  output done;
  output busy;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire busy;
  wire busy_OBUF;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire [2:0]byte_count;
  wire [6:0]chip_addr;
  wire [6:0]chip_addr_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \clk_count[0]_i_1_n_0 ;
  wire \clk_count[0]_i_2_n_0 ;
  wire \clk_count[0]_i_4_n_0 ;
  wire [11:0]clk_count_reg;
  wire \clk_count_reg[0]_i_3_n_0 ;
  wire \clk_count_reg[0]_i_3_n_1 ;
  wire \clk_count_reg[0]_i_3_n_2 ;
  wire \clk_count_reg[0]_i_3_n_3 ;
  wire \clk_count_reg[0]_i_3_n_4 ;
  wire \clk_count_reg[0]_i_3_n_5 ;
  wire \clk_count_reg[0]_i_3_n_6 ;
  wire \clk_count_reg[0]_i_3_n_7 ;
  wire \clk_count_reg[4]_i_1_n_0 ;
  wire \clk_count_reg[4]_i_1_n_1 ;
  wire \clk_count_reg[4]_i_1_n_2 ;
  wire \clk_count_reg[4]_i_1_n_3 ;
  wire \clk_count_reg[4]_i_1_n_4 ;
  wire \clk_count_reg[4]_i_1_n_5 ;
  wire \clk_count_reg[4]_i_1_n_6 ;
  wire \clk_count_reg[4]_i_1_n_7 ;
  wire \clk_count_reg[8]_i_1_n_1 ;
  wire \clk_count_reg[8]_i_1_n_2 ;
  wire \clk_count_reg[8]_i_1_n_3 ;
  wire \clk_count_reg[8]_i_1_n_4 ;
  wire \clk_count_reg[8]_i_1_n_5 ;
  wire \clk_count_reg[8]_i_1_n_6 ;
  wire \clk_count_reg[8]_i_1_n_7 ;
  wire [11:0]clk_div;
  wire [11:0]clk_div_IBUF;
  wire [15:0]data_in;
  wire [15:0]data_in_IBUF;
  wire [15:0]data_out;
  wire \data_out[15]_i_1_n_0 ;
  wire [15:0]data_out_OBUF;
  wire done;
  wire done0_out;
  wire done_OBUF;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire [31:1]in40;
  wire in_prog_i_1_n_0;
  wire in_prog_i_2_n_0;
  wire in_prog_i_3_n_0;
  wire in_prog_i_4_n_0;
  wire in_prog_i_5_n_0;
  wire in_prog_reg_n_0;
  wire oen_reg_i_1_n_0;
  wire oen_reg_i_2_n_0;
  wire oen_reg_i_3_n_0;
  wire oen_reg_i_4_n_0;
  wire oen_reg_i_5_n_0;
  wire oen_reg_i_6_n_0;
  wire oen_reg_i_7_n_0;
  wire oen_reg_i_8_n_0;
  wire oen_reg_i_9_n_0;
  wire open_drain;
  wire open_drain_IBUF;
  wire p_0_in;
  wire p_0_in4_in;
  wire read_en;
  wire read_en_IBUF;
  wire reading_i_1_n_0;
  wire reading_i_2_n_0;
  wire reading_reg_n_0;
  wire [7:0]reg_addr;
  wire [7:0]reg_addr_IBUF;
  wire reset;
  wire reset_IBUF;
  wire \scl_count[0]_i_1_n_0 ;
  wire \scl_count[1]_i_1_n_0 ;
  wire \scl_count_reg_n_0_[0] ;
  wire scl_in;
  wire scl_in_IBUF;
  wire scl_oen;
  wire scl_oen_OBUF;
  wire scl_out;
  wire scl_out_OBUF;
  wire scl_s;
  wire sda_in;
  wire sda_in_IBUF;
  wire sda_oen;
  wire sda_oen_OBUF;
  wire sda_out;
  wire sda_out_OBUF;
  wire sda_reg_i_10_n_0;
  wire sda_reg_i_11_n_0;
  wire sda_reg_i_12_n_0;
  wire sda_reg_i_13_n_0;
  wire sda_reg_i_14_n_0;
  wire sda_reg_i_1_n_0;
  wire sda_reg_i_2_n_0;
  wire sda_reg_i_3_n_0;
  wire sda_reg_i_4_n_0;
  wire sda_reg_i_5_n_0;
  wire sda_reg_i_6_n_0;
  wire sda_reg_i_7_n_0;
  wire sda_reg_i_8_n_0;
  wire sda_reg_i_9_n_0;
  wire sda_s;
  wire \sr[0]_i_1_n_0 ;
  wire \sr[10]_i_1_n_0 ;
  wire \sr[11]_i_1_n_0 ;
  wire \sr[12]_i_1_n_0 ;
  wire \sr[13]_i_1_n_0 ;
  wire \sr[14]_i_1_n_0 ;
  wire \sr[15]_i_1_n_0 ;
  wire \sr[16]_i_1_n_0 ;
  wire \sr[17]_i_1_n_0 ;
  wire \sr[18]_i_1_n_0 ;
  wire \sr[19]_i_1_n_0 ;
  wire \sr[1]_i_1_n_0 ;
  wire \sr[20]_i_1_n_0 ;
  wire \sr[21]_i_1_n_0 ;
  wire \sr[22]_i_1_n_0 ;
  wire \sr[23]_i_1_n_0 ;
  wire \sr[23]_i_2_n_0 ;
  wire \sr[24]_i_1_n_0 ;
  wire \sr[25]_i_1_n_0 ;
  wire \sr[26]_i_1_n_0 ;
  wire \sr[27]_i_1_n_0 ;
  wire \sr[28]_i_1_n_0 ;
  wire \sr[29]_i_1_n_0 ;
  wire \sr[2]_i_1_n_0 ;
  wire \sr[30]_i_1_n_0 ;
  wire \sr[31]_i_1_n_0 ;
  wire \sr[31]_i_2_n_0 ;
  wire \sr[31]_i_3_n_0 ;
  wire \sr[31]_i_4_n_0 ;
  wire \sr[31]_i_5_n_0 ;
  wire \sr[31]_i_6_n_0 ;
  wire \sr[31]_i_7_n_0 ;
  wire \sr[31]_i_8_n_0 ;
  wire \sr[3]_i_1_n_0 ;
  wire \sr[4]_i_1_n_0 ;
  wire \sr[5]_i_1_n_0 ;
  wire \sr[6]_i_1_n_0 ;
  wire \sr[7]_i_1_n_0 ;
  wire \sr[8]_i_1_n_0 ;
  wire \sr[9]_i_1_n_0 ;
  wire \sr_count[0]_i_1_n_0 ;
  wire \sr_count[1]_i_1_n_0 ;
  wire \sr_count[2]_i_1_n_0 ;
  wire \sr_count[3]_i_1_n_0 ;
  wire \sr_count[4]_i_1_n_0 ;
  wire \sr_count[4]_i_2_n_0 ;
  wire \sr_count[5]_i_10_n_0 ;
  wire \sr_count[5]_i_11_n_0 ;
  wire \sr_count[5]_i_12_n_0 ;
  wire \sr_count[5]_i_1_n_0 ;
  wire \sr_count[5]_i_2_n_0 ;
  wire \sr_count[5]_i_3_n_0 ;
  wire \sr_count[5]_i_4_n_0 ;
  wire \sr_count[5]_i_5_n_0 ;
  wire \sr_count[5]_i_7_n_0 ;
  wire \sr_count[5]_i_9_n_0 ;
  wire \sr_count_reg[5]_i_6_n_1 ;
  wire \sr_count_reg[5]_i_6_n_2 ;
  wire \sr_count_reg[5]_i_6_n_3 ;
  wire \sr_count_reg_n_0_[0] ;
  wire \sr_count_reg_n_0_[1] ;
  wire \sr_count_reg_n_0_[2] ;
  wire state0;
  wire state1;
  wire state130_out;
  wire [3:0]state__0;
  wire [3:0]status;
  wire \status[0]_i_1_n_0 ;
  wire \status[1]_i_1_n_0 ;
  wire \status[2]_i_1_n_0 ;
  wire \status[3]_i_1_n_0 ;
  wire \status[3]_i_2_n_0 ;
  wire [3:0]status_OBUF;
  wire write_en;
  wire write_en_IBUF;
  wire write_mode;
  wire write_mode_IBUF;
  wire writing_i_1_n_0;
  wire writing_reg_n_0;
  wire [3:3]\NLW_clk_count_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_sr_count_reg[5]_i_6_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFCCFCEEFECCFC)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(state130_out),
        .I4(\FSM_sequential_state[0]_i_5_n_0 ),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(byte_count[0]),
        .I1(byte_count[2]),
        .I2(byte_count[1]),
        .I3(\sr_count_reg_n_0_[2] ),
        .I4(\sr_count_reg_n_0_[0] ),
        .I5(\sr_count_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF2E00000000)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(read_en_IBUF),
        .I1(write_en_IBUF),
        .I2(in_prog_reg_n_0),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[0]_i_6_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(state__0[3]),
        .I2(reading_reg_n_0),
        .I3(writing_reg_n_0),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state130_out),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000055FFEA)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[0]),
        .I1(in_prog_reg_n_0),
        .I2(write_en_IBUF),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(state__0[3]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF400000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state130_out),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(state__0[3]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00F000F4)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(byte_count[2]),
        .I1(byte_count[1]),
        .I2(reading_reg_n_0),
        .I3(writing_reg_n_0),
        .I4(byte_count[0]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(reset_IBUF),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF333F00EE0000)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(state0),
        .I1(state__0[2]),
        .I2(oen_reg_i_9_n_0),
        .I3(in_prog_i_5_n_0),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0F0E0E0)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(write_en_IBUF),
        .I1(read_en_IBUF),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(write_mode_IBUF),
        .I4(in_prog_reg_n_0),
        .I5(\FSM_sequential_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\FSM_sequential_state[3]_i_6_n_0 ),
        .I1(state130_out),
        .I2(write_mode_IBUF),
        .I3(\FSM_sequential_state[3]_i_8_n_0 ),
        .I4(state__0[3]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000EEE00000)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\FSM_sequential_state[3]_i_9_n_0 ),
        .I1(\FSM_sequential_state[3]_i_10_n_0 ),
        .I2(state__0[2]),
        .I3(\sr_count[4]_i_2_n_0 ),
        .I4(state1),
        .I5(state__0[3]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1000100010001001)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(write_en_IBUF),
        .I5(read_en_IBUF),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00044000)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(byte_count[0]),
        .I1(writing_reg_n_0),
        .I2(in_prog_reg_n_0),
        .I3(byte_count[1]),
        .I4(byte_count[2]),
        .O(state130_out));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040400)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(state__0[0]),
        .I1(p_0_in),
        .I2(\scl_count_reg_n_0_[0] ),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:1000,iSTATE0:0010,iSTATE1:0100,iSTATE2:0001,iSTATE3:0000,iSTATE4:0110,iSTATE5:0111,iSTATE6:0011,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state[3]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:1000,iSTATE0:0010,iSTATE1:0100,iSTATE2:0001,iSTATE3:0000,iSTATE4:0110,iSTATE5:0111,iSTATE6:0011,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state[3]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:1000,iSTATE0:0010,iSTATE1:0100,iSTATE2:0001,iSTATE3:0000,iSTATE4:0110,iSTATE5:0111,iSTATE6:0011,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state[3]_i_2_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:1000,iSTATE0:0010,iSTATE1:0100,iSTATE2:0001,iSTATE3:0000,iSTATE4:0110,iSTATE5:0111,iSTATE6:0011,iSTATE7:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state[3]_i_2_n_0 ),
        .D(\FSM_sequential_state[3]_i_3_n_0 ),
        .Q(state__0[3]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  OBUF busy_OBUF_inst
       (.I(busy_OBUF),
        .O(busy));
  LUT4 #(
    .INIT(16'h0001)) 
    busy_i_1
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(busy_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    busy_i_2
       (.I0(read_en_IBUF),
        .I1(write_en_IBUF),
        .O(busy_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(clk_IBUF_BUFG),
        .CE(busy_i_1_n_0),
        .D(busy_i_2_n_0),
        .Q(busy_OBUF),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  IBUF \chip_addr_IBUF[0]_inst 
       (.I(chip_addr[0]),
        .O(chip_addr_IBUF[0]));
  IBUF \chip_addr_IBUF[1]_inst 
       (.I(chip_addr[1]),
        .O(chip_addr_IBUF[1]));
  IBUF \chip_addr_IBUF[2]_inst 
       (.I(chip_addr[2]),
        .O(chip_addr_IBUF[2]));
  IBUF \chip_addr_IBUF[3]_inst 
       (.I(chip_addr[3]),
        .O(chip_addr_IBUF[3]));
  IBUF \chip_addr_IBUF[4]_inst 
       (.I(chip_addr[4]),
        .O(chip_addr_IBUF[4]));
  IBUF \chip_addr_IBUF[5]_inst 
       (.I(chip_addr[5]),
        .O(chip_addr_IBUF[5]));
  IBUF \chip_addr_IBUF[6]_inst 
       (.I(chip_addr[6]),
        .O(chip_addr_IBUF[6]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT5 #(
    .INIT(32'h5D5D5DFD)) 
    \clk_count[0]_i_1 
       (.I0(reset_IBUF),
        .I1(state1),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(in_prog_reg_n_0),
        .I4(write_mode_IBUF),
        .O(\clk_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFC55555554)) 
    \clk_count[0]_i_2 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(scl_s),
        .O(\clk_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_count[0]_i_4 
       (.I0(clk_count_reg[0]),
        .O(\clk_count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[0]_i_3_n_7 ),
        .Q(clk_count_reg[0]),
        .R(\clk_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\clk_count_reg[0]_i_3_n_0 ,\clk_count_reg[0]_i_3_n_1 ,\clk_count_reg[0]_i_3_n_2 ,\clk_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_count_reg[0]_i_3_n_4 ,\clk_count_reg[0]_i_3_n_5 ,\clk_count_reg[0]_i_3_n_6 ,\clk_count_reg[0]_i_3_n_7 }),
        .S({clk_count_reg[3:1],\clk_count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[8]_i_1_n_5 ),
        .Q(clk_count_reg[10]),
        .R(\clk_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[8]_i_1_n_4 ),
        .Q(clk_count_reg[11]),
        .R(\clk_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[0]_i_3_n_6 ),
        .Q(clk_count_reg[1]),
        .R(\clk_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[0]_i_3_n_5 ),
        .Q(clk_count_reg[2]),
        .R(\clk_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[0]_i_3_n_4 ),
        .Q(clk_count_reg[3]),
        .R(\clk_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[4]_i_1_n_7 ),
        .Q(clk_count_reg[4]),
        .R(\clk_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[4]_i_1 
       (.CI(\clk_count_reg[0]_i_3_n_0 ),
        .CO({\clk_count_reg[4]_i_1_n_0 ,\clk_count_reg[4]_i_1_n_1 ,\clk_count_reg[4]_i_1_n_2 ,\clk_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_count_reg[4]_i_1_n_4 ,\clk_count_reg[4]_i_1_n_5 ,\clk_count_reg[4]_i_1_n_6 ,\clk_count_reg[4]_i_1_n_7 }),
        .S(clk_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[4]_i_1_n_6 ),
        .Q(clk_count_reg[5]),
        .R(\clk_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[4]_i_1_n_5 ),
        .Q(clk_count_reg[6]),
        .R(\clk_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[4]_i_1_n_4 ),
        .Q(clk_count_reg[7]),
        .R(\clk_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[8]_i_1_n_7 ),
        .Q(clk_count_reg[8]),
        .R(\clk_count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[8]_i_1 
       (.CI(\clk_count_reg[4]_i_1_n_0 ),
        .CO({\NLW_clk_count_reg[8]_i_1_CO_UNCONNECTED [3],\clk_count_reg[8]_i_1_n_1 ,\clk_count_reg[8]_i_1_n_2 ,\clk_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_count_reg[8]_i_1_n_4 ,\clk_count_reg[8]_i_1_n_5 ,\clk_count_reg[8]_i_1_n_6 ,\clk_count_reg[8]_i_1_n_7 }),
        .S(clk_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_2_n_0 ),
        .D(\clk_count_reg[8]_i_1_n_6 ),
        .Q(clk_count_reg[9]),
        .R(\clk_count[0]_i_1_n_0 ));
  IBUF \clk_div_IBUF[0]_inst 
       (.I(clk_div[0]),
        .O(clk_div_IBUF[0]));
  IBUF \clk_div_IBUF[10]_inst 
       (.I(clk_div[10]),
        .O(clk_div_IBUF[10]));
  IBUF \clk_div_IBUF[11]_inst 
       (.I(clk_div[11]),
        .O(clk_div_IBUF[11]));
  IBUF \clk_div_IBUF[1]_inst 
       (.I(clk_div[1]),
        .O(clk_div_IBUF[1]));
  IBUF \clk_div_IBUF[2]_inst 
       (.I(clk_div[2]),
        .O(clk_div_IBUF[2]));
  IBUF \clk_div_IBUF[3]_inst 
       (.I(clk_div[3]),
        .O(clk_div_IBUF[3]));
  IBUF \clk_div_IBUF[4]_inst 
       (.I(clk_div[4]),
        .O(clk_div_IBUF[4]));
  IBUF \clk_div_IBUF[5]_inst 
       (.I(clk_div[5]),
        .O(clk_div_IBUF[5]));
  IBUF \clk_div_IBUF[6]_inst 
       (.I(clk_div[6]),
        .O(clk_div_IBUF[6]));
  IBUF \clk_div_IBUF[7]_inst 
       (.I(clk_div[7]),
        .O(clk_div_IBUF[7]));
  IBUF \clk_div_IBUF[8]_inst 
       (.I(clk_div[8]),
        .O(clk_div_IBUF[8]));
  IBUF \clk_div_IBUF[9]_inst 
       (.I(clk_div[9]),
        .O(clk_div_IBUF[9]));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[10]_inst 
       (.I(data_in[10]),
        .O(data_in_IBUF[10]));
  IBUF \data_in_IBUF[11]_inst 
       (.I(data_in[11]),
        .O(data_in_IBUF[11]));
  IBUF \data_in_IBUF[12]_inst 
       (.I(data_in[12]),
        .O(data_in_IBUF[12]));
  IBUF \data_in_IBUF[13]_inst 
       (.I(data_in[13]),
        .O(data_in_IBUF[13]));
  IBUF \data_in_IBUF[14]_inst 
       (.I(data_in[14]),
        .O(data_in_IBUF[14]));
  IBUF \data_in_IBUF[15]_inst 
       (.I(data_in[15]),
        .O(data_in_IBUF[15]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  IBUF \data_in_IBUF[8]_inst 
       (.I(data_in[8]),
        .O(data_in_IBUF[8]));
  IBUF \data_in_IBUF[9]_inst 
       (.I(data_in[9]),
        .O(data_in_IBUF[9]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \data_out[15]_i_1 
       (.I0(\FSM_sequential_state[0]_i_5_n_0 ),
        .I1(state__0[1]),
        .I2(\scl_count_reg_n_0_[0] ),
        .I3(p_0_in),
        .I4(sda_reg_i_5_n_0),
        .I5(state1),
        .O(\data_out[15]_i_1_n_0 ));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[10]_inst 
       (.I(data_out_OBUF[10]),
        .O(data_out[10]));
  OBUF \data_out_OBUF[11]_inst 
       (.I(data_out_OBUF[11]),
        .O(data_out[11]));
  OBUF \data_out_OBUF[12]_inst 
       (.I(data_out_OBUF[12]),
        .O(data_out[12]));
  OBUF \data_out_OBUF[13]_inst 
       (.I(data_out_OBUF[13]),
        .O(data_out[13]));
  OBUF \data_out_OBUF[14]_inst 
       (.I(data_out_OBUF[14]),
        .O(data_out[14]));
  OBUF \data_out_OBUF[15]_inst 
       (.I(data_out_OBUF[15]),
        .O(data_out[15]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  OBUF \data_out_OBUF[8]_inst 
       (.I(data_out_OBUF[8]),
        .O(data_out[8]));
  OBUF \data_out_OBUF[9]_inst 
       (.I(data_out_OBUF[9]),
        .O(data_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(sda_s),
        .Q(data_out_OBUF[0]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[9]),
        .Q(data_out_OBUF[10]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[10]),
        .Q(data_out_OBUF[11]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[11]),
        .Q(data_out_OBUF[12]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[12]),
        .Q(data_out_OBUF[13]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[13]),
        .Q(data_out_OBUF[14]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[14]),
        .Q(data_out_OBUF[15]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[0]),
        .Q(data_out_OBUF[1]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[1]),
        .Q(data_out_OBUF[2]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[2]),
        .Q(data_out_OBUF[3]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[3]),
        .Q(data_out_OBUF[4]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[4]),
        .Q(data_out_OBUF[5]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[5]),
        .Q(data_out_OBUF[6]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[6]),
        .Q(data_out_OBUF[7]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[7]),
        .Q(data_out_OBUF[8]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_out[15]_i_1_n_0 ),
        .D(data_out_OBUF[8]),
        .Q(data_out_OBUF[9]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    done_i_1
       (.I0(done_i_3_n_0),
        .I1(state__0[3]),
        .I2(state1),
        .I3(\scl_count_reg_n_0_[0] ),
        .I4(p_0_in),
        .I5(done_i_4_n_0),
        .O(done0_out));
  LUT2 #(
    .INIT(4'hB)) 
    done_i_2
       (.I0(write_mode_IBUF),
        .I1(state__0[0]),
        .O(done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    done_i_3
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(done_i_3_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    done_i_4
       (.I0(write_mode_IBUF),
        .I1(state1),
        .I2(in_prog_i_5_n_0),
        .I3(in_prog_i_4_n_0),
        .I4(\FSM_sequential_state[3]_i_8_n_0 ),
        .I5(state130_out),
        .O(done_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk_IBUF_BUFG),
        .CE(done0_out),
        .D(done_i_2_n_0),
        .Q(done_OBUF),
        .R(\sr_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    in_prog_i_1
       (.I0(write_mode_IBUF),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(reset_IBUF),
        .O(in_prog_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    in_prog_i_2
       (.I0(in_prog_i_3_n_0),
        .I1(\FSM_sequential_state[3]_i_8_n_0 ),
        .I2(in_prog_i_4_n_0),
        .I3(in_prog_i_5_n_0),
        .I4(write_mode_IBUF),
        .I5(state130_out),
        .O(in_prog_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    in_prog_i_3
       (.I0(state1),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .O(in_prog_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    in_prog_i_4
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .O(in_prog_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    in_prog_i_5
       (.I0(p_0_in),
        .I1(\scl_count_reg_n_0_[0] ),
        .O(in_prog_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    in_prog_reg
       (.C(clk_IBUF_BUFG),
        .CE(in_prog_i_2_n_0),
        .D(write_mode_IBUF),
        .Q(in_prog_reg_n_0),
        .R(in_prog_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFA8FFFFFFA8FFA8)) 
    oen_reg_i_1
       (.I0(oen_reg_i_3_n_0),
        .I1(oen_reg_i_4_n_0),
        .I2(oen_reg_i_5_n_0),
        .I3(sda_reg_i_3_n_0),
        .I4(write_mode_IBUF),
        .I5(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(oen_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    oen_reg_i_2
       (.I0(oen_reg_i_6_n_0),
        .I1(state__0[0]),
        .I2(oen_reg_i_7_n_0),
        .I3(sda_reg_i_9_n_0),
        .I4(oen_reg_i_8_n_0),
        .O(oen_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FE00)) 
    oen_reg_i_3
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state1),
        .I4(state__0[3]),
        .O(oen_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1F0104F0)) 
    oen_reg_i_4
       (.I0(\scl_count_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(oen_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00003100)) 
    oen_reg_i_5
       (.I0(oen_reg_i_9_n_0),
        .I1(p_0_in),
        .I2(\scl_count_reg_n_0_[0] ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(sda_reg_i_12_n_0),
        .O(oen_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000008000800080)) 
    oen_reg_i_6
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(open_drain_IBUF),
        .I2(p_0_in4_in),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .I5(state130_out),
        .O(oen_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    oen_reg_i_7
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(in_prog_reg_n_0),
        .O(oen_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000FA0A00C00)) 
    oen_reg_i_8
       (.I0(in_prog_i_5_n_0),
        .I1(state0),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(state__0[3]),
        .O(oen_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    oen_reg_i_9
       (.I0(\sr_count_reg_n_0_[1] ),
        .I1(\sr_count_reg_n_0_[0] ),
        .I2(\sr_count_reg_n_0_[2] ),
        .O(oen_reg_i_9_n_0));
  FDSE #(
    .INIT(1'b1)) 
    oen_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(oen_reg_i_1_n_0),
        .D(oen_reg_i_2_n_0),
        .Q(sda_oen_OBUF),
        .S(\FSM_sequential_state[3]_i_1_n_0 ));
  IBUF open_drain_IBUF_inst
       (.I(open_drain),
        .O(open_drain_IBUF));
  IBUF read_en_IBUF_inst
       (.I(read_en),
        .O(read_en_IBUF));
  LUT5 #(
    .INIT(32'h80888888)) 
    reading_i_1
       (.I0(reset_IBUF),
        .I1(reading_i_2_n_0),
        .I2(write_en_IBUF),
        .I3(read_en_IBUF),
        .I4(sda_reg_i_5_n_0),
        .O(reading_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    reading_i_2
       (.I0(\sr[31]_i_4_n_0 ),
        .I1(\FSM_sequential_state[0]_i_6_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state1),
        .I5(reading_reg_n_0),
        .O(reading_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reading_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reading_i_1_n_0),
        .Q(reading_reg_n_0),
        .R(1'b0));
  IBUF \reg_addr_IBUF[0]_inst 
       (.I(reg_addr[0]),
        .O(reg_addr_IBUF[0]));
  IBUF \reg_addr_IBUF[1]_inst 
       (.I(reg_addr[1]),
        .O(reg_addr_IBUF[1]));
  IBUF \reg_addr_IBUF[2]_inst 
       (.I(reg_addr[2]),
        .O(reg_addr_IBUF[2]));
  IBUF \reg_addr_IBUF[3]_inst 
       (.I(reg_addr[3]),
        .O(reg_addr_IBUF[3]));
  IBUF \reg_addr_IBUF[4]_inst 
       (.I(reg_addr[4]),
        .O(reg_addr_IBUF[4]));
  IBUF \reg_addr_IBUF[5]_inst 
       (.I(reg_addr[5]),
        .O(reg_addr_IBUF[5]));
  IBUF \reg_addr_IBUF[6]_inst 
       (.I(reg_addr[6]),
        .O(reg_addr_IBUF[6]));
  IBUF \reg_addr_IBUF[7]_inst 
       (.I(reg_addr[7]),
        .O(reg_addr_IBUF[7]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \scl_count[0]_i_1 
       (.I0(\scl_count_reg_n_0_[0] ),
        .I1(state1),
        .I2(reset_IBUF),
        .I3(sda_reg_i_5_n_0),
        .O(\scl_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h12DE22EEFFFFFFFF)) 
    \scl_count[1]_i_1 
       (.I0(p_0_in),
        .I1(sda_reg_i_5_n_0),
        .I2(state1),
        .I3(in_prog_reg_n_0),
        .I4(\scl_count_reg_n_0_[0] ),
        .I5(reset_IBUF),
        .O(\scl_count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scl_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\scl_count[0]_i_1_n_0 ),
        .Q(\scl_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scl_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\scl_count[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  IBUF scl_in_IBUF_inst
       (.I(scl_in),
        .O(scl_in_IBUF));
  OBUF scl_oen_OBUF_inst
       (.I(scl_oen_OBUF),
        .O(scl_oen));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    scl_oen_OBUF_inst_i_1
       (.I0(open_drain_IBUF),
        .I1(p_0_in),
        .O(scl_oen_OBUF));
  OBUF scl_out_OBUF_inst
       (.I(scl_out_OBUF),
        .O(scl_out));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    scl_out_OBUF_inst_i_1
       (.I0(p_0_in),
        .I1(open_drain_IBUF),
        .O(scl_out_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    scl_s_reg
       (.C(clk_IBUF_BUFG),
        .CE(reset_IBUF),
        .D(scl_in_IBUF),
        .Q(scl_s),
        .R(1'b0));
  IBUF sda_in_IBUF_inst
       (.I(sda_in),
        .O(sda_in_IBUF));
  OBUF sda_oen_OBUF_inst
       (.I(sda_oen_OBUF),
        .O(sda_oen));
  OBUF sda_out_OBUF_inst
       (.I(sda_out_OBUF),
        .O(sda_out));
  LUT6 #(
    .INIT(64'hFCFCFCFCFFFEFEFE)) 
    sda_reg_i_1
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(sda_reg_i_3_n_0),
        .I2(sda_reg_i_4_n_0),
        .I3(sda_reg_i_5_n_0),
        .I4(in_prog_reg_n_0),
        .I5(write_mode_IBUF),
        .O(sda_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    sda_reg_i_10
       (.I0(write_mode_IBUF),
        .I1(in_prog_reg_n_0),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(state__0[0]),
        .O(sda_reg_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00400044)) 
    sda_reg_i_11
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\scl_count_reg_n_0_[0] ),
        .I3(p_0_in),
        .I4(oen_reg_i_9_n_0),
        .O(sda_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000404040004)) 
    sda_reg_i_12
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(in_prog_i_5_n_0),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state130_out),
        .I5(write_mode_IBUF),
        .O(sda_reg_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    sda_reg_i_13
       (.I0(sda_reg_i_14_n_0),
        .I1(in_prog_i_4_n_0),
        .I2(\sr_count_reg_n_0_[0] ),
        .I3(\sr_count_reg_n_0_[1] ),
        .I4(byte_count[0]),
        .I5(\sr_count_reg_n_0_[2] ),
        .O(sda_reg_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sda_reg_i_14
       (.I0(byte_count[2]),
        .I1(byte_count[1]),
        .O(sda_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'h00000000FEFFFEFE)) 
    sda_reg_i_2
       (.I0(sda_reg_i_6_n_0),
        .I1(sda_reg_i_7_n_0),
        .I2(sda_reg_i_8_n_0),
        .I3(open_drain_IBUF),
        .I4(sda_reg_i_9_n_0),
        .I5(sda_reg_i_10_n_0),
        .O(sda_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    sda_reg_i_3
       (.I0(\sr[31]_i_4_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(state1),
        .O(sda_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h0404040404040400)) 
    sda_reg_i_4
       (.I0(state__0[3]),
        .I1(state1),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(oen_reg_i_4_n_0),
        .I4(sda_reg_i_11_n_0),
        .I5(sda_reg_i_12_n_0),
        .O(sda_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sda_reg_i_5
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(sda_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    sda_reg_i_6
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[3]),
        .I3(p_0_in4_in),
        .I4(open_drain_IBUF),
        .I5(state130_out),
        .O(sda_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    sda_reg_i_7
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(open_drain_IBUF),
        .I3(state__0[2]),
        .I4(state0),
        .I5(p_0_in4_in),
        .O(sda_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'h040400000000000F)) 
    sda_reg_i_8
       (.I0(state__0[3]),
        .I1(in_prog_i_5_n_0),
        .I2(open_drain_IBUF),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(state__0[0]),
        .O(sda_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'hAAFAAAEA00000000)) 
    sda_reg_i_9
       (.I0(sda_reg_i_13_n_0),
        .I1(in_prog_i_5_n_0),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(sda_reg_i_9_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sda_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(sda_reg_i_1_n_0),
        .D(sda_reg_i_2_n_0),
        .Q(sda_out_OBUF),
        .S(\FSM_sequential_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    sda_s_reg
       (.C(clk_IBUF_BUFG),
        .CE(reset_IBUF),
        .D(sda_in_IBUF),
        .Q(sda_s),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h55DD55FD)) 
    \sr[0]_i_1 
       (.I0(reset_IBUF),
        .I1(state__0[1]),
        .I2(data_in_IBUF[0]),
        .I3(state__0[2]),
        .I4(in_prog_reg_n_0),
        .O(\sr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[10]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[10]),
        .I2(data_in_IBUF[10]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[11]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[11]),
        .I2(data_in_IBUF[11]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000A000C0)) 
    \sr[12]_i_1 
       (.I0(in40[12]),
        .I1(data_in_IBUF[12]),
        .I2(reset_IBUF),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(in_prog_reg_n_0),
        .O(\sr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000A000C0)) 
    \sr[13]_i_1 
       (.I0(in40[13]),
        .I1(data_in_IBUF[13]),
        .I2(reset_IBUF),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(in_prog_reg_n_0),
        .O(\sr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000A000C0)) 
    \sr[14]_i_1 
       (.I0(in40[14]),
        .I1(data_in_IBUF[14]),
        .I2(reset_IBUF),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(in_prog_reg_n_0),
        .O(\sr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000A000C0)) 
    \sr[15]_i_1 
       (.I0(in40[15]),
        .I1(data_in_IBUF[15]),
        .I2(reset_IBUF),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(in_prog_reg_n_0),
        .O(\sr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[16]_i_1 
       (.I0(\sr[23]_i_2_n_0 ),
        .I1(reg_addr_IBUF[0]),
        .I2(\sr[31]_i_8_n_0 ),
        .I3(data_in_IBUF[0]),
        .I4(in40[16]),
        .I5(\sr[31]_i_7_n_0 ),
        .O(\sr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[17]_i_1 
       (.I0(\sr[23]_i_2_n_0 ),
        .I1(reg_addr_IBUF[1]),
        .I2(\sr[31]_i_8_n_0 ),
        .I3(data_in_IBUF[1]),
        .I4(in40[17]),
        .I5(\sr[31]_i_7_n_0 ),
        .O(\sr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[18]_i_1 
       (.I0(\sr[23]_i_2_n_0 ),
        .I1(reg_addr_IBUF[2]),
        .I2(\sr[31]_i_8_n_0 ),
        .I3(data_in_IBUF[2]),
        .I4(in40[18]),
        .I5(\sr[31]_i_7_n_0 ),
        .O(\sr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[19]_i_1 
       (.I0(\sr[23]_i_2_n_0 ),
        .I1(reg_addr_IBUF[3]),
        .I2(\sr[31]_i_8_n_0 ),
        .I3(data_in_IBUF[3]),
        .I4(in40[19]),
        .I5(\sr[31]_i_7_n_0 ),
        .O(\sr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[1]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[1]),
        .I2(data_in_IBUF[1]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[20]_i_1 
       (.I0(\sr[23]_i_2_n_0 ),
        .I1(reg_addr_IBUF[4]),
        .I2(\sr[31]_i_8_n_0 ),
        .I3(data_in_IBUF[4]),
        .I4(in40[20]),
        .I5(\sr[31]_i_7_n_0 ),
        .O(\sr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[21]_i_1 
       (.I0(\sr[23]_i_2_n_0 ),
        .I1(reg_addr_IBUF[5]),
        .I2(\sr[31]_i_8_n_0 ),
        .I3(data_in_IBUF[5]),
        .I4(in40[21]),
        .I5(\sr[31]_i_7_n_0 ),
        .O(\sr[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[22]_i_1 
       (.I0(\sr[23]_i_2_n_0 ),
        .I1(reg_addr_IBUF[6]),
        .I2(\sr[31]_i_8_n_0 ),
        .I3(data_in_IBUF[6]),
        .I4(in40[22]),
        .I5(\sr[31]_i_7_n_0 ),
        .O(\sr[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[23]_i_1 
       (.I0(\sr[23]_i_2_n_0 ),
        .I1(reg_addr_IBUF[7]),
        .I2(\sr[31]_i_8_n_0 ),
        .I3(data_in_IBUF[7]),
        .I4(in40[23]),
        .I5(\sr[31]_i_7_n_0 ),
        .O(\sr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \sr[23]_i_2 
       (.I0(reset_IBUF),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(in_prog_reg_n_0),
        .O(\sr[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00EA00AA00EA00)) 
    \sr[24]_i_1 
       (.I0(state__0[2]),
        .I1(in_prog_reg_n_0),
        .I2(data_in_IBUF[8]),
        .I3(reset_IBUF),
        .I4(state__0[1]),
        .I5(in40[24]),
        .O(\sr[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[25]_i_1 
       (.I0(\sr[31]_i_6_n_0 ),
        .I1(chip_addr_IBUF[0]),
        .I2(\sr[31]_i_7_n_0 ),
        .I3(in40[25]),
        .I4(data_in_IBUF[9]),
        .I5(\sr[31]_i_8_n_0 ),
        .O(\sr[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[26]_i_1 
       (.I0(\sr[31]_i_6_n_0 ),
        .I1(chip_addr_IBUF[1]),
        .I2(\sr[31]_i_7_n_0 ),
        .I3(in40[26]),
        .I4(data_in_IBUF[10]),
        .I5(\sr[31]_i_8_n_0 ),
        .O(\sr[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[27]_i_1 
       (.I0(\sr[31]_i_6_n_0 ),
        .I1(chip_addr_IBUF[2]),
        .I2(\sr[31]_i_7_n_0 ),
        .I3(in40[27]),
        .I4(data_in_IBUF[11]),
        .I5(\sr[31]_i_8_n_0 ),
        .O(\sr[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[28]_i_1 
       (.I0(\sr[31]_i_6_n_0 ),
        .I1(chip_addr_IBUF[3]),
        .I2(\sr[31]_i_7_n_0 ),
        .I3(in40[28]),
        .I4(data_in_IBUF[12]),
        .I5(\sr[31]_i_8_n_0 ),
        .O(\sr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[29]_i_1 
       (.I0(\sr[31]_i_6_n_0 ),
        .I1(chip_addr_IBUF[4]),
        .I2(\sr[31]_i_7_n_0 ),
        .I3(in40[29]),
        .I4(data_in_IBUF[13]),
        .I5(\sr[31]_i_8_n_0 ),
        .O(\sr[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[2]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[2]),
        .I2(data_in_IBUF[2]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[30]_i_1 
       (.I0(\sr[31]_i_6_n_0 ),
        .I1(chip_addr_IBUF[5]),
        .I2(\sr[31]_i_7_n_0 ),
        .I3(in40[30]),
        .I4(data_in_IBUF[14]),
        .I5(\sr[31]_i_8_n_0 ),
        .O(\sr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20220000)) 
    \sr[31]_i_1 
       (.I0(\sr[31]_i_3_n_0 ),
        .I1(state__0[3]),
        .I2(\sr[31]_i_4_n_0 ),
        .I3(state__0[2]),
        .I4(\sr[31]_i_5_n_0 ),
        .I5(\sr_count[5]_i_1_n_0 ),
        .O(\sr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sr[31]_i_2 
       (.I0(\sr[31]_i_6_n_0 ),
        .I1(chip_addr_IBUF[6]),
        .I2(\sr[31]_i_7_n_0 ),
        .I3(in40[31]),
        .I4(data_in_IBUF[15]),
        .I5(\sr[31]_i_8_n_0 ),
        .O(\sr[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000500FF030500FF)) 
    \sr[31]_i_3 
       (.I0(state0),
        .I1(state130_out),
        .I2(in_prog_i_5_n_0),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\sr[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr[31]_i_4 
       (.I0(p_0_in),
        .I1(\scl_count_reg_n_0_[0] ),
        .O(\sr[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \sr[31]_i_5 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state1),
        .O(\sr[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAB00)) 
    \sr[31]_i_6 
       (.I0(state__0[2]),
        .I1(in_prog_reg_n_0),
        .I2(state__0[1]),
        .I3(reset_IBUF),
        .O(\sr[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sr[31]_i_7 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(reset_IBUF),
        .O(\sr[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \sr[31]_i_8 
       (.I0(reset_IBUF),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(in_prog_reg_n_0),
        .O(\sr[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[3]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[3]),
        .I2(data_in_IBUF[3]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[4]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[4]),
        .I2(data_in_IBUF[4]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[5]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[5]),
        .I2(data_in_IBUF[5]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[6]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[6]),
        .I2(data_in_IBUF[6]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[7]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[7]),
        .I2(data_in_IBUF[7]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[8]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[8]),
        .I2(data_in_IBUF[8]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DD555555DDF5)) 
    \sr[9]_i_1 
       (.I0(reset_IBUF),
        .I1(in40[9]),
        .I2(data_in_IBUF[9]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(in_prog_reg_n_0),
        .O(\sr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sr_count[0]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\sr_count_reg_n_0_[0] ),
        .O(\sr_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \sr_count[1]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\sr_count_reg_n_0_[0] ),
        .I3(\sr_count_reg_n_0_[1] ),
        .O(\sr_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h77708880)) 
    \sr_count[2]_i_1 
       (.I0(\sr_count_reg_n_0_[0] ),
        .I1(\sr_count_reg_n_0_[1] ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(\sr_count_reg_n_0_[2] ),
        .O(\sr_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F0080808000)) 
    \sr_count[3]_i_1 
       (.I0(\sr_count_reg_n_0_[2] ),
        .I1(\sr_count_reg_n_0_[1] ),
        .I2(\sr_count_reg_n_0_[0] ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(byte_count[0]),
        .O(\sr_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \sr_count[4]_i_1 
       (.I0(\sr_count_reg_n_0_[0] ),
        .I1(\sr_count_reg_n_0_[1] ),
        .I2(\sr_count_reg_n_0_[2] ),
        .I3(byte_count[0]),
        .I4(\sr_count[4]_i_2_n_0 ),
        .I5(byte_count[1]),
        .O(\sr_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sr_count[4]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\sr_count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \sr_count[5]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .I4(reset_IBUF),
        .O(\sr_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sr_count[5]_i_10 
       (.I0(clk_count_reg[6]),
        .I1(clk_div_IBUF[6]),
        .I2(clk_count_reg[7]),
        .I3(clk_div_IBUF[7]),
        .I4(clk_div_IBUF[8]),
        .I5(clk_count_reg[8]),
        .O(\sr_count[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sr_count[5]_i_11 
       (.I0(clk_count_reg[3]),
        .I1(clk_div_IBUF[3]),
        .I2(clk_count_reg[4]),
        .I3(clk_div_IBUF[4]),
        .I4(clk_div_IBUF[5]),
        .I5(clk_count_reg[5]),
        .O(\sr_count[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sr_count[5]_i_12 
       (.I0(clk_count_reg[0]),
        .I1(clk_div_IBUF[0]),
        .I2(clk_count_reg[1]),
        .I3(clk_div_IBUF[1]),
        .I4(clk_div_IBUF[2]),
        .I5(clk_count_reg[2]),
        .O(\sr_count[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00002200F0000000)) 
    \sr_count[5]_i_2 
       (.I0(\sr_count[5]_i_4_n_0 ),
        .I1(in_prog_i_5_n_0),
        .I2(\sr_count[5]_i_5_n_0 ),
        .I3(state1),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(\sr_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA8FC5400)) 
    \sr_count[5]_i_3 
       (.I0(\sr_count[5]_i_7_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(byte_count[1]),
        .I4(byte_count[2]),
        .O(\sr_count[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0011000F)) 
    \sr_count[5]_i_4 
       (.I0(state130_out),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state0),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .O(\sr_count[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0410)) 
    \sr_count[5]_i_5 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(\scl_count_reg_n_0_[0] ),
        .O(\sr_count[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sr_count[5]_i_7 
       (.I0(\sr_count_reg_n_0_[0] ),
        .I1(\sr_count_reg_n_0_[1] ),
        .I2(\sr_count_reg_n_0_[2] ),
        .I3(byte_count[0]),
        .O(\sr_count[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \sr_count[5]_i_8 
       (.I0(byte_count[2]),
        .I1(byte_count[0]),
        .I2(byte_count[1]),
        .I3(\sr_count_reg_n_0_[2] ),
        .I4(\sr_count_reg_n_0_[0] ),
        .I5(\sr_count_reg_n_0_[1] ),
        .O(state0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sr_count[5]_i_9 
       (.I0(clk_count_reg[9]),
        .I1(clk_div_IBUF[9]),
        .I2(clk_count_reg[10]),
        .I3(clk_div_IBUF[10]),
        .I4(clk_div_IBUF[11]),
        .I5(clk_count_reg[11]),
        .O(\sr_count[5]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr_count[5]_i_2_n_0 ),
        .D(\sr_count[0]_i_1_n_0 ),
        .Q(\sr_count_reg_n_0_[0] ),
        .R(\sr_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr_count[5]_i_2_n_0 ),
        .D(\sr_count[1]_i_1_n_0 ),
        .Q(\sr_count_reg_n_0_[1] ),
        .R(\sr_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr_count[5]_i_2_n_0 ),
        .D(\sr_count[2]_i_1_n_0 ),
        .Q(\sr_count_reg_n_0_[2] ),
        .R(\sr_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr_count[5]_i_2_n_0 ),
        .D(\sr_count[3]_i_1_n_0 ),
        .Q(byte_count[0]),
        .R(\sr_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr_count[5]_i_2_n_0 ),
        .D(\sr_count[4]_i_1_n_0 ),
        .Q(byte_count[1]),
        .R(\sr_count[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr_count[5]_i_2_n_0 ),
        .D(\sr_count[5]_i_3_n_0 ),
        .Q(byte_count[2]),
        .R(\sr_count[5]_i_1_n_0 ));
  CARRY4 \sr_count_reg[5]_i_6 
       (.CI(1'b0),
        .CO({state1,\sr_count_reg[5]_i_6_n_1 ,\sr_count_reg[5]_i_6_n_2 ,\sr_count_reg[5]_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_sr_count_reg[5]_i_6_O_UNCONNECTED [3:0]),
        .S({\sr_count[5]_i_9_n_0 ,\sr_count[5]_i_10_n_0 ,\sr_count[5]_i_11_n_0 ,\sr_count[5]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[0]_i_1_n_0 ),
        .Q(in40[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[10]_i_1_n_0 ),
        .Q(in40[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[11]_i_1_n_0 ),
        .Q(in40[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[12]_i_1_n_0 ),
        .Q(in40[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[13]_i_1_n_0 ),
        .Q(in40[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[14]_i_1_n_0 ),
        .Q(in40[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[15]_i_1_n_0 ),
        .Q(in40[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[16]_i_1_n_0 ),
        .Q(in40[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[17]_i_1_n_0 ),
        .Q(in40[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[18]_i_1_n_0 ),
        .Q(in40[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[19]_i_1_n_0 ),
        .Q(in40[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[1]_i_1_n_0 ),
        .Q(in40[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[20]_i_1_n_0 ),
        .Q(in40[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[21]_i_1_n_0 ),
        .Q(in40[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[22]_i_1_n_0 ),
        .Q(in40[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[23]_i_1_n_0 ),
        .Q(in40[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[24]_i_1_n_0 ),
        .Q(in40[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[25]_i_1_n_0 ),
        .Q(in40[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[26]_i_1_n_0 ),
        .Q(in40[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[27]_i_1_n_0 ),
        .Q(in40[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[28]_i_1_n_0 ),
        .Q(in40[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[29]_i_1_n_0 ),
        .Q(in40[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[2]_i_1_n_0 ),
        .Q(in40[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[30]_i_1_n_0 ),
        .Q(in40[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[31]_i_2_n_0 ),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[3]_i_1_n_0 ),
        .Q(in40[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[4]_i_1_n_0 ),
        .Q(in40[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[5]_i_1_n_0 ),
        .Q(in40[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[6]_i_1_n_0 ),
        .Q(in40[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[7]_i_1_n_0 ),
        .Q(in40[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[8]_i_1_n_0 ),
        .Q(in40[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\sr[31]_i_1_n_0 ),
        .D(\sr[9]_i_1_n_0 ),
        .Q(in40[10]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \status[0]_i_1 
       (.I0(status_OBUF[0]),
        .I1(\status[3]_i_2_n_0 ),
        .I2(sda_s),
        .I3(\status[3]_i_1_n_0 ),
        .O(\status[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \status[1]_i_1 
       (.I0(status_OBUF[1]),
        .I1(\status[3]_i_2_n_0 ),
        .I2(status_OBUF[0]),
        .I3(\status[3]_i_1_n_0 ),
        .O(\status[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \status[2]_i_1 
       (.I0(status_OBUF[2]),
        .I1(\status[3]_i_2_n_0 ),
        .I2(status_OBUF[1]),
        .I3(\status[3]_i_1_n_0 ),
        .O(\status[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF5D5)) 
    \status[3]_i_1 
       (.I0(reset_IBUF),
        .I1(write_en_IBUF),
        .I2(sda_reg_i_5_n_0),
        .I3(read_en_IBUF),
        .O(\status[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \status[3]_i_2 
       (.I0(p_0_in),
        .I1(\scl_count_reg_n_0_[0] ),
        .I2(state__0[1]),
        .I3(in_prog_i_4_n_0),
        .I4(sda_reg_i_5_n_0),
        .I5(state1),
        .O(\status[3]_i_2_n_0 ));
  OBUF \status_OBUF[0]_inst 
       (.I(status_OBUF[0]),
        .O(status[0]));
  OBUF \status_OBUF[1]_inst 
       (.I(status_OBUF[1]),
        .O(status[1]));
  OBUF \status_OBUF[2]_inst 
       (.I(status_OBUF[2]),
        .O(status[2]));
  OBUF \status_OBUF[3]_inst 
       (.I(status_OBUF[3]),
        .O(status[3]));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\status[0]_i_1_n_0 ),
        .Q(status_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\status[1]_i_1_n_0 ),
        .Q(status_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\status[2]_i_1_n_0 ),
        .Q(status_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\status[3]_i_2_n_0 ),
        .D(status_OBUF[2]),
        .Q(status_OBUF[3]),
        .R(\status[3]_i_1_n_0 ));
  IBUF write_en_IBUF_inst
       (.I(write_en),
        .O(write_en_IBUF));
  IBUF write_mode_IBUF_inst
       (.I(write_mode),
        .O(write_mode_IBUF));
  LUT5 #(
    .INIT(32'hDDFDF5F5)) 
    writing_i_1
       (.I0(reset_IBUF),
        .I1(write_en_IBUF),
        .I2(writing_reg_n_0),
        .I3(read_en_IBUF),
        .I4(sda_reg_i_5_n_0),
        .O(writing_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    writing_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(writing_i_1_n_0),
        .Q(writing_reg_n_0),
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
