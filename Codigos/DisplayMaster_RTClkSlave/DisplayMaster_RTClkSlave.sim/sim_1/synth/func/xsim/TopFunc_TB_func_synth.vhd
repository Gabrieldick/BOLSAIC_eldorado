-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Nov 28 20:24:13 2023
-- Host        : Notebook-GMD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/BOLSAIC_eldorado/Codigos/DisplayMaster_RTClkSlave/DisplayMaster_RTClkSlave.sim/sim_1/synth/func/xsim/TopFunc_TB_func_synth.vhd
-- Design      : TopFunc
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CMASTER is
  port (
    QUEUED_OBUF : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDA_M_TRI : out STD_LOGIC;
    SCL_M_TRI : out STD_LOGIC;
    \counter_reg[5]\ : out STD_LOGIC;
    \DOUT_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SDA_M_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    RST_confirm_OBUF : in STD_LOGIC;
    RD_IBUF : in STD_LOGIC;
    WE_IBUF : in STD_LOGIC;
    DIN_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end I2CMASTER;

architecture STRUCTURE of I2CMASTER is
  signal DATA_VALID_i_1_n_0 : STD_LOGIC;
  signal DATA_VALID_i_3_n_0 : STD_LOGIC;
  signal DATA_VALID_i_4_n_0 : STD_LOGIC;
  signal \DOUT[0]_i_1_n_0\ : STD_LOGIC;
  signal \DOUT[1]_i_1_n_0\ : STD_LOGIC;
  signal \DOUT[2]_i_1_n_0\ : STD_LOGIC;
  signal \DOUT[3]_i_1_n_0\ : STD_LOGIC;
  signal \DOUT[4]_i_1_n_0\ : STD_LOGIC;
  signal \DOUT[5]_i_1_n_0\ : STD_LOGIC;
  signal \DOUT[6]_i_1_n_0\ : STD_LOGIC;
  signal \DOUT[7]_i_1_n_0\ : STD_LOGIC;
  signal \DOUT[7]_i_2_n_0\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal QUEUED_i_2_n_0 : STD_LOGIC;
  signal QUEUED_i_3_n_0 : STD_LOGIC;
  signal \^scl_m_tri\ : STD_LOGIC;
  signal SCL_OUT_i_1_n_0 : STD_LOGIC;
  signal SCL_OUT_i_2_n_0 : STD_LOGIC;
  signal SCL_OUT_i_3_n_0 : STD_LOGIC;
  signal SCL_OUT_i_4_n_0 : STD_LOGIC;
  signal \^sda_m_tri\ : STD_LOGIC;
  signal SDA_OUT_i_1_n_0 : STD_LOGIC;
  signal SDA_OUT_i_2_n_0 : STD_LOGIC;
  signal SDA_OUT_i_3_n_0 : STD_LOGIC;
  signal SDA_OUT_i_4_n_0 : STD_LOGIC;
  signal SDA_OUT_i_5_n_0 : STD_LOGIC;
  signal SDA_OUT_i_6_n_0 : STD_LOGIC;
  signal SDA_OUT_i_7_n_0 : STD_LOGIC;
  signal SDA_OUT_i_8_n_0 : STD_LOGIC;
  signal \counter[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \^counter_reg[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal data50 : STD_LOGIC;
  signal nackdet_i_1_n_0 : STD_LOGIC;
  signal nackdet_i_2_n_0 : STD_LOGIC;
  signal nackdet_i_3_n_0 : STD_LOGIC;
  signal nackdet_reg_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_2_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 7 to 7 );
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal sda_in_q : STD_LOGIC;
  signal sda_in_qq : STD_LOGIC;
  signal shift : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift[0]_i_2_n_0\ : STD_LOGIC;
  signal \shift[0]_i_3_n_0\ : STD_LOGIC;
  signal \shift[0]_i_4_n_0\ : STD_LOGIC;
  signal \shift[1]_i_2_n_0\ : STD_LOGIC;
  signal \shift[2]_i_2_n_0\ : STD_LOGIC;
  signal \shift[3]_i_2_n_0\ : STD_LOGIC;
  signal \shift[4]_i_2_n_0\ : STD_LOGIC;
  signal \shift[5]_i_2_n_0\ : STD_LOGIC;
  signal \shift[6]_i_2_n_0\ : STD_LOGIC;
  signal \shift[7]_i_3_n_0\ : STD_LOGIC;
  signal \shift[7]_i_4_n_0\ : STD_LOGIC;
  signal \shift[7]_i_5_n_0\ : STD_LOGIC;
  signal \shift[7]_i_6_n_0\ : STD_LOGIC;
  signal \shift[7]_i_7_n_0\ : STD_LOGIC;
  signal \shift[7]_i_8_n_0\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_6_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_2_n_0\ : STD_LOGIC;
  signal \state[4]_i_3_n_0\ : STD_LOGIC;
  signal \state[4]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_6_n_0\ : STD_LOGIC;
  signal \state[4]_i_7_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DOUT[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \DOUT[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \DOUT[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of SDA_OUT_i_7 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[3]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \next_state[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \shift[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \shift[7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \shift[7]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \shift[7]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift[7]_i_8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[0]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \state[1]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \state[1]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \state[1]_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \state[2]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \state[3]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[3]_i_4__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[4]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \state[4]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \state[4]_i_7\ : label is "soft_lutpair20";
begin
  E(0) <= \^e\(0);
  SCL_M_TRI <= \^scl_m_tri\;
  SDA_M_TRI <= \^sda_m_tri\;
  \counter_reg[5]\ <= \^counter_reg[5]\;
DATA_VALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => \shift[7]_i_4_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state[4]_i_3_n_0\,
      I4 => p_10_in,
      I5 => \^e\(0),
      O => DATA_VALID_i_1_n_0
    );
DATA_VALID_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBABBBAAAAAAAA"
    )
        port map (
      I0 => DATA_VALID_i_3_n_0,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => DATA_VALID_i_4_n_0,
      O => p_10_in
    );
DATA_VALID_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A10000000000000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => Q(0),
      I5 => Q(1),
      O => DATA_VALID_i_3_n_0
    );
DATA_VALID_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF0002000F"
    )
        port map (
      I0 => \state[0]_i_5_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \^counter_reg[5]\,
      O => DATA_VALID_i_4_n_0
    );
DATA_VALID_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => DATA_VALID_i_1_n_0,
      Q => \^e\(0)
    );
\DOUT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => shift(0),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \DOUT[0]_i_1_n_0\
    );
\DOUT[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => shift(1),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \DOUT[1]_i_1_n_0\
    );
\DOUT[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => shift(2),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \DOUT[2]_i_1_n_0\
    );
\DOUT[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => shift(3),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \DOUT[3]_i_1_n_0\
    );
\DOUT[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => shift(4),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \DOUT[4]_i_1_n_0\
    );
\DOUT[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => shift(5),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \DOUT[5]_i_1_n_0\
    );
\DOUT[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => shift(6),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \DOUT[6]_i_1_n_0\
    );
\DOUT[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800100000001"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \^counter_reg[5]\,
      O => \DOUT[7]_i_1_n_0\
    );
\DOUT[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => shift(7),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \DOUT[7]_i_2_n_0\
    );
\DOUT_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \DOUT[7]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \DOUT[0]_i_1_n_0\,
      Q => \DOUT_reg[7]_0\(0)
    );
\DOUT_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \DOUT[7]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \DOUT[1]_i_1_n_0\,
      Q => \DOUT_reg[7]_0\(1)
    );
\DOUT_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \DOUT[7]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \DOUT[2]_i_1_n_0\,
      Q => \DOUT_reg[7]_0\(2)
    );
\DOUT_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \DOUT[7]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \DOUT[3]_i_1_n_0\,
      Q => \DOUT_reg[7]_0\(3)
    );
\DOUT_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \DOUT[7]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \DOUT[4]_i_1_n_0\,
      Q => \DOUT_reg[7]_0\(4)
    );
\DOUT_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \DOUT[7]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \DOUT[5]_i_1_n_0\,
      Q => \DOUT_reg[7]_0\(5)
    );
\DOUT_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \DOUT[7]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \DOUT[6]_i_1_n_0\,
      Q => \DOUT_reg[7]_0\(6)
    );
\DOUT_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \DOUT[7]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \DOUT[7]_i_2_n_0\,
      Q => \DOUT_reg[7]_0\(7)
    );
QUEUED_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DD00DD005D0C5D"
    )
        port map (
      I0 => QUEUED_i_3_n_0,
      I1 => \^counter_reg[5]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[2]\,
      O => p_11_in
    );
QUEUED_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A00000C00000000"
    )
        port map (
      I0 => RD_IBUF,
      I1 => WE_IBUF,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state[2]_i_3_n_0\,
      O => QUEUED_i_2_n_0
    );
QUEUED_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFCDFFCFCFCFFFC"
    )
        port map (
      I0 => \state[2]_i_4_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state[0]_i_5_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => QUEUED_i_3_n_0
    );
QUEUED_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_11_in,
      CLR => RST_confirm_OBUF,
      D => QUEUED_i_2_n_0,
      Q => QUEUED_OBUF
    );
SCL_OUT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAA0002AAAA"
    )
        port map (
      I0 => SCL_OUT_i_2_n_0,
      I1 => SCL_OUT_i_3_n_0,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => SCL_OUT_i_4_n_0,
      I5 => \^scl_m_tri\,
      O => SCL_OUT_i_1_n_0
    );
SCL_OUT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AA8A88AA8881B"
    )
        port map (
      I0 => \^counter_reg[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[3]\,
      O => SCL_OUT_i_2_n_0
    );
SCL_OUT_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CBF3CBCF0F0F0F0"
    )
        port map (
      I0 => RD_IBUF,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => nackdet_reg_n_0,
      I4 => WE_IBUF,
      I5 => \state_reg_n_0_[3]\,
      O => SCL_OUT_i_3_n_0
    );
