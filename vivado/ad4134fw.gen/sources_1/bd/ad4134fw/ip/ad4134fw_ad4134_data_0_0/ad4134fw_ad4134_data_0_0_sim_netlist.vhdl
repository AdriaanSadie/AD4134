-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Nov 16 21:37:04 2025
-- Host        : DESKTOP-NG70LRJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/AD4134/vivado/ad4134fw.gen/sources_1/bd/ad4134fw/ip/ad4134fw_ad4134_data_0_0/ad4134fw_ad4134_data_0_0_sim_netlist.vhdl
-- Design      : ad4134fw_ad4134_data_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_data_0_0_ad4134_data is
  port (
    odr_out : out STD_LOGIC;
    data_out0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out2 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out3 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dclk_out : out STD_LOGIC;
    data_rdy : out STD_LOGIC;
    data_in0 : in STD_LOGIC;
    data_in1 : in STD_LOGIC;
    data_in2 : in STD_LOGIC;
    data_in3 : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ad4134fw_ad4134_data_0_0_ad4134_data : entity is "ad4134_data";
end ad4134fw_ad4134_data_0_0_ad4134_data;

architecture STRUCTURE of ad4134fw_ad4134_data_0_0_ad4134_data is
  signal bit_count : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \bit_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out0[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_out0[23]_i_2_n_0\ : STD_LOGIC;
  signal \^data_rdy\ : STD_LOGIC;
  signal data_rdy_flag : STD_LOGIC;
  signal data_rdy_flag_i_1_n_0 : STD_LOGIC;
  signal data_rdy_i_1_n_0 : STD_LOGIC;
  signal dclk_active : STD_LOGIC;
  signal dclk_active_i_1_n_0 : STD_LOGIC;
  signal odr_int_i_1_n_0 : STD_LOGIC;
  signal odr_int_i_2_n_0 : STD_LOGIC;
  signal odr_tracker_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal shift_reg0 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \shift_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal shift_reg1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal shift_reg2 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \shift_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal slow_clk : STD_LOGIC;
  signal slow_clk_counter_reg : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \slow_clk_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal slow_clk_i_1_n_0 : STD_LOGIC;
begin
  data_rdy <= \^data_rdy\;
\bit_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FE00000000"
    )
        port map (
      I0 => bit_count(4),
      I1 => bit_count(3),
      I2 => bit_count(2),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => \bit_count[0]_i_1_n_0\
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FE00000000"
    )
        port map (
      I0 => bit_count(4),
      I1 => bit_count(3),
      I2 => bit_count(2),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => \bit_count[1]_i_1_n_0\
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000F00000E0"
    )
        port map (
      I0 => bit_count(3),
      I1 => bit_count(4),
      I2 => dclk_active,
      I3 => bit_count(2),
      I4 => bit_count(0),
      I5 => bit_count(1),
      O => \bit_count[2]_i_1_n_0\
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD7"
    )
        port map (
      I0 => dclk_active,
      I1 => bit_count(3),
      I2 => bit_count(1),
      I3 => bit_count(0),
      I4 => bit_count(2),
      O => \bit_count[3]_i_1_n_0\
    );
\bit_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => dclk_active,
      I1 => data_rdy_flag,
      I2 => \data_out0[23]_i_2_n_0\,
      I3 => bit_count(1),
      I4 => bit_count(0),
      O => \bit_count[4]_i_1_n_0\
    );
\bit_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDD7"
    )
        port map (
      I0 => dclk_active,
      I1 => bit_count(4),
      I2 => bit_count(2),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => bit_count(3),
      O => \bit_count[4]_i_2_n_0\
    );
\bit_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \bit_count[4]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \bit_count[0]_i_1_n_0\,
      Q => bit_count(0)
    );
\bit_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \bit_count[4]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \bit_count[1]_i_1_n_0\,
      Q => bit_count(1)
    );
\bit_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \bit_count[4]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \bit_count[2]_i_1_n_0\,
      Q => bit_count(2)
    );
\bit_count_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \bit_count[4]_i_1_n_0\,
      D => \bit_count[3]_i_1_n_0\,
      PRE => odr_int_i_2_n_0,
      Q => bit_count(3)
    );
\bit_count_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \bit_count[4]_i_1_n_0\,
      D => \bit_count[4]_i_2_n_0\,
      PRE => odr_int_i_2_n_0,
      Q => bit_count(4)
    );
\data_out0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000B"
    )
        port map (
      I0 => dclk_active,
      I1 => data_rdy_flag,
      I2 => \data_out0[23]_i_2_n_0\,
      I3 => bit_count(1),
      I4 => bit_count(0),
      O => \data_out0[23]_i_1_n_0\
    );
\data_out0[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bit_count(4),
      I1 => bit_count(3),
      I2 => bit_count(2),
      O => \data_out0[23]_i_2_n_0\
    );
\data_out0_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[0]\,
      Q => data_out0(0)
    );
\data_out0_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[10]\,
      Q => data_out0(10)
    );
\data_out0_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[11]\,
      Q => data_out0(11)
    );
\data_out0_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[12]\,
      Q => data_out0(12)
    );
\data_out0_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[13]\,
      Q => data_out0(13)
    );
\data_out0_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[14]\,
      Q => data_out0(14)
    );
\data_out0_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[15]\,
      Q => data_out0(15)
    );
\data_out0_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[16]\,
      Q => data_out0(16)
    );
\data_out0_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[17]\,
      Q => data_out0(17)
    );
\data_out0_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[18]\,
      Q => data_out0(18)
    );
\data_out0_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[19]\,
      Q => data_out0(19)
    );
\data_out0_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[1]\,
      Q => data_out0(1)
    );
\data_out0_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[20]\,
      Q => data_out0(20)
    );
\data_out0_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[21]\,
      Q => data_out0(21)
    );
\data_out0_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[22]\,
      Q => data_out0(22)
    );
\data_out0_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[23]\,
      Q => data_out0(23)
    );
\data_out0_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[2]\,
      Q => data_out0(2)
    );
\data_out0_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[3]\,
      Q => data_out0(3)
    );
\data_out0_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[4]\,
      Q => data_out0(4)
    );
\data_out0_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[5]\,
      Q => data_out0(5)
    );
\data_out0_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[6]\,
      Q => data_out0(6)
    );
\data_out0_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[7]\,
      Q => data_out0(7)
    );
\data_out0_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[8]\,
      Q => data_out0(8)
    );
\data_out0_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg0_reg_n_0_[9]\,
      Q => data_out0(9)
    );
\data_out1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(0),
      Q => data_out1(0)
    );
\data_out1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(10),
      Q => data_out1(10)
    );
\data_out1_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(11),
      Q => data_out1(11)
    );
\data_out1_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(12),
      Q => data_out1(12)
    );
\data_out1_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(13),
      Q => data_out1(13)
    );
\data_out1_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(14),
      Q => data_out1(14)
    );
\data_out1_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(15),
      Q => data_out1(15)
    );
\data_out1_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(16),
      Q => data_out1(16)
    );
\data_out1_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(17),
      Q => data_out1(17)
    );
\data_out1_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(18),
      Q => data_out1(18)
    );
\data_out1_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(19),
      Q => data_out1(19)
    );
\data_out1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(1),
      Q => data_out1(1)
    );
\data_out1_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(20),
      Q => data_out1(20)
    );
\data_out1_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(21),
      Q => data_out1(21)
    );
\data_out1_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(22),
      Q => data_out1(22)
    );
\data_out1_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(23),
      Q => data_out1(23)
    );
\data_out1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(2),
      Q => data_out1(2)
    );
\data_out1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(3),
      Q => data_out1(3)
    );
\data_out1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(4),
      Q => data_out1(4)
    );