SCL_OUT_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFEFDFCFCFCF0F"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \^counter_reg[5]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[3]\,
      O => SCL_OUT_i_4_n_0
    );
SCL_OUT_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => SCL_OUT_i_1_n_0,
      PRE => RST_confirm_OBUF,
      Q => \^scl_m_tri\
    );
SDA_OUT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => \^counter_reg[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => SDA_OUT_i_2_n_0,
      I3 => SDA_OUT_i_3_n_0,
      I4 => SDA_OUT_i_4_n_0,
      I5 => \^sda_m_tri\,
      O => SDA_OUT_i_1_n_0
    );
SDA_OUT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBF3FBF388000800"
    )
        port map (
      I0 => SDA_OUT_i_5_n_0,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => SDA_OUT_i_6_n_0,
      O => SDA_OUT_i_2_n_0
    );
SDA_OUT_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1B180000"
    )
        port map (
      I0 => SDA_OUT_i_7_n_0,
      I1 => \state[0]_i_5_n_0\,
      I2 => \state[2]_i_4_n_0\,
      I3 => \^counter_reg[5]\,
      I4 => \counter[3]_i_5_n_0\,
      I5 => SDA_OUT_i_8_n_0,
      O => SDA_OUT_i_3_n_0
    );
SDA_OUT_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003030373F1D070"
    )
        port map (
      I0 => \^counter_reg[5]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[4]\,
      O => SDA_OUT_i_4_n_0
    );
SDA_OUT_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F2FFF2F0020F020"
    )
        port map (
      I0 => WE_IBUF,
      I1 => nackdet_reg_n_0,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => RD_IBUF,
      I5 => \^counter_reg[5]\,
      O => SDA_OUT_i_5_n_0
    );
SDA_OUT_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFACF00000ACF"
    )
        port map (
      I0 => \state[2]_i_4_n_0\,
      I1 => shift(7),
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \^counter_reg[5]\,
      O => SDA_OUT_i_6_n_0
    );
SDA_OUT_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01036B8D"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[4]\,
      O => SDA_OUT_i_7_n_0
    );
SDA_OUT_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333022033333FFF"
    )
        port map (
      I0 => \^counter_reg[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[3]\,
      O => SDA_OUT_i_8_n_0
    );
SDA_OUT_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => SDA_OUT_i_1_n_0,
      PRE => RST_confirm_OBUF,
      Q => \^sda_m_tri\
    );
\counter[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555551455555550"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[3]\,
      O => \counter[0]_i_1__1_n_0\
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter[3]_i_5_n_0\,
      O => \counter[1]_i_1__0_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter[3]_i_5_n_0\,
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter[3]_i_3_n_0\,
      I1 => \counter[3]_i_4_n_0\,
      O => \counter[3]_i_1_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => data50,
      I4 => \counter[3]_i_5_n_0\,
      O => \counter[3]_i_2_n_0\
    );
\counter[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800080000C0000"
    )
        port map (
      I0 => \state[2]_i_4_n_0\,
      I1 => \state[2]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state[0]_i_5_n_0\,
      I5 => \state_reg_n_0_[1]\,
      O => \counter[3]_i_3_n_0\
    );
\counter[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200200203"
    )
        port map (
      I0 => \^counter_reg[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[1]\,
      O => \counter[3]_i_4_n_0\
    );
\counter[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02010003"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \counter[3]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[3]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \counter[0]_i_1__1_n_0\,
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[3]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \counter[1]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[3]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \counter[2]_i_1_n_0\,
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counter[3]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \counter[3]_i_2_n_0\,
      Q => data50
    );
nackdet_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAEF0020"
    )
        port map (
      I0 => nackdet_i_2_n_0,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => nackdet_reg_n_0,
      I5 => nackdet_i_3_n_0,
      O => nackdet_i_1_n_0
    );
nackdet_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => sda_in_qq,
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[0]\,
      O => nackdet_i_2_n_0
    );
nackdet_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDFDDFFDDFFD"
    )
        port map (
      I0 => \^counter_reg[5]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[2]\,
      O => nackdet_i_3_n_0
    );
nackdet_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => nackdet_i_1_n_0,
      Q => nackdet_reg_n_0
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => next_state(1),
      I1 => WE_IBUF,
      I2 => \next_state[3]_i_2_n_0\,
      O => \next_state[1]_i_1_n_0\
    );
\next_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => next_state(3),
      I1 => \next_state[3]_i_2_n_0\,
      O => \next_state[3]_i_1_n_0\
    );
\next_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^counter_reg[5]\,
      I2 => RST_confirm_OBUF,
      I3 => \state[1]_i_6_n_0\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \next_state[3]_i_2_n_0\
    );
\next_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \next_state[1]_i_1_n_0\,
      Q => next_state(1),
      R => '0'
    );
\next_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \next_state[3]_i_1_n_0\,
      Q => next_state(3),
      R => '0'
    );
sda_in_q_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => SDA_M_IBUF,
      PRE => RST_confirm_OBUF,
      Q => sda_in_q
    );
sda_in_qq_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sda_in_q,
      PRE => RST_confirm_OBUF,
      Q => sda_in_qq
    );
\shift[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => sda_in_qq,
      I1 => \state_reg_n_0_[4]\,
      I2 => \shift[0]_i_2_n_0\,
      I3 => \counter[3]_i_3_n_0\,
      I4 => \shift[0]_i_3_n_0\,
      I5 => shift(0),
      O => \shift[0]_i_1_n_0\
    );
\shift[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2AFF00002A00"
    )
        port map (
      I0 => sda_in_qq,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \shift[0]_i_4_n_0\,
      O => \shift[0]_i_2_n_0\
    );
\shift[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000090000000000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \^counter_reg[5]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \shift[0]_i_3_n_0\
    );
\shift[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F3F074F0C0F074"
    )
        port map (
      I0 => WE_IBUF,
      I1 => \state_reg_n_0_[0]\,
      I2 => sda_in_qq,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => DIN_IBUF(0),
      O => \shift[0]_i_4_n_0\
    );
\shift[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0100"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state[2]_i_3_n_0\,
      I4 => shift(0),
      I5 => \shift[1]_i_2_n_0\,
      O => p_2_in(1)
    );
\shift[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500000100000500"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => DIN_IBUF(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[3]\,
      O => \shift[1]_i_2_n_0\
    );
\shift[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0100"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state[2]_i_3_n_0\,
      I4 => shift(1),
      I5 => \shift[2]_i_2_n_0\,
      O => p_2_in(2)
    );
\shift[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500000100000500"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => DIN_IBUF(2),
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[3]\,
      O => \shift[2]_i_2_n_0\
    );
\shift[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0100"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state[2]_i_3_n_0\,
      I4 => shift(2),
      I5 => \shift[3]_i_2_n_0\,
      O => p_2_in(3)
    );
\shift[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500000100000500"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => DIN_IBUF(3),
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[3]\,
      O => \shift[3]_i_2_n_0\
    );
\shift[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF11FF01"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \shift[7]_i_5_n_0\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \shift[4]_i_2_n_0\,
      I4 => shift(3),
      I5 => \state_reg_n_0_[4]\,
      O => p_2_in(4)
    );
\shift[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AAA0ACAAAAA0AA"
    )
        port map (
      I0 => shift(3),
      I1 => DIN_IBUF(4),
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[3]\,
      O => \shift[4]_i_2_n_0\
    );
\shift[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0100"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state[2]_i_3_n_0\,
      I4 => shift(4),
      I5 => \shift[5]_i_2_n_0\,
      O => p_2_in(5)
    );
\shift[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500000100000500"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => DIN_IBUF(5),
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[3]\,
      O => \shift[5]_i_2_n_0\
    );
\shift[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift(5),
      I1 => \state_reg_n_0_[4]\,
      I2 => \shift[6]_i_2_n_0\,
      O => p_2_in(6)
    );
\shift[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7D00120010"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => DIN_IBUF(6),
      I5 => shift(5),
      O => \shift[6]_i_2_n_0\
    );
\shift[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAEB"
    )
        port map (
      I0 => \shift[7]_i_3_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \shift[7]_i_4_n_0\,
      I4 => \shift[7]_i_5_n_0\,
      I5 => \shift[7]_i_6_n_0\,
      O => p_0_out(7)
    );
\shift[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift(6),
      I1 => \state_reg_n_0_[4]\,
      I2 => \shift[7]_i_7_n_0\,
      O => p_2_in(7)
    );
\shift[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000C0A00"
    )
        port map (
      I0 => \state[0]_i_5_n_0\,
      I1 => \^counter_reg[5]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \shift[7]_i_8_n_0\,
      O => \shift[7]_i_3_n_0\
    );
\shift[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => Q(1),
      I2 => Q(0),
      O => \shift[7]_i_4_n_0\
    );
\shift[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \shift[7]_i_5_n_0\
    );
\shift[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \state[2]_i_3_n_0\,
      I1 => RD_IBUF,
      I2 => nackdet_reg_n_0,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[0]\,
      O => \shift[7]_i_6_n_0\
    );
\shift[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7D00120010"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => DIN_IBUF(7),
      I5 => shift(6),
      O => \shift[7]_i_7_n_0\
    );
\shift[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[2]\,
      O => \shift[7]_i_8_n_0\
    );
\shift_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \shift[0]_i_1_n_0\,
      Q => shift(0)
    );
\shift_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_out(7),
      CLR => RST_confirm_OBUF,
      D => p_2_in(1),
      Q => shift(1)
    );