\data_out1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(5),
      Q => data_out1(5)
    );
\data_out1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(6),
      Q => data_out1(6)
    );
\data_out1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(7),
      Q => data_out1(7)
    );
\data_out1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(8),
      Q => data_out1(8)
    );
\data_out1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg1(9),
      Q => data_out1(9)
    );
\data_out2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(0),
      Q => data_out2(0)
    );
\data_out2_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(10),
      Q => data_out2(10)
    );
\data_out2_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(11),
      Q => data_out2(11)
    );
\data_out2_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(12),
      Q => data_out2(12)
    );
\data_out2_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(13),
      Q => data_out2(13)
    );
\data_out2_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(14),
      Q => data_out2(14)
    );
\data_out2_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(15),
      Q => data_out2(15)
    );
\data_out2_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(16),
      Q => data_out2(16)
    );
\data_out2_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(17),
      Q => data_out2(17)
    );
\data_out2_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(18),
      Q => data_out2(18)
    );
\data_out2_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(19),
      Q => data_out2(19)
    );
\data_out2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(1),
      Q => data_out2(1)
    );
\data_out2_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(20),
      Q => data_out2(20)
    );
\data_out2_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(21),
      Q => data_out2(21)
    );
\data_out2_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(22),
      Q => data_out2(22)
    );
\data_out2_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(23),
      Q => data_out2(23)
    );
\data_out2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(2),
      Q => data_out2(2)
    );
\data_out2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(3),
      Q => data_out2(3)
    );
\data_out2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(4),
      Q => data_out2(4)
    );
\data_out2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(5),
      Q => data_out2(5)
    );
\data_out2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(6),
      Q => data_out2(6)
    );
\data_out2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(7),
      Q => data_out2(7)
    );
\data_out2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(8),
      Q => data_out2(8)
    );
\data_out2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => shift_reg2(9),
      Q => data_out2(9)
    );
\data_out3_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[0]\,
      Q => data_out3(0)
    );
\data_out3_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[10]\,
      Q => data_out3(10)
    );
\data_out3_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[11]\,
      Q => data_out3(11)
    );
\data_out3_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[12]\,
      Q => data_out3(12)
    );
\data_out3_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[13]\,
      Q => data_out3(13)
    );
\data_out3_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[14]\,
      Q => data_out3(14)
    );
\data_out3_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[15]\,
      Q => data_out3(15)
    );
\data_out3_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[16]\,
      Q => data_out3(16)
    );
\data_out3_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[17]\,
      Q => data_out3(17)
    );
\data_out3_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[18]\,
      Q => data_out3(18)
    );
\data_out3_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[19]\,
      Q => data_out3(19)
    );
\data_out3_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[1]\,
      Q => data_out3(1)
    );
\data_out3_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[20]\,
      Q => data_out3(20)
    );
\data_out3_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[21]\,
      Q => data_out3(21)
    );
\data_out3_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[22]\,
      Q => data_out3(22)
    );
\data_out3_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[23]\,
      Q => data_out3(23)
    );
\data_out3_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[2]\,
      Q => data_out3(2)
    );
\data_out3_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[3]\,
      Q => data_out3(3)
    );
\data_out3_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[4]\,
      Q => data_out3(4)
    );
\data_out3_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[5]\,
      Q => data_out3(5)
    );
\data_out3_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[6]\,
      Q => data_out3(6)
    );
\data_out3_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[7]\,
      Q => data_out3(7)
    );
\data_out3_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[8]\,
      Q => data_out3(8)
    );
\data_out3_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => \data_out0[23]_i_1_n_0\,
      CLR => odr_int_i_2_n_0,
      D => \shift_reg3_reg_n_0_[9]\,
      Q => data_out3(9)
    );
data_rdy_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888889"
    )
        port map (
      I0 => dclk_active,
      I1 => data_rdy_flag,
      I2 => \data_out0[23]_i_2_n_0\,
      I3 => bit_count(1),
      I4 => bit_count(0),
      O => data_rdy_flag_i_1_n_0
    );