\shift_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_out(7),
      CLR => RST_confirm_OBUF,
      D => p_2_in(2),
      Q => shift(2)
    );
\shift_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_out(7),
      CLR => RST_confirm_OBUF,
      D => p_2_in(3),
      Q => shift(3)
    );
\shift_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_out(7),
      CLR => RST_confirm_OBUF,
      D => p_2_in(4),
      Q => shift(4)
    );
\shift_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_out(7),
      CLR => RST_confirm_OBUF,
      D => p_2_in(5),
      Q => shift(5)
    );
\shift_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_out(7),
      CLR => RST_confirm_OBUF,
      D => p_2_in(6),
      Q => shift(6)
    );
\shift_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_0_out(7),
      CLR => RST_confirm_OBUF,
      D => p_2_in(7),
      Q => shift(7)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03050305030503F5"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state[0]_i_3_n_0\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080888AA8888AAAA"
    )
        port map (
      I0 => \state[0]_i_4_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => next_state(1),
      I3 => data50,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFEF00F0FEFE"
    )
        port map (
      I0 => \state[2]_i_4_n_0\,
      I1 => \state[0]_i_5_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => data50,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1FFF"
    )
        port map (
      I0 => WE_IBUF,
      I1 => RD_IBUF,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => WE_IBUF,
      I1 => nackdet_reg_n_0,
      O => \state[0]_i_5_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEEEFEEEEEEE"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[1]_i_3_n_0\,
      I2 => \state[2]_i_3_n_0\,
      I3 => \state[1]_i_4_n_0\,
      I4 => \state[1]_i_5_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0FFFF50"
    )
        port map (
      I0 => data50,
      I1 => next_state(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state[1]_i_6_n_0\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004A000000000A00"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => data50,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => RD_IBUF,
      I1 => nackdet_reg_n_0,
      I2 => WE_IBUF,
      O => \state[1]_i_5_n_0\
    );
\state[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[3]\,
      O => \state[1]_i_6_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEAEAEAAAEAEAEA"
    )
        port map (
      I0 => \state[2]_i_2__0_n_0\,
      I1 => \state[2]_i_3_n_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state[2]_i_4_n_0\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011110011001000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => data50,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[2]_i_2__0_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RD_IBUF,
      I1 => nackdet_reg_n_0,
      O => \state[2]_i_4_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCECECCCCFCCC"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => \state[3]_i_3_n_0\,
      I2 => \state[3]_i_4__0_n_0\,
      I3 => next_state(3),
      I4 => \state_reg_n_0_[4]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFAFAFBFBF2FB"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => WE_IBUF,
      I4 => nackdet_reg_n_0,
      I5 => RD_IBUF,
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[4]\,
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      O => \state[3]_i_4__0_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557555755570000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state[4]_i_3_n_0\,
      I4 => \state[4]_i_4_n_0\,
      I5 => \^counter_reg[5]\,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010100FF0000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state[4]_i_6_n_0\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[4]\,
      O => \state[4]_i_2_n_0\
    );
\state[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \state[4]_i_3_n_0\
    );
\state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200000000300033"
    )
        port map (
      I0 => RD_IBUF,
      I1 => \state[4]_i_7_n_0\,
      I2 => WE_IBUF,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[4]_i_4_n_0\
    );
\state[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \^counter_reg[5]\
    );
\state[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFFFFFFEF"
    )
        port map (
      I0 => WE_IBUF,
      I1 => nackdet_reg_n_0,
      I2 => RD_IBUF,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[4]_i_6_n_0\
    );
\state[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => nackdet_reg_n_0,
      O => \state[4]_i_7_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \state[4]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \state[4]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \state[4]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \state[4]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \state[3]_i_1_n_0\,
      Q => \state_reg_n_0_[3]\
    );
\state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \state[4]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \state[4]_i_2_n_0\,
      Q => \state_reg_n_0_[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CSLAVE is
  port (
    SDA_S_TRI : out STD_LOGIC;
    SDA_S_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    RST_confirm_OBUF : in STD_LOGIC;
    SCL_S_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end I2CSLAVE;

architecture STRUCTURE of I2CSLAVE is
  signal \SDA_OUT_i_1__0_n_0\ : STD_LOGIC;
  signal \SDA_OUT_i_2__0_n_0\ : STD_LOGIC;
  signal \SDA_OUT_i_3__0_n_0\ : STD_LOGIC;
  signal \SDA_OUT_i_4__0_n_0\ : STD_LOGIC;
  signal \SDA_OUT_i_5__0_n_0\ : STD_LOGIC;
  signal \^sda_s_tri\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal counter0 : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \counter[2]_i_4_n_0\ : STD_LOGIC;
  signal \counter[2]_i_5_n_0\ : STD_LOGIC;
  signal next_state0 : STD_LOGIC;
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal operation_i_1_n_0 : STD_LOGIC;
  signal operation_i_2_n_0 : STD_LOGIC;
  signal operation_i_3_n_0 : STD_LOGIC;
  signal operation_i_4_n_0 : STD_LOGIC;
  signal operation_i_5_n_0 : STD_LOGIC;
  signal operation_i_6_n_0 : STD_LOGIC;
  signal operation_reg_n_0 : STD_LOGIC;
  signal scl_q : STD_LOGIC;
  signal scl_qq : STD_LOGIC;
  signal scl_qqq : STD_LOGIC;
  signal sda : STD_LOGIC;
  signal sda_q : STD_LOGIC;
  signal sda_qqq : STD_LOGIC;
  signal shiftreg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \shiftreg[0]_i_1_n_0\ : STD_LOGIC;
  signal \shiftreg[1]_i_1_n_0\ : STD_LOGIC;
  signal \shiftreg[2]_i_1_n_0\ : STD_LOGIC;
  signal \shiftreg[3]_i_1_n_0\ : STD_LOGIC;
  signal \shiftreg[4]_i_1_n_0\ : STD_LOGIC;
  signal \shiftreg[5]_i_1_n_0\ : STD_LOGIC;
  signal \shiftreg[6]_i_1_n_0\ : STD_LOGIC;
  signal \shiftreg[7]_i_2_n_0\ : STD_LOGIC;
  signal \shiftreg[7]_i_3_n_0\ : STD_LOGIC;
  signal \shiftreg[7]_i_4_n_0\ : STD_LOGIC;
  signal \shiftreg[7]_i_5_n_0\ : STD_LOGIC;
  signal \shiftreg[7]_i_6_n_0\ : STD_LOGIC;
  signal shiftreg_0 : STD_LOGIC;
  signal \shiftreg_reg_n_0_[7]\ : STD_LOGIC;
  signal start_cond : STD_LOGIC;
  signal start_cond_i_1_n_0 : STD_LOGIC;
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \state[3]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_7_n_0\ : STD_LOGIC;
  signal \state[3]_i_8_n_0\ : STD_LOGIC;
  signal \state[3]_i_9_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal stop_cond : STD_LOGIC;
  signal stop_cond0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SDA_OUT_i_3__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SDA_OUT_i_4__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[0]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[0]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[1]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[2]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \next_state[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \next_state[3]_i_2__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of operation_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shiftreg[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shiftreg[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shiftreg[7]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shiftreg[7]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of start_cond_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \state[0]_i_2__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[0]_i_3__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[1]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[3]_i_3__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[3]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[3]_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of stop_cond_i_1 : label is "soft_lutpair12";
begin
  SDA_S_TRI <= \^sda_s_tri\;
\SDA_OUT_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F3FFFF77F30000"
    )
        port map (
      I0 => \SDA_OUT_i_2__0_n_0\,
      I1 => \shiftreg[7]_i_3_n_0\,
      I2 => \SDA_OUT_i_3__0_n_0\,
      I3 => \SDA_OUT_i_4__0_n_0\,
      I4 => \SDA_OUT_i_5__0_n_0\,
      I5 => \^sda_s_tri\,
      O => \SDA_OUT_i_1__0_n_0\
    );
\SDA_OUT_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDD0FDDDD"
    )
        port map (
      I0 => scl_qqq,
      I1 => scl_qq,
      I2 => \shiftreg_reg_n_0_[7]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[2]\,
      O => \SDA_OUT_i_2__0_n_0\
    );
\SDA_OUT_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => scl_qqq,
      I2 => scl_qq,
      I3 => \state_reg_n_0_[3]\,
      O => \SDA_OUT_i_3__0_n_0\
    );
\SDA_OUT_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFA"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      O => \SDA_OUT_i_4__0_n_0\
    );
\SDA_OUT_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5575757555D5D577"
    )
        port map (
      I0 => \shiftreg[7]_i_3_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state[3]_i_9_n_0\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[2]\,
      O => \SDA_OUT_i_5__0_n_0\
    );
SDA_OUT_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \SDA_OUT_i_1__0_n_0\,
      PRE => RST_confirm_OBUF,
      Q => \^sda_s_tri\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DE00DEDEDEDEDEDE"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[0]_i_2_n_0\,
      I2 => counter0,
      I3 => \counter[0]_i_3_n_0\,
      I4 => \counter[0]_i_4_n_0\,
      I5 => \next_state[3]_i_3_n_0\,
      O => \counter[0]_i_1_n_0\
    );
\counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E000000000E000"
    )
        port map (
      I0 => \shiftreg[7]_i_4_n_0\,
      I1 => \counter[0]_i_5_n_0\,
      I2 => \next_state[3]_i_3_n_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => scl_qqq,
      I2 => scl_qq,
      I3 => \state_reg_n_0_[3]\,
      O => \counter[0]_i_5_n_0\
    );
\counter[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA6"
    )
        port map (
      I0 => counter(1),
      I1 => counter0,
      I2 => counter(0),
      I3 => \counter[2]_i_3_n_0\,
      O => \counter[1]_i_1__1_n_0\
    );
\counter[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA6"
    )
        port map (
      I0 => counter(2),
      I1 => counter0,
      I2 => counter(1),
      I3 => counter(0),
      I4 => \counter[2]_i_3_n_0\,
      O => \counter[2]_i_1__1_n_0\
    );
\counter[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003400000"
    )
        port map (
      I0 => \state[3]_i_7_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => scl_qqq,
      I3 => scl_qq,
      I4 => \next_state[3]_i_3_n_0\,
      I5 => \counter[2]_i_4_n_0\,
      O => counter0
    );
\counter[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => RST_confirm_OBUF,
      I1 => start_cond,
      I2 => stop_cond,
      I3 => \counter[2]_i_5_n_0\,
      O => \counter[2]_i_3_n_0\
    );
\counter[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEF"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => \counter[2]_i_4_n_0\
    );
\counter[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30FDFFFD30FFFCFF"
    )
        port map (
      I0 => \state[3]_i_9_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \shiftreg[7]_i_4_n_0\,
      I5 => \state_reg_n_0_[2]\,
      O => \counter[2]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counter[1]_i_1__1_n_0\,
      Q => counter(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counter[2]_i_1__1_n_0\,
      Q => counter(2),
      R => '0'
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F700"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      O => \next_state[0]_i_1_n_0\
    );
\next_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      O => \next_state[1]_i_1__0_n_0\
    );
\next_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      O => \next_state[2]_i_1_n_0\
    );
\next_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A80880000"
    )
        port map (
      I0 => \next_state[3]_i_3_n_0\,
      I1 => \next_state[3]_i_4_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[3]\,
      O => next_state0
    );
\next_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => \next_state[3]_i_2__0_n_0\
    );
\next_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => stop_cond,
      I1 => start_cond,
      I2 => RST_confirm_OBUF,
      O => \next_state[3]_i_3_n_0\
    );
\next_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDFDDDDDDDDDD"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => sda,
      I3 => scl_qq,
      I4 => scl_qqq,
      I5 => \state[1]_i_3__0_n_0\,
      O => \next_state[3]_i_4_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => next_state0,
      D => \next_state[0]_i_1_n_0\,
      Q => \next_state_reg_n_0_[0]\,
      R => '0'
    );
\next_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => next_state0,
      D => \next_state[1]_i_1__0_n_0\,
      Q => \next_state_reg_n_0_[1]\,
      R => '0'
    );
\next_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => next_state0,
      D => \next_state[2]_i_1_n_0\,
      Q => \next_state_reg_n_0_[2]\,
      R => '0'
    );
\next_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => next_state0,
      D => \next_state[3]_i_2__0_n_0\,
      Q => \next_state_reg_n_0_[3]\,
      R => '0'
    );
operation_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF0000000000"
    )
        port map (
      I0 => operation_i_2_n_0,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => RST_confirm_OBUF,
      I4 => \shiftreg[7]_i_3_n_0\,
      I5 => operation_i_3_n_0,
      O => operation_i_1_n_0
    );
operation_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6EEEEEEEEEEEEEE"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => scl_qqq,
      I3 => scl_qq,
      I4 => sda,
      I5 => \state[1]_i_3__0_n_0\,
      O => operation_i_2_n_0
    );
operation_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => operation_i_4_n_0,
      I1 => scl_qqq,
      I2 => scl_qq,
      I3 => operation_i_5_n_0,
      I4 => operation_i_6_n_0,
      I5 => operation_reg_n_0,
      O => operation_i_3_n_0
    );
operation_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => operation_i_4_n_0
    );
operation_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => RST_confirm_OBUF,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \shiftreg_reg_n_0_[7]\,
      I4 => shiftreg(6),
      I5 => shiftreg(0),
      O => operation_i_5_n_0
    );
operation_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => shiftreg(1),
      I1 => shiftreg(5),
      I2 => shiftreg(3),
      I3 => shiftreg(4),
      I4 => shiftreg(2),
      O => operation_i_6_n_0
    );
operation_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => operation_i_1_n_0,
      Q => operation_reg_n_0,
      R => '0'
    );
scl_q_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => SCL_S_IBUF,
      PRE => RST_confirm_OBUF,
      Q => scl_q
    );
scl_qq_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => scl_q,
      PRE => RST_confirm_OBUF,
      Q => scl_qq
    );
scl_qqq_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => scl_qq,
      PRE => RST_confirm_OBUF,
      Q => scl_qqq
    );
sda_q_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => SDA_S_IBUF,
      PRE => RST_confirm_OBUF,
      Q => sda_q
    );
sda_qq_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sda_q,
      PRE => RST_confirm_OBUF,
      Q => sda
    );
sda_qqq_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sda,
      PRE => RST_confirm_OBUF,
      Q => sda_qqq
    );
\shiftreg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB0ABAAAAB0A8AA"
    )
        port map (
      I0 => Q(0),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => sda,
      O => \shiftreg[0]_i_1_n_0\
    );
\shiftreg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB0ABAAAA80A8AA"
    )
        port map (
      I0 => Q(1),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => shiftreg(0),
      O => \shiftreg[1]_i_1_n_0\
    );
\shiftreg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB0ABAAAA80A8AA"
    )
        port map (
      I0 => Q(2),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => shiftreg(1),
      O => \shiftreg[2]_i_1_n_0\
    );
\shiftreg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB0ABAAAA80A8AA"
    )
        port map (
      I0 => Q(3),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => shiftreg(2),
      O => \shiftreg[3]_i_1_n_0\
    );
\shiftreg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB0ABAAAA80A8AA"
    )
        port map (
      I0 => Q(4),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => shiftreg(3),
      O => \shiftreg[4]_i_1_n_0\
    );
\shiftreg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB0ABAAAA80A8AA"
    )
        port map (
      I0 => Q(5),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => shiftreg(4),
      O => \shiftreg[5]_i_1_n_0\
    );
\shiftreg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000820"
    )
        port map (
      I0 => shiftreg(5),
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      O => \shiftreg[6]_i_1_n_0\
    );
\shiftreg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8000AAAA8A0A"
    )
        port map (
      I0 => \shiftreg[7]_i_3_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \shiftreg[7]_i_4_n_0\,
      I4 => \shiftreg[7]_i_5_n_0\,
      I5 => \shiftreg[7]_i_6_n_0\,
      O => shiftreg_0
    );
\shiftreg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000820"
    )
        port map (
      I0 => shiftreg(6),
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      O => \shiftreg[7]_i_2_n_0\
    );
\shiftreg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start_cond,
      I1 => stop_cond,
      O => \shiftreg[7]_i_3_n_0\
    );
\shiftreg[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => scl_qqq,
      I3 => scl_qq,
      I4 => sda,
      O => \shiftreg[7]_i_4_n_0\
    );
\shiftreg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004044404"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => scl_qqq,
      I4 => scl_qq,
      I5 => \state_reg_n_0_[3]\,
      O => \shiftreg[7]_i_5_n_0\
    );
\shiftreg[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF3EFFF"
    )
        port map (
      I0 => operation_reg_n_0,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => scl_qqq,
      I4 => scl_qq,
      I5 => \state_reg_n_0_[3]\,
      O => \shiftreg[7]_i_6_n_0\
    );
\shiftreg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shiftreg_0,
      CLR => RST_confirm_OBUF,
      D => \shiftreg[0]_i_1_n_0\,
      Q => shiftreg(0)
    );
\shiftreg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shiftreg_0,
      CLR => RST_confirm_OBUF,
      D => \shiftreg[1]_i_1_n_0\,
      Q => shiftreg(1)
    );
\shiftreg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shiftreg_0,
      CLR => RST_confirm_OBUF,
      D => \shiftreg[2]_i_1_n_0\,
      Q => shiftreg(2)
    );
\shiftreg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shiftreg_0,
      CLR => RST_confirm_OBUF,
      D => \shiftreg[3]_i_1_n_0\,
      Q => shiftreg(3)
    );
\shiftreg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shiftreg_0,
      CLR => RST_confirm_OBUF,
      D => \shiftreg[4]_i_1_n_0\,
      Q => shiftreg(4)
    );
\shiftreg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shiftreg_0,
      CLR => RST_confirm_OBUF,
      D => \shiftreg[5]_i_1_n_0\,
      Q => shiftreg(5)
    );
\shiftreg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shiftreg_0,
      CLR => RST_confirm_OBUF,
      D => \shiftreg[6]_i_1_n_0\,
      Q => shiftreg(6)
    );
\shiftreg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shiftreg_0,
      CLR => RST_confirm_OBUF,
      D => \shiftreg[7]_i_2_n_0\,
      Q => \shiftreg_reg_n_0_[7]\
    );
start_cond_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sda,
      I1 => sda_qqq,
      I2 => scl_qq,
      O => start_cond_i_1_n_0
    );
start_cond_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => start_cond_i_1_n_0,
      Q => start_cond
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF20"
    )
        port map (
      I0 => \state[0]_i_2__0_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \next_state_reg_n_0_[0]\,
      I3 => start_cond,
      I4 => \state[0]_i_3__0_n_0\,
      I5 => stop_cond,
      O => \state[0]_i_1__0_n_0\
    );
\state[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      O => \state[0]_i_2__0_n_0\
    );
\state[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0024E0E4"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => sda,
      O => \state[0]_i_3__0_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => stop_cond,
      I1 => start_cond,
      I2 => \state[1]_i_2__0_n_0\,
      O => \state[1]_i_1__0_n_0\
    );
\state[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCFFCCFE0CFE0FF"
    )
        port map (
      I0 => \state[1]_i_3__0_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \next_state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[1]_i_2__0_n_0\
    );