data_rdy_flag_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => data_rdy_flag_i_1_n_0,
      Q => data_rdy_flag
    );
data_rdy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAB0000AAAA"
    )
        port map (
      I0 => data_rdy_flag,
      I1 => \data_out0[23]_i_2_n_0\,
      I2 => bit_count(1),
      I3 => bit_count(0),
      I4 => dclk_active,
      I5 => \^data_rdy\,
      O => data_rdy_i_1_n_0
    );
data_rdy_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => data_rdy_i_1_n_0,
      Q => \^data_rdy\
    );
dclk_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007E"
    )
        port map (
      I0 => odr_tracker_reg(3),
      I1 => odr_tracker_reg(4),
      I2 => odr_tracker_reg(2),
      I3 => odr_tracker_reg(5),
      O => dclk_active_i_1_n_0
    );
dclk_active_reg: unisim.vcomponents.FDCE
     port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => dclk_active_i_1_n_0,
      Q => dclk_active
    );
dclk_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dclk_active,
      I1 => slow_clk,
      O => dclk_out
    );
odr_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010001"
    )
        port map (
      I0 => odr_tracker_reg(3),
      I1 => odr_tracker_reg(4),
      I2 => odr_tracker_reg(2),
      I3 => odr_tracker_reg(5),
      I4 => odr_tracker_reg(1),
      I5 => odr_tracker_reg(0),
      O => odr_int_i_1_n_0
    );
odr_int_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => odr_int_i_2_n_0
    );
odr_int_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => odr_int_i_1_n_0,
      Q => odr_out
    );
\odr_tracker[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000007FFFF"
    )
        port map (
      I0 => odr_tracker_reg(1),
      I1 => odr_tracker_reg(2),
      I2 => odr_tracker_reg(4),
      I3 => odr_tracker_reg(3),
      I4 => odr_tracker_reg(5),
      I5 => odr_tracker_reg(0),
      O => \p_0_in__0\(0)
    );
\odr_tracker[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001FF03FF0000"
    )
        port map (
      I0 => odr_tracker_reg(2),
      I1 => odr_tracker_reg(4),
      I2 => odr_tracker_reg(3),
      I3 => odr_tracker_reg(5),
      I4 => odr_tracker_reg(0),
      I5 => odr_tracker_reg(1),
      O => \p_0_in__0\(1)
    );
\odr_tracker[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111222A333F0000"
    )
        port map (
      I0 => odr_tracker_reg(0),
      I1 => odr_tracker_reg(5),
      I2 => odr_tracker_reg(3),
      I3 => odr_tracker_reg(4),
      I4 => odr_tracker_reg(2),
      I5 => odr_tracker_reg(1),
      O => \p_0_in__0\(2)
    );
\odr_tracker[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => odr_tracker_reg(1),
      I1 => odr_tracker_reg(0),
      I2 => odr_tracker_reg(2),
      I3 => odr_tracker_reg(3),
      I4 => odr_tracker_reg(5),
      O => \p_0_in__0\(3)
    );
\odr_tracker[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => odr_tracker_reg(2),
      I1 => odr_tracker_reg(0),
      I2 => odr_tracker_reg(1),
      I3 => odr_tracker_reg(3),
      I4 => odr_tracker_reg(4),
      I5 => odr_tracker_reg(5),
      O => \p_0_in__0\(4)
    );
\odr_tracker[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005F80000000"
    )
        port map (
      I0 => odr_tracker_reg(2),
      I1 => odr_tracker_reg(0),
      I2 => odr_tracker_reg(1),
      I3 => odr_tracker_reg(3),
      I4 => odr_tracker_reg(4),
      I5 => odr_tracker_reg(5),
      O => \p_0_in__0\(5)
    );
\odr_tracker_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => \p_0_in__0\(0),
      Q => odr_tracker_reg(0)
    );
\odr_tracker_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => \p_0_in__0\(1),
      Q => odr_tracker_reg(1)
    );
\odr_tracker_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => \p_0_in__0\(2),
      Q => odr_tracker_reg(2)
    );
\odr_tracker_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => \p_0_in__0\(3),
      Q => odr_tracker_reg(3)
    );
\odr_tracker_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => \p_0_in__0\(4),
      Q => odr_tracker_reg(4)
    );
\odr_tracker_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => slow_clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => \p_0_in__0\(5),
      Q => odr_tracker_reg(5)
    );
\shift_reg0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => dclk_active,
      I1 => bit_count(0),
      I2 => bit_count(1),
      I3 => bit_count(2),
      I4 => bit_count(3),
      I5 => bit_count(4),
      O => shift_reg0(0)
    );
\shift_reg0[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => bit_count(3),
      I2 => bit_count(4),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(10)
    );
\shift_reg0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => bit_count(0),
      I1 => bit_count(1),
      I2 => bit_count(2),
      I3 => dclk_active,
      I4 => bit_count(4),
      I5 => bit_count(3),
      O => shift_reg0(11)
    );
\shift_reg0[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => dclk_active,
      I2 => bit_count(0),
      I3 => bit_count(1),
      I4 => bit_count(4),
      I5 => bit_count(3),
      O => shift_reg0(12)
    );
\shift_reg0[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => bit_count(3),
      I2 => bit_count(4),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(13)
    );
\shift_reg0[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => bit_count(3),
      I2 => bit_count(4),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(14)
    );
\shift_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => bit_count(1),
      I1 => bit_count(0),
      I2 => bit_count(2),
      I3 => dclk_active,
      I4 => bit_count(3),
      I5 => bit_count(4),
      O => shift_reg0(15)
    );
\shift_reg0[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => bit_count(4),
      I1 => bit_count(3),
      I2 => dclk_active,
      I3 => bit_count(2),
      I4 => bit_count(1),
      I5 => bit_count(0),
      O => shift_reg0(16)
    );
\shift_reg0[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => bit_count(4),
      I2 => bit_count(3),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(17)
    );
\shift_reg0[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => bit_count(4),
      I2 => bit_count(3),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(18)
    );
\shift_reg0[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => bit_count(0),
      I1 => bit_count(1),
      I2 => bit_count(2),
      I3 => dclk_active,
      I4 => bit_count(3),
      I5 => bit_count(4),
      O => shift_reg0(19)
    );
\shift_reg0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => bit_count(0),
      I1 => bit_count(1),
      I2 => dclk_active,
      I3 => bit_count(2),
      I4 => bit_count(3),
      I5 => bit_count(4),
      O => shift_reg0(1)
    );
\shift_reg0[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => dclk_active,
      I2 => bit_count(4),
      I3 => bit_count(3),
      I4 => bit_count(1),
      I5 => bit_count(0),
      O => shift_reg0(20)
    );
\shift_reg0[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => bit_count(4),
      I2 => bit_count(3),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(21)
    );
\shift_reg0[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => bit_count(4),
      I2 => bit_count(3),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(22)
    );
\shift_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => bit_count(4),
      I1 => bit_count(3),
      I2 => bit_count(1),
      I3 => bit_count(0),
      I4 => bit_count(2),
      I5 => dclk_active,
      O => shift_reg0(23)
    );
\shift_reg0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => bit_count(0),
      I1 => bit_count(1),
      I2 => dclk_active,
      I3 => bit_count(2),
      I4 => bit_count(3),
      I5 => bit_count(4),
      O => shift_reg0(2)
    );
\shift_reg0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => bit_count(0),
      I1 => bit_count(1),
      I2 => bit_count(3),
      I3 => bit_count(4),
      I4 => dclk_active,
      I5 => bit_count(2),
      O => shift_reg0(3)
    );