\state[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => shiftreg(1),
      I1 => shiftreg(0),
      I2 => shiftreg(2),
      I3 => shiftreg(4),
      I4 => \state[1]_i_4__0_n_0\,
      O => \state[1]_i_3__0_n_0\
    );
\state[1]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => shiftreg(5),
      I1 => \shiftreg_reg_n_0_[7]\,
      I2 => shiftreg(6),
      I3 => shiftreg(3),
      O => \state[1]_i_4__0_n_0\
    );
\state[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => stop_cond,
      I1 => start_cond,
      I2 => \state[2]_i_2_n_0\,
      O => \state[2]_i_1__0_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCFC3C3F1F1F"
    )
        port map (
      I0 => \next_state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => operation_reg_n_0,
      I4 => \state_reg_n_0_[2]\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[2]_i_2_n_0\
    );
\state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF10"
    )
        port map (
      I0 => \state[3]_i_3__0_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => start_cond,
      I4 => stop_cond,
      I5 => \state[3]_i_4_n_0\,
      O => \state[3]_i_1__0_n_0\
    );
\state[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010101011"
    )
        port map (
      I0 => stop_cond,
      I1 => start_cond,
      I2 => \state[3]_i_5_n_0\,
      I3 => operation_reg_n_0,
      I4 => \state[3]_i_6_n_0\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[3]_i_2__0_n_0\
    );
\state[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCD03CFC"
    )
        port map (
      I0 => \state[3]_i_7_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => scl_qq,
      I4 => scl_qqq,
      O => \state[3]_i_3__0_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAFC0AF"
    )
        port map (
      I0 => \state[3]_i_8_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state[3]_i_9_n_0\,
      I5 => \state_reg_n_0_[3]\,
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444CF044444CC0"
    )
        port map (
      I0 => sda,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \next_state_reg_n_0_[3]\,
      O => \state[3]_i_5_n_0\
    );
\state[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      O => \state[3]_i_6_n_0\
    );
\state[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(0),
      O => \state[3]_i_7_n_0\
    );
\state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF010000"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(0),
      I3 => \state_reg_n_0_[0]\,
      I4 => scl_qq,
      I5 => scl_qqq,
      O => \state[3]_i_8_n_0\
    );
\state[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scl_qqq,
      I1 => scl_qq,
      O => \state[3]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \state[3]_i_1__0_n_0\,
      CLR => RST_confirm_OBUF,
      D => \state[0]_i_1__0_n_0\,
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \state[3]_i_1__0_n_0\,
      CLR => RST_confirm_OBUF,
      D => \state[1]_i_1__0_n_0\,
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \state[3]_i_1__0_n_0\,
      CLR => RST_confirm_OBUF,
      D => \state[2]_i_1__0_n_0\,
      Q => \state_reg_n_0_[2]\
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \state[3]_i_1__0_n_0\,
      CLR => RST_confirm_OBUF,
      D => \state[3]_i_2__0_n_0\,
      Q => \state_reg_n_0_[3]\
    );
stop_cond_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sda,
      I1 => scl_qq,
      I2 => sda_qqq,
      O => stop_cond0
    );
stop_cond_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => stop_cond0,
      Q => stop_cond
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RealTimeClock is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    CLK : in STD_LOGIC;
    RST_confirm_OBUF : in STD_LOGIC
  );
end RealTimeClock;

architecture STRUCTURE of RealTimeClock is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal count2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \count2_carry__0_n_0\ : STD_LOGIC;
  signal \count2_carry__0_n_1\ : STD_LOGIC;
  signal \count2_carry__0_n_2\ : STD_LOGIC;
  signal \count2_carry__0_n_3\ : STD_LOGIC;
  signal \count2_carry__1_n_0\ : STD_LOGIC;
  signal \count2_carry__1_n_1\ : STD_LOGIC;
  signal \count2_carry__1_n_2\ : STD_LOGIC;
  signal \count2_carry__1_n_3\ : STD_LOGIC;
  signal \count2_carry__2_n_0\ : STD_LOGIC;
  signal \count2_carry__2_n_1\ : STD_LOGIC;
  signal \count2_carry__2_n_2\ : STD_LOGIC;
  signal \count2_carry__2_n_3\ : STD_LOGIC;
  signal \count2_carry__3_n_0\ : STD_LOGIC;
  signal \count2_carry__3_n_1\ : STD_LOGIC;
  signal \count2_carry__3_n_2\ : STD_LOGIC;
  signal \count2_carry__3_n_3\ : STD_LOGIC;
  signal \count2_carry__4_n_0\ : STD_LOGIC;
  signal \count2_carry__4_n_1\ : STD_LOGIC;
  signal \count2_carry__4_n_2\ : STD_LOGIC;
  signal \count2_carry__4_n_3\ : STD_LOGIC;
  signal \count2_carry__5_n_0\ : STD_LOGIC;
  signal \count2_carry__5_n_1\ : STD_LOGIC;
  signal \count2_carry__5_n_2\ : STD_LOGIC;
  signal \count2_carry__5_n_3\ : STD_LOGIC;
  signal \count2_carry__6_n_2\ : STD_LOGIC;
  signal \count2_carry__6_n_3\ : STD_LOGIC;
  signal count2_carry_n_0 : STD_LOGIC;
  signal count2_carry_n_1 : STD_LOGIC;
  signal count2_carry_n_2 : STD_LOGIC;
  signal count2_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3_n_0\ : STD_LOGIC;
  signal \count[12]_i_4_n_0\ : STD_LOGIC;
  signal \count[12]_i_5_n_0\ : STD_LOGIC;
  signal \count[16]_i_2_n_0\ : STD_LOGIC;
  signal \count[16]_i_3_n_0\ : STD_LOGIC;
  signal \count[16]_i_4_n_0\ : STD_LOGIC;
  signal \count[16]_i_5_n_0\ : STD_LOGIC;
  signal \count[20]_i_2_n_0\ : STD_LOGIC;
  signal \count[20]_i_3_n_0\ : STD_LOGIC;
  signal \count[20]_i_4_n_0\ : STD_LOGIC;
  signal \count[20]_i_5_n_0\ : STD_LOGIC;
  signal \count[24]_i_2_n_0\ : STD_LOGIC;
  signal \count[24]_i_3_n_0\ : STD_LOGIC;
  signal \count[24]_i_4_n_0\ : STD_LOGIC;
  signal \count[24]_i_5_n_0\ : STD_LOGIC;
  signal \count[28]_i_2_n_0\ : STD_LOGIC;
  signal \count[28]_i_3_n_0\ : STD_LOGIC;
  signal \count[28]_i_4_n_0\ : STD_LOGIC;
  signal \count[28]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \seconds_counter[5]_i_10_n_0\ : STD_LOGIC;
  signal \seconds_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \seconds_counter[5]_i_3_n_0\ : STD_LOGIC;
  signal \seconds_counter[5]_i_4_n_0\ : STD_LOGIC;
  signal \seconds_counter[5]_i_5_n_0\ : STD_LOGIC;
  signal \seconds_counter[5]_i_6_n_0\ : STD_LOGIC;
  signal \seconds_counter[5]_i_7_n_0\ : STD_LOGIC;
  signal \seconds_counter[5]_i_8_n_0\ : STD_LOGIC;
  signal \seconds_counter[5]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_count2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count2_carry : label is 35;
  attribute ADDER_THRESHOLD of \count2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count2_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \count2_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \count2_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seconds_counter[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \seconds_counter[1]_i_1\ : label is "soft_lutpair13";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
count2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count2_carry_n_0,
      CO(2) => count2_carry_n_1,
      CO(1) => count2_carry_n_2,
      CO(0) => count2_carry_n_3,
      CYINIT => count_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count2(4 downto 1),
      S(3 downto 0) => count_reg(4 downto 1)
    );
\count2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count2_carry_n_0,
      CO(3) => \count2_carry__0_n_0\,
      CO(2) => \count2_carry__0_n_1\,
      CO(1) => \count2_carry__0_n_2\,
      CO(0) => \count2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count2(8 downto 5),
      S(3 downto 0) => count_reg(8 downto 5)
    );
\count2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__0_n_0\,
      CO(3) => \count2_carry__1_n_0\,
      CO(2) => \count2_carry__1_n_1\,
      CO(1) => \count2_carry__1_n_2\,
      CO(0) => \count2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count2(12 downto 9),
      S(3 downto 0) => count_reg(12 downto 9)
    );
\count2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__1_n_0\,
      CO(3) => \count2_carry__2_n_0\,
      CO(2) => \count2_carry__2_n_1\,
      CO(1) => \count2_carry__2_n_2\,
      CO(0) => \count2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count2(16 downto 13),
      S(3 downto 0) => count_reg(16 downto 13)
    );
\count2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__2_n_0\,
      CO(3) => \count2_carry__3_n_0\,
      CO(2) => \count2_carry__3_n_1\,
      CO(1) => \count2_carry__3_n_2\,
      CO(0) => \count2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count2(20 downto 17),
      S(3 downto 0) => count_reg(20 downto 17)
    );
\count2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__3_n_0\,
      CO(3) => \count2_carry__4_n_0\,
      CO(2) => \count2_carry__4_n_1\,
      CO(1) => \count2_carry__4_n_2\,
      CO(0) => \count2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count2(24 downto 21),
      S(3 downto 0) => count_reg(24 downto 21)
    );
\count2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__4_n_0\,
      CO(3) => \count2_carry__5_n_0\,
      CO(2) => \count2_carry__5_n_1\,
      CO(1) => \count2_carry__5_n_2\,
      CO(0) => \count2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count2(28 downto 25),
      S(3 downto 0) => count_reg(28 downto 25)
    );
\count2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count2_carry__6_n_2\,
      CO(0) => \count2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => count2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count_reg(31 downto 29)
    );