\shift_reg0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => bit_count(3),
      I1 => bit_count(4),
      I2 => bit_count(2),
      I3 => dclk_active,
      I4 => bit_count(1),
      I5 => bit_count(0),
      O => shift_reg0(4)
    );
\shift_reg0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => bit_count(3),
      I1 => bit_count(4),
      I2 => bit_count(2),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(5)
    );
\shift_reg0[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => bit_count(3),
      I1 => bit_count(4),
      I2 => bit_count(2),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(6)
    );
\shift_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => bit_count(1),
      I1 => bit_count(0),
      I2 => bit_count(2),
      I3 => dclk_active,
      I4 => bit_count(4),
      I5 => bit_count(3),
      O => shift_reg0(7)
    );
\shift_reg0[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => bit_count(0),
      I1 => bit_count(1),
      I2 => dclk_active,
      I3 => bit_count(2),
      I4 => bit_count(4),
      I5 => bit_count(3),
      O => shift_reg0(8)
    );
\shift_reg0[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => bit_count(2),
      I1 => bit_count(3),
      I2 => bit_count(4),
      I3 => bit_count(0),
      I4 => bit_count(1),
      I5 => dclk_active,
      O => shift_reg0(9)
    );
\shift_reg0_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(0),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[0]\
    );
\shift_reg0_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(10),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[10]\
    );
\shift_reg0_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(11),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[11]\
    );
\shift_reg0_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(12),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[12]\
    );
\shift_reg0_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(13),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[13]\
    );
\shift_reg0_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(14),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[14]\
    );
\shift_reg0_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(15),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[15]\
    );
\shift_reg0_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(16),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[16]\
    );
\shift_reg0_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(17),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[17]\
    );
\shift_reg0_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(18),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[18]\
    );
\shift_reg0_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(19),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[19]\
    );
\shift_reg0_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(1),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[1]\
    );
\shift_reg0_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(20),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[20]\
    );
\shift_reg0_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(21),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[21]\
    );
\shift_reg0_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(22),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[22]\
    );
\shift_reg0_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(23),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[23]\
    );
\shift_reg0_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(2),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[2]\
    );
\shift_reg0_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(3),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[3]\
    );
\shift_reg0_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(4),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[4]\
    );
\shift_reg0_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(5),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[5]\
    );
\shift_reg0_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(6),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[6]\
    );
\shift_reg0_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(7),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[7]\
    );
\shift_reg0_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(8),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[8]\
    );
\shift_reg0_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(9),
      CLR => odr_int_i_2_n_0,
      D => data_in0,
      Q => \shift_reg0_reg_n_0_[9]\
    );
\shift_reg1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(0),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(0)
    );
\shift_reg1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(10),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(10)
    );
\shift_reg1_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(11),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(11)
    );
\shift_reg1_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(12),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(12)
    );
\shift_reg1_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(13),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(13)
    );
\shift_reg1_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(14),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(14)
    );
\shift_reg1_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(15),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(15)
    );
\shift_reg1_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(16),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(16)
    );
\shift_reg1_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(17),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(17)
    );
\shift_reg1_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(18),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(18)
    );
\shift_reg1_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(19),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(19)
    );
\shift_reg1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(1),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(1)
    );
\shift_reg1_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(20),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(20)
    );
\shift_reg1_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(21),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(21)
    );
\shift_reg1_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(22),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(22)
    );
\shift_reg1_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(23),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(23)
    );
\shift_reg1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(2),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(2)
    );
\shift_reg1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(3),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(3)
    );
\shift_reg1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(4),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(4)
    );
\shift_reg1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(5),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(5)
    );
\shift_reg1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(6),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(6)
    );
\shift_reg1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(7),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(7)
    );
\shift_reg1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(8),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(8)
    );
\shift_reg1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(9),
      CLR => odr_int_i_2_n_0,
      D => data_in1,
      Q => shift_reg1(9)
    );