\count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(3),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[0]_i_2_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(2),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(1),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555655"
    )
        port map (
      I0 => count_reg(0),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[0]_i_5_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(15),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[12]_i_2_n_0\
    );
\count[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(14),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[12]_i_3_n_0\
    );
\count[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(13),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[12]_i_4_n_0\
    );
\count[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(12),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[12]_i_5_n_0\
    );
\count[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(19),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[16]_i_2_n_0\
    );
\count[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(18),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[16]_i_3_n_0\
    );
\count[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(17),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[16]_i_4_n_0\
    );
\count[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(16),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[16]_i_5_n_0\
    );
\count[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(23),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[20]_i_2_n_0\
    );
\count[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(22),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[20]_i_3_n_0\
    );
\count[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(21),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[20]_i_4_n_0\
    );
\count[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(20),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[20]_i_5_n_0\
    );
\count[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(27),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[24]_i_2_n_0\
    );
\count[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(26),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[24]_i_3_n_0\
    );
\count[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(25),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[24]_i_4_n_0\
    );
\count[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(24),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[24]_i_5_n_0\
    );
\count[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(31),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[28]_i_2_n_0\
    );
\count[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(30),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[28]_i_3_n_0\
    );
\count[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(29),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[28]_i_4_n_0\
    );
\count[28]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(28),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[28]_i_5_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(7),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(6),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(5),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(4),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[4]_i_5_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(11),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(10),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(9),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => count_reg(8),
      I1 => \seconds_counter[5]_i_6_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_4_n_0\,
      I4 => \seconds_counter[5]_i_3_n_0\,
      O => \count[8]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[0]_i_1_n_7\,
      Q => count_reg(0)
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => count_reg(0),
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3) => \count[0]_i_2_n_0\,
      S(2) => \count[0]_i_3_n_0\,
      S(1) => \count[0]_i_4_n_0\,
      S(0) => \count[0]_i_5_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12)
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3) => \count[12]_i_2_n_0\,
      S(2) => \count[12]_i_3_n_0\,
      S(1) => \count[12]_i_4_n_0\,
      S(0) => \count[12]_i_5_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15)
    );
\count_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16)
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3) => \count[16]_i_2_n_0\,
      S(2) => \count[16]_i_3_n_0\,
      S(1) => \count[16]_i_4_n_0\,
      S(0) => \count[16]_i_5_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17)
    );
\count_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18)
    );
\count_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[0]_i_1_n_6\,
      Q => count_reg(1)
    );
\count_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20)
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1_n_4\,
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3) => \count[20]_i_2_n_0\,
      S(2) => \count[20]_i_3_n_0\,
      S(1) => \count[20]_i_4_n_0\,
      S(0) => \count[20]_i_5_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21)
    );
\count_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22)
    );
\count_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23)
    );
\count_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[24]_i_1_n_7\,
      Q => count_reg(24)
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3) => \count_reg[24]_i_1_n_0\,
      CO(2) => \count_reg[24]_i_1_n_1\,
      CO(1) => \count_reg[24]_i_1_n_2\,
      CO(0) => \count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]_i_1_n_4\,
      O(2) => \count_reg[24]_i_1_n_5\,
      O(1) => \count_reg[24]_i_1_n_6\,
      O(0) => \count_reg[24]_i_1_n_7\,
      S(3) => \count[24]_i_2_n_0\,
      S(2) => \count[24]_i_3_n_0\,
      S(1) => \count[24]_i_4_n_0\,
      S(0) => \count[24]_i_5_n_0\
    );
\count_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[24]_i_1_n_6\,
      Q => count_reg(25)
    );
\count_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[24]_i_1_n_5\,
      Q => count_reg(26)
    );
\count_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[24]_i_1_n_4\,
      Q => count_reg(27)
    );
\count_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[28]_i_1_n_7\,
      Q => count_reg(28)
    );
\count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[28]_i_1_n_1\,
      CO(1) => \count_reg[28]_i_1_n_2\,
      CO(0) => \count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[28]_i_1_n_4\,
      O(2) => \count_reg[28]_i_1_n_5\,
      O(1) => \count_reg[28]_i_1_n_6\,
      O(0) => \count_reg[28]_i_1_n_7\,
      S(3) => \count[28]_i_2_n_0\,
      S(2) => \count[28]_i_3_n_0\,
      S(1) => \count[28]_i_4_n_0\,
      S(0) => \count[28]_i_5_n_0\
    );
\count_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[28]_i_1_n_6\,
      Q => count_reg(29)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[0]_i_1_n_5\,
      Q => count_reg(2)
    );
\count_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[28]_i_1_n_5\,
      Q => count_reg(30)
    );
\count_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[28]_i_1_n_4\,
      Q => count_reg(31)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[0]_i_1_n_4\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count[4]_i_2_n_0\,
      S(2) => \count[4]_i_3_n_0\,
      S(1) => \count[4]_i_4_n_0\,
      S(0) => \count[4]_i_5_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8)
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3) => \count[8]_i_2_n_0\,
      S(2) => \count[8]_i_3_n_0\,
      S(1) => \count[8]_i_4_n_0\,
      S(0) => \count[8]_i_5_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9)
    );
\seconds_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__0\(0)
    );
\seconds_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__0\(1)
    );
\seconds_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF7F000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(5),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \p_0_in__0\(2)
    );
\seconds_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF7FFFF0000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \p_0_in__0\(3)
    );
\seconds_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFFFFFC0000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \p_0_in__0\(4)
    );
\seconds_counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \seconds_counter[5]_i_3_n_0\,
      I1 => \seconds_counter[5]_i_4_n_0\,
      I2 => \seconds_counter[5]_i_5_n_0\,
      I3 => \seconds_counter[5]_i_6_n_0\,
      O => \seconds_counter[5]_i_1_n_0\
    );
\seconds_counter[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => count2(4),
      I1 => count2(9),
      I2 => count2(10),
      I3 => count2(12),
      O => \seconds_counter[5]_i_10_n_0\
    );
\seconds_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(5),
      O => \p_0_in__0\(5)
    );
\seconds_counter[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => count2(6),
      I1 => count2(13),
      I2 => count2(25),
      I3 => count2(18),
      I4 => \seconds_counter[5]_i_7_n_0\,
      O => \seconds_counter[5]_i_3_n_0\
    );
\seconds_counter[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => count2(28),
      I1 => count2(22),
      I2 => count2(26),
      I3 => count_reg(0),
      I4 => \seconds_counter[5]_i_8_n_0\,
      O => \seconds_counter[5]_i_4_n_0\
    );
\seconds_counter[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => count2(17),
      I1 => count2(11),
      I2 => count2(1),
      I3 => count2(5),
      I4 => \seconds_counter[5]_i_9_n_0\,
      O => \seconds_counter[5]_i_5_n_0\
    );
\seconds_counter[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => count2(2),
      I1 => count2(7),
      I2 => count2(21),
      I3 => count2(24),
      I4 => \seconds_counter[5]_i_10_n_0\,
      O => \seconds_counter[5]_i_6_n_0\
    );
\seconds_counter[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => count2(15),
      I1 => count2(31),
      I2 => count2(20),
      I3 => count2(27),
      O => \seconds_counter[5]_i_7_n_0\
    );
\seconds_counter[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => count2(23),
      I1 => count2(29),
      I2 => count2(16),
      I3 => count2(8),
      O => \seconds_counter[5]_i_8_n_0\
    );
\seconds_counter[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => count2(14),
      I1 => count2(3),
      I2 => count2(30),
      I3 => count2(19),
      O => \seconds_counter[5]_i_9_n_0\
    );
\seconds_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \seconds_counter[5]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \p_0_in__0\(0),
      Q => \^q\(0)
    );
\seconds_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \seconds_counter[5]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \p_0_in__0\(1),
      Q => \^q\(1)
    );
\seconds_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \seconds_counter[5]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \p_0_in__0\(2),
      Q => \^q\(2)
    );
\seconds_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \seconds_counter[5]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \p_0_in__0\(3),
      Q => \^q\(3)
    );
\seconds_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \seconds_counter[5]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \p_0_in__0\(4),
      Q => \^q\(4)
    );
\seconds_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \seconds_counter[5]_i_1_n_0\,
      CLR => RST_confirm_OBUF,
      D => \p_0_in__0\(5),
      Q => \^q\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_slave is
  port (
    SDA_S_TRI : out STD_LOGIC;
    SDA_S_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    RST_confirm_OBUF : in STD_LOGIC;
    SCL_S_IBUF : in STD_LOGIC
  );
end Counter_slave;

architecture STRUCTURE of Counter_slave is
  signal seconds_counter_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
I_I2CITF: entity work.I2CSLAVE
     port map (
      CLK => CLK,
      Q(5 downto 0) => seconds_counter_reg(5 downto 0),
      RST_confirm_OBUF => RST_confirm_OBUF,
      SCL_S_IBUF => SCL_S_IBUF,
      SDA_S_IBUF => SDA_S_IBUF,
      SDA_S_TRI => SDA_S_TRI
    );
RTClk: entity work.RealTimeClock
     port map (
      CLK => CLK,
      Q(5 downto 0) => seconds_counter_reg(5 downto 0),
      RST_confirm_OBUF => RST_confirm_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Display_master is
  port (
    QUEUED_OBUF : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDA_M_TRI : out STD_LOGIC;
    SCL_M_TRI : out STD_LOGIC;
    Anode_Activate_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LED_out_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SDA_M_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    RST_confirm_OBUF : in STD_LOGIC;
    RD_IBUF : in STD_LOGIC;
    WE_IBUF : in STD_LOGIC;
    DIN_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Display_master;

architecture STRUCTURE of Display_master is
  signal DOUT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Data_OUT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal I_I2CMASTER_0_n_4 : STD_LOGIC;
  signal LED_activating_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \LED_out_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \refresh_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \refresh_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_refresh_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Anode_Activate_OBUF[1]_inst_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Anode_Activate_OBUF[2]_inst_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Anode_Activate_OBUF[3]_inst_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \LED_out_OBUF[6]_inst_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \LED_out_OBUF[6]_inst_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \LED_out_OBUF[6]_inst_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair27";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \refresh_counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refresh_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refresh_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refresh_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refresh_counter_reg[8]_i_1\ : label is 11;
begin
  E(0) <= \^e\(0);
\Anode_Activate_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => LED_activating_counter(1),
      I1 => LED_activating_counter(0),
      O => Anode_Activate_OBUF(0)
    );
\Anode_Activate_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => LED_activating_counter(0),
      I1 => LED_activating_counter(1),
      O => Anode_Activate_OBUF(1)
    );
\Anode_Activate_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => LED_activating_counter(1),
      I1 => LED_activating_counter(0),
      O => Anode_Activate_OBUF(2)
    );
\Anode_Activate_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => LED_activating_counter(1),
      I1 => LED_activating_counter(0),
      O => Anode_Activate_OBUF(3)
    );
\Data_OUT_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => RST_confirm_OBUF,
      D => DOUT(0),
      Q => Data_OUT(0)
    );
\Data_OUT_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => RST_confirm_OBUF,
      D => DOUT(1),
      Q => Data_OUT(1)
    );
\Data_OUT_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => RST_confirm_OBUF,
      D => DOUT(2),
      Q => Data_OUT(2)
    );
\Data_OUT_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => RST_confirm_OBUF,
      D => DOUT(3),
      Q => Data_OUT(3)
    );
\Data_OUT_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => RST_confirm_OBUF,
      D => DOUT(4),
      Q => Data_OUT(4)
    );
\Data_OUT_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => RST_confirm_OBUF,
      D => DOUT(5),
      Q => Data_OUT(5)
    );
\Data_OUT_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => RST_confirm_OBUF,
      D => DOUT(6),
      Q => Data_OUT(6)
    );
\Data_OUT_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => RST_confirm_OBUF,
      D => DOUT(7),
      Q => Data_OUT(7)
    );
I_I2CMASTER_0: entity work.I2CMASTER
     port map (
      CLK => CLK,
      DIN_IBUF(7 downto 0) => DIN_IBUF(7 downto 0),
      \DOUT_reg[7]_0\(7 downto 0) => DOUT(7 downto 0),
      E(0) => \^e\(0),
      Q(1) => counter_reg(7),
      Q(0) => counter_reg(5),
      QUEUED_OBUF => QUEUED_OBUF,
      RD_IBUF => RD_IBUF,
      RST_confirm_OBUF => RST_confirm_OBUF,
      SCL_M_TRI => SCL_M_TRI,
      SDA_M_IBUF => SDA_M_IBUF,
      SDA_M_TRI => SDA_M_TRI,
      WE_IBUF => WE_IBUF,
      \counter_reg[5]\ => I_I2CMASTER_0_n_4
    );
\LED_out_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"540402A200005555"
    )
        port map (
      I0 => \LED_out_OBUF[6]_inst_i_2_n_0\,
      I1 => Data_OUT(4),
      I2 => LED_activating_counter(0),
      I3 => Data_OUT(0),
      I4 => \LED_out_OBUF[6]_inst_i_4_n_0\,
      I5 => \LED_out_OBUF[6]_inst_i_3_n_0\,
      O => LED_out_OBUF(0)
    );
\LED_out_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404A80857F75404"
    )
        port map (
      I0 => \LED_out_OBUF[6]_inst_i_2_n_0\,
      I1 => Data_OUT(4),
      I2 => LED_activating_counter(0),
      I3 => Data_OUT(0),
      I4 => \LED_out_OBUF[6]_inst_i_4_n_0\,
      I5 => \LED_out_OBUF[6]_inst_i_3_n_0\,
      O => LED_out_OBUF(1)
    );
\LED_out_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B8B8B8FFB8"
    )
        port map (
      I0 => Data_OUT(0),
      I1 => LED_activating_counter(0),
      I2 => Data_OUT(4),
      I3 => \LED_out_OBUF[6]_inst_i_3_n_0\,
      I4 => \LED_out_OBUF[6]_inst_i_4_n_0\,
      I5 => \LED_out_OBUF[6]_inst_i_2_n_0\,
      O => LED_out_OBUF(2)
    );
\LED_out_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0C015100005404"
    )
        port map (
      I0 => \LED_out_OBUF[6]_inst_i_2_n_0\,
      I1 => Data_OUT(4),
      I2 => LED_activating_counter(0),
      I3 => Data_OUT(0),
      I4 => \LED_out_OBUF[6]_inst_i_4_n_0\,
      I5 => \LED_out_OBUF[6]_inst_i_3_n_0\,
      O => LED_out_OBUF(3)
    );
\LED_out_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA202A10150000"
    )
        port map (
      I0 => \LED_out_OBUF[6]_inst_i_2_n_0\,
      I1 => Data_OUT(0),
      I2 => LED_activating_counter(0),
      I3 => Data_OUT(4),
      I4 => \LED_out_OBUF[6]_inst_i_4_n_0\,
      I5 => \LED_out_OBUF[6]_inst_i_3_n_0\,
      O => LED_out_OBUF(4)
    );
\LED_out_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A4C8A4A4A4C8C8C8"
    )
        port map (
      I0 => \LED_out_OBUF[6]_inst_i_2_n_0\,
      I1 => \LED_out_OBUF[6]_inst_i_3_n_0\,
      I2 => \LED_out_OBUF[6]_inst_i_4_n_0\,
      I3 => Data_OUT(0),
      I4 => LED_activating_counter(0),
      I5 => Data_OUT(4),
      O => LED_out_OBUF(5)
    );
\LED_out_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002099944494"
    )
        port map (
      I0 => \LED_out_OBUF[6]_inst_i_2_n_0\,
      I1 => \LED_out_OBUF[6]_inst_i_3_n_0\,
      I2 => Data_OUT(4),
      I3 => LED_activating_counter(0),
      I4 => Data_OUT(0),
      I5 => \LED_out_OBUF[6]_inst_i_4_n_0\,
      O => LED_out_OBUF(6)
    );
\LED_out_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_OUT(3),
      I1 => LED_activating_counter(0),
      I2 => Data_OUT(7),
      O => \LED_out_OBUF[6]_inst_i_2_n_0\
    );
\LED_out_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_OUT(2),
      I1 => LED_activating_counter(0),
      I2 => Data_OUT(6),
      O => \LED_out_OBUF[6]_inst_i_3_n_0\
    );
\LED_out_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_OUT(1),
      I1 => LED_activating_counter(0),
      I2 => Data_OUT(5),
      O => \LED_out_OBUF[6]_inst_i_4_n_0\
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => counter_reg(7),
      I2 => counter_reg(5),
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0666"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => counter_reg(7),
      I3 => counter_reg(5),
      O => p_0_in(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07777000"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(5),
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \counter_reg_n_0_[2]\,
      O => \counter[2]_i_1__0_n_0\
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777777770000000"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(5),
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \counter_reg_n_0_[2]\,
      I5 => \counter_reg_n_0_[3]\,
      O => \counter[3]_i_1__0_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => I_I2CMASTER_0_n_4,
      I1 => \counter_reg_n_0_[2]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => \counter_reg_n_0_[3]\,
      I5 => \counter_reg_n_0_[4]\,
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"43"
    )
        port map (
      I0 => counter_reg(7),
      I1 => \counter[5]_i_2_n_0\,
      I2 => counter_reg(5),
      O => \counter[5]_i_1_n_0\
    );
\counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[4]\,
      O => \counter[5]_i_2_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0770"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(5),
      I2 => \counter[7]_i_2_n_0\,
      I3 => \counter_reg_n_0_[6]\,
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55C0"
    )
        port map (
      I0 => counter_reg(5),
      I1 => \counter[7]_i_2_n_0\,
      I2 => \counter_reg_n_0_[6]\,
      I3 => counter_reg(7),
      O => \counter[7]_i_1_n_0\
    );
\counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter_reg(5),
      I1 => \counter_reg_n_0_[4]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \counter_reg_n_0_[1]\,
      I5 => \counter_reg_n_0_[3]\,
      O => \counter[7]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => p_0_in(0),
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => p_0_in(1),
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \counter[2]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \counter[3]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \counter[4]_i_1_n_0\,
      Q => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \counter[5]_i_1_n_0\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \counter[6]_i_1_n_0\,
      Q => \counter_reg_n_0_[6]\
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \counter[7]_i_1_n_0\,
      Q => counter_reg(7)
    );
\refresh_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \refresh_counter_reg_n_0_[0]\,
      O => \refresh_counter[0]_i_2_n_0\
    );
\refresh_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[0]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[0]\
    );
\refresh_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \refresh_counter_reg[0]_i_1_n_0\,
      CO(2) => \refresh_counter_reg[0]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[0]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \refresh_counter_reg[0]_i_1_n_4\,
      O(2) => \refresh_counter_reg[0]_i_1_n_5\,
      O(1) => \refresh_counter_reg[0]_i_1_n_6\,
      O(0) => \refresh_counter_reg[0]_i_1_n_7\,
      S(3) => \refresh_counter_reg_n_0_[3]\,
      S(2) => \refresh_counter_reg_n_0_[2]\,
      S(1) => \refresh_counter_reg_n_0_[1]\,
      S(0) => \refresh_counter[0]_i_2_n_0\
    );
\refresh_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[8]_i_1_n_5\,
      Q => \refresh_counter_reg_n_0_[10]\
    );
\refresh_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[8]_i_1_n_4\,
      Q => \refresh_counter_reg_n_0_[11]\
    );