\shift_reg2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(0),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(0)
    );
\shift_reg2_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(10),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(10)
    );
\shift_reg2_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(11),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(11)
    );
\shift_reg2_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(12),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(12)
    );
\shift_reg2_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(13),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(13)
    );
\shift_reg2_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(14),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(14)
    );
\shift_reg2_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(15),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(15)
    );
\shift_reg2_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(16),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(16)
    );
\shift_reg2_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(17),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(17)
    );
\shift_reg2_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(18),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(18)
    );
\shift_reg2_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(19),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(19)
    );
\shift_reg2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(1),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(1)
    );
\shift_reg2_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(20),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(20)
    );
\shift_reg2_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(21),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(21)
    );
\shift_reg2_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(22),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(22)
    );
\shift_reg2_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(23),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(23)
    );
\shift_reg2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(2),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(2)
    );
\shift_reg2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(3),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(3)
    );
\shift_reg2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(4),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(4)
    );
\shift_reg2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(5),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(5)
    );
\shift_reg2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(6),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(6)
    );
\shift_reg2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(7),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(7)
    );
\shift_reg2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(8),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(8)
    );
\shift_reg2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(9),
      CLR => odr_int_i_2_n_0,
      D => data_in2,
      Q => shift_reg2(9)
    );
\shift_reg3_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(0),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[0]\
    );
\shift_reg3_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(10),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[10]\
    );
\shift_reg3_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(11),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[11]\
    );
\shift_reg3_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(12),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[12]\
    );
\shift_reg3_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(13),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[13]\
    );
\shift_reg3_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(14),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[14]\
    );
\shift_reg3_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(15),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[15]\
    );
\shift_reg3_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(16),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[16]\
    );
\shift_reg3_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(17),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[17]\
    );
\shift_reg3_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(18),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[18]\
    );
\shift_reg3_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(19),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[19]\
    );
\shift_reg3_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(1),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[1]\
    );
\shift_reg3_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(20),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[20]\
    );
\shift_reg3_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(21),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[21]\
    );
\shift_reg3_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(22),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[22]\
    );
\shift_reg3_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(23),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[23]\
    );
\shift_reg3_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(2),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[2]\
    );
\shift_reg3_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(3),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[3]\
    );
\shift_reg3_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(4),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[4]\
    );
\shift_reg3_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(5),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[5]\
    );
\shift_reg3_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(6),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[6]\
    );
\shift_reg3_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(7),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[7]\
    );
\shift_reg3_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(8),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[8]\
    );
\shift_reg3_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => slow_clk,
      CE => shift_reg0(9),
      CLR => odr_int_i_2_n_0,
      D => data_in3,
      Q => \shift_reg3_reg_n_0_[9]\
    );
\slow_clk_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FFFFFF"
    )
        port map (
      I0 => slow_clk_counter_reg(3),
      I1 => slow_clk_counter_reg(2),
      I2 => slow_clk_counter_reg(1),
      I3 => slow_clk_counter_reg(4),
      I4 => slow_clk_counter_reg(5),
      I5 => \slow_clk_counter_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\slow_clk_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777F77770000"
    )
        port map (
      I0 => slow_clk_counter_reg(5),
      I1 => slow_clk_counter_reg(4),
      I2 => slow_clk_counter_reg(3),
      I3 => slow_clk_counter_reg(2),
      I4 => slow_clk_counter_reg(1),
      I5 => \slow_clk_counter_reg_n_0_[0]\,
      O => p_0_in(1)
    );
\slow_clk_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07777000"
    )
        port map (
      I0 => slow_clk_counter_reg(4),
      I1 => slow_clk_counter_reg(5),
      I2 => slow_clk_counter_reg(1),
      I3 => \slow_clk_counter_reg_n_0_[0]\,
      I4 => slow_clk_counter_reg(2),
      O => p_0_in(2)
    );