\refresh_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[12]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[12]\
    );
\refresh_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter_reg[8]_i_1_n_0\,
      CO(3) => \refresh_counter_reg[12]_i_1_n_0\,
      CO(2) => \refresh_counter_reg[12]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[12]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_counter_reg[12]_i_1_n_4\,
      O(2) => \refresh_counter_reg[12]_i_1_n_5\,
      O(1) => \refresh_counter_reg[12]_i_1_n_6\,
      O(0) => \refresh_counter_reg[12]_i_1_n_7\,
      S(3) => \refresh_counter_reg_n_0_[15]\,
      S(2) => \refresh_counter_reg_n_0_[14]\,
      S(1) => \refresh_counter_reg_n_0_[13]\,
      S(0) => \refresh_counter_reg_n_0_[12]\
    );
\refresh_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[12]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[13]\
    );
\refresh_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[12]_i_1_n_5\,
      Q => \refresh_counter_reg_n_0_[14]\
    );
\refresh_counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[12]_i_1_n_4\,
      Q => \refresh_counter_reg_n_0_[15]\
    );
\refresh_counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[16]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[16]\
    );
\refresh_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter_reg[12]_i_1_n_0\,
      CO(3) => \NLW_refresh_counter_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \refresh_counter_reg[16]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[16]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_counter_reg[16]_i_1_n_4\,
      O(2) => \refresh_counter_reg[16]_i_1_n_5\,
      O(1) => \refresh_counter_reg[16]_i_1_n_6\,
      O(0) => \refresh_counter_reg[16]_i_1_n_7\,
      S(3 downto 2) => LED_activating_counter(1 downto 0),
      S(1) => \refresh_counter_reg_n_0_[17]\,
      S(0) => \refresh_counter_reg_n_0_[16]\
    );
\refresh_counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[16]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[17]\
    );
\refresh_counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[16]_i_1_n_5\,
      Q => LED_activating_counter(0)
    );
\refresh_counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[16]_i_1_n_4\,
      Q => LED_activating_counter(1)
    );
\refresh_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[0]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[1]\
    );
\refresh_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[0]_i_1_n_5\,
      Q => \refresh_counter_reg_n_0_[2]\
    );
\refresh_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[0]_i_1_n_4\,
      Q => \refresh_counter_reg_n_0_[3]\
    );
\refresh_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[4]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[4]\
    );
\refresh_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter_reg[0]_i_1_n_0\,
      CO(3) => \refresh_counter_reg[4]_i_1_n_0\,
      CO(2) => \refresh_counter_reg[4]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[4]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_counter_reg[4]_i_1_n_4\,
      O(2) => \refresh_counter_reg[4]_i_1_n_5\,
      O(1) => \refresh_counter_reg[4]_i_1_n_6\,
      O(0) => \refresh_counter_reg[4]_i_1_n_7\,
      S(3) => \refresh_counter_reg_n_0_[7]\,
      S(2) => \refresh_counter_reg_n_0_[6]\,
      S(1) => \refresh_counter_reg_n_0_[5]\,
      S(0) => \refresh_counter_reg_n_0_[4]\
    );
\refresh_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[4]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[5]\
    );
\refresh_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[4]_i_1_n_5\,
      Q => \refresh_counter_reg_n_0_[6]\
    );
\refresh_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[4]_i_1_n_4\,
      Q => \refresh_counter_reg_n_0_[7]\
    );
\refresh_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[8]_i_1_n_7\,
      Q => \refresh_counter_reg_n_0_[8]\
    );
\refresh_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter_reg[4]_i_1_n_0\,
      CO(3) => \refresh_counter_reg[8]_i_1_n_0\,
      CO(2) => \refresh_counter_reg[8]_i_1_n_1\,
      CO(1) => \refresh_counter_reg[8]_i_1_n_2\,
      CO(0) => \refresh_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_counter_reg[8]_i_1_n_4\,
      O(2) => \refresh_counter_reg[8]_i_1_n_5\,
      O(1) => \refresh_counter_reg[8]_i_1_n_6\,
      O(0) => \refresh_counter_reg[8]_i_1_n_7\,
      S(3) => \refresh_counter_reg_n_0_[11]\,
      S(2) => \refresh_counter_reg_n_0_[10]\,
      S(1) => \refresh_counter_reg_n_0_[9]\,
      S(0) => \refresh_counter_reg_n_0_[8]\
    );
\refresh_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => RST_confirm_OBUF,
      D => \refresh_counter_reg[8]_i_1_n_6\,
      Q => \refresh_counter_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TopFunc is
  port (
    clk : in STD_LOGIC;
    MCLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    RST_confirm : out STD_LOGIC;
    RD : in STD_LOGIC;
    WE : in STD_LOGIC;
    SDA_M : inout STD_LOGIC;
    SCL_M : inout STD_LOGIC;
    DATA_VALID : out STD_LOGIC;
    QUEUED : out STD_LOGIC;
    DIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Anode_Activate : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LED_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SDA_S : inout STD_LOGIC;
    SCL_S : inout STD_LOGIC;
    SCLK : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TopFunc : entity is true;
end TopFunc;

architecture STRUCTURE of TopFunc is
  signal Anode_Activate_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DATA_VALID_OBUF : STD_LOGIC;
  signal DIN_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal LED_out_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal QUEUED_OBUF : STD_LOGIC;
  signal RD_IBUF : STD_LOGIC;
  signal RST_confirm_OBUF : STD_LOGIC;
  signal SCL_M_TRI : STD_LOGIC;
  signal SCL_S_IBUF : STD_LOGIC;
  signal SDA_M_IBUF : STD_LOGIC;
  signal SDA_M_TRI : STD_LOGIC;
  signal SDA_S_IBUF : STD_LOGIC;
  signal SDA_S_TRI : STD_LOGIC;
  signal WE_IBUF : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
begin
pullup_SCL_Minst: unisim.vcomponents.PULLUP
    port map (
      O => SCL_M
    );
pullup_SCL_Sinst: unisim.vcomponents.PULLUP
    port map (
      O => SCL_S
    );
pullup_SDA_Minst: unisim.vcomponents.PULLUP
    port map (
      O => SDA_M
    );
pullup_SDA_Sinst: unisim.vcomponents.PULLUP
    port map (
      O => SDA_S
    );
\Anode_Activate_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Anode_Activate_OBUF(0),
      O => Anode_Activate(0)
    );
\Anode_Activate_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Anode_Activate_OBUF(1),
      O => Anode_Activate(1)
    );
\Anode_Activate_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Anode_Activate_OBUF(2),
      O => Anode_Activate(2)
    );
\Anode_Activate_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Anode_Activate_OBUF(3),
      O => Anode_Activate(3)
    );
Counter_slave_1: entity work.Counter_slave
     port map (
      CLK => clk_IBUF_BUFG,
      RST_confirm_OBUF => RST_confirm_OBUF,
      SCL_S_IBUF => SCL_S_IBUF,
      SDA_S_IBUF => SDA_S_IBUF,
      SDA_S_TRI => SDA_S_TRI
    );
DATA_VALID_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => DATA_VALID_OBUF,
      O => DATA_VALID
    );
\DIN_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DIN(0),
      O => DIN_IBUF(0)
    );
\DIN_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DIN(1),
      O => DIN_IBUF(1)
    );
\DIN_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DIN(2),
      O => DIN_IBUF(2)
    );
\DIN_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DIN(3),
      O => DIN_IBUF(3)
    );
\DIN_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DIN(4),
      O => DIN_IBUF(4)
    );
\DIN_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DIN(5),
      O => DIN_IBUF(5)
    );
\DIN_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DIN(6),
      O => DIN_IBUF(6)
    );
\DIN_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DIN(7),
      O => DIN_IBUF(7)
    );
Display_master_1: entity work.Display_master
     port map (
      Anode_Activate_OBUF(3 downto 0) => Anode_Activate_OBUF(3 downto 0),
      CLK => clk_IBUF_BUFG,
      DIN_IBUF(7 downto 0) => DIN_IBUF(7 downto 0),
      E(0) => DATA_VALID_OBUF,
      LED_out_OBUF(6 downto 0) => LED_out_OBUF(6 downto 0),
      QUEUED_OBUF => QUEUED_OBUF,
      RD_IBUF => RD_IBUF,
      RST_confirm_OBUF => RST_confirm_OBUF,
      SCL_M_TRI => SCL_M_TRI,
      SDA_M_IBUF => SDA_M_IBUF,
      SDA_M_TRI => SDA_M_TRI,
      WE_IBUF => WE_IBUF
    );
\LED_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(0),
      O => LED_out(0)
    );
\LED_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(1),
      O => LED_out(1)
    );
\LED_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(2),
      O => LED_out(2)
    );
\LED_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(3),
      O => LED_out(3)
    );
\LED_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(4),
      O => LED_out(4)
    );
\LED_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(5),
      O => LED_out(5)
    );
\LED_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(6),
      O => LED_out(6)
    );
QUEUED_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => QUEUED_OBUF,
      O => QUEUED
    );
RD_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RD,
      O => RD_IBUF
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_confirm_OBUF
    );
RST_confirm_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RST_confirm_OBUF,
      O => RST_confirm
    );
SCL_M_OBUFT_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => SCL_M,
      T => SCL_M_TRI
    );
SCL_S_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SCL_S,
      O => SCL_S_IBUF
    );
SDA_M_IOBUF_inst: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => SDA_M,
      O => SDA_M_IBUF,
      T => SDA_M_TRI
    );
SDA_S_IOBUF_inst: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => SDA_S,
      O => SDA_S_IBUF,
      T => SDA_S_TRI
    );
WE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => WE,
      O => WE_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
end STRUCTURE;