\slow_clk_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F7F7F00808080"
    )
        port map (
      I0 => slow_clk_counter_reg(1),
      I1 => \slow_clk_counter_reg_n_0_[0]\,
      I2 => slow_clk_counter_reg(2),
      I3 => slow_clk_counter_reg(5),
      I4 => slow_clk_counter_reg(4),
      I5 => slow_clk_counter_reg(3),
      O => p_0_in(3)
    );
\slow_clk_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555FC0000000"
    )
        port map (
      I0 => slow_clk_counter_reg(5),
      I1 => \slow_clk_counter_reg_n_0_[0]\,
      I2 => slow_clk_counter_reg(3),
      I3 => slow_clk_counter_reg(2),
      I4 => slow_clk_counter_reg(1),
      I5 => slow_clk_counter_reg(4),
      O => p_0_in(4)
    );
\slow_clk_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555F80000000"
    )
        port map (
      I0 => slow_clk_counter_reg(4),
      I1 => \slow_clk_counter_reg_n_0_[0]\,
      I2 => slow_clk_counter_reg(3),
      I3 => slow_clk_counter_reg(2),
      I4 => slow_clk_counter_reg(1),
      I5 => slow_clk_counter_reg(5),
      O => p_0_in(5)
    );
\slow_clk_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => p_0_in(0),
      Q => \slow_clk_counter_reg_n_0_[0]\
    );
\slow_clk_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => p_0_in(1),
      Q => slow_clk_counter_reg(1)
    );
\slow_clk_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => p_0_in(2),
      Q => slow_clk_counter_reg(2)
    );
\slow_clk_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => p_0_in(3),
      Q => slow_clk_counter_reg(3)
    );
\slow_clk_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => p_0_in(4),
      Q => slow_clk_counter_reg(4)
    );
\slow_clk_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => p_0_in(5),
      Q => slow_clk_counter_reg(5)
    );
slow_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFFFFFFE000000"
    )
        port map (
      I0 => slow_clk_counter_reg(3),
      I1 => slow_clk_counter_reg(2),
      I2 => slow_clk_counter_reg(1),
      I3 => slow_clk_counter_reg(4),
      I4 => slow_clk_counter_reg(5),
      I5 => slow_clk,
      O => slow_clk_i_1_n_0
    );
slow_clk_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => odr_int_i_2_n_0,
      D => slow_clk_i_1_n_0,
      Q => slow_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ad4134fw_ad4134_data_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in0 : in STD_LOGIC;
    data_in1 : in STD_LOGIC;
    data_in2 : in STD_LOGIC;
    data_in3 : in STD_LOGIC;
    dclk_out : out STD_LOGIC;
    odr_out : out STD_LOGIC;
    data_out0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out1 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out2 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_out3 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_rdy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ad4134fw_ad4134_data_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ad4134fw_ad4134_data_0_0 : entity is "ad4134fw_ad4134_data_0_0,ad4134_data,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ad4134fw_ad4134_data_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ad4134fw_ad4134_data_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ad4134fw_ad4134_data_0_0 : entity is "ad4134_data,Vivado 2024.2";
end ad4134fw_ad4134_data_0_0;

architecture STRUCTURE of ad4134fw_ad4134_data_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_mode of rst_n : signal is "slave rst_n";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.ad4134fw_ad4134_data_0_0_ad4134_data
     port map (
      clk => clk,
      data_in0 => data_in0,
      data_in1 => data_in1,
      data_in2 => data_in2,
      data_in3 => data_in3,
      data_out0(23 downto 0) => data_out0(23 downto 0),
      data_out1(23 downto 0) => data_out1(23 downto 0),
      data_out2(23 downto 0) => data_out2(23 downto 0),
      data_out3(23 downto 0) => data_out3(23 downto 0),
      data_rdy => data_rdy,
      dclk_out => dclk_out,
      odr_out => odr_out,
      rst_n => rst_n
    );
end STRUCTURE;
